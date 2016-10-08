import Foundation

public enum ElasticsearchError: Error {
    case invalidUrl
    case unexpectedResponse
    case missingResponseField(String)
}

public struct ConnectionInfo {
    private let host: String
    private let port: Int
    
    fileprivate func baseUrl() throws -> URL {
        guard let url = URL(string: "\(host):\(port)") else {
            throw ElasticsearchError.invalidUrl
        }
        return url
    }
    
    public init(host: String, port: Int) {
        self.host = host
        self.port = port
    }
}

public class Connection {
    private let connectionInfo: ConnectionInfo
    
    public init(connectionInfo: ConnectionInfo) {
        self.connectionInfo = connectionInfo
    }
    
    public func performRequest(request: Request, completion: @escaping ([String : Any]?, Error?) -> ()) throws {
        guard let url = URL(string: request.url, relativeTo: try self.connectionInfo.baseUrl()) else {
            throw ElasticsearchError.invalidUrl
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.method.rawValue
        
        if let body = request.body {
            urlRequest.httpBody = try JSONSerialization.data(withJSONObject: body, options: [])
        }
        
        URLSession.shared.dataTask(with: urlRequest) { data, urlResponse, error in
            if let error = error {
                completion(nil, error)
                return
            }
            
            do {
                if let data = data {
                    let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
                    if let jsonObject = jsonObject as? [String : Any] {
                        completion(jsonObject, nil)
                    } else {
                        completion(nil, ElasticsearchError.unexpectedResponse)
                    }
                    return
                }
            } catch let e {
                completion(nil, e)
                return
            }
            completion(nil, nil)
            }.resume()
    }
    
    public func performRequest<T: ElasticsearchResponse>(request: Request, completion: @escaping (T?, Error?) -> ()) throws {
        guard let url = URL(string: request.url, relativeTo: try self.connectionInfo.baseUrl()) else {
            throw ElasticsearchError.invalidUrl
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.method.rawValue
        
        if let body = request.body {
            if let jsonBody = body.jsonString() {
                print(jsonBody)
            }
            urlRequest.httpBody = try JSONSerialization.data(withJSONObject: body, options: [])
        }
        
        URLSession.shared.dataTask(with: urlRequest) { data, urlResponse, error in
            if let error = error {
                completion(nil, error)
                return
            }
            
            do {
                if let data = data {
                    let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
                    if let jsonObject = jsonObject as? [String : Any] {
                        if let jsonBody = jsonObject.jsonString() {
                            print(jsonBody)
                        }
                        completion(try T(json: jsonObject), nil)
                    } else {
                        completion(nil, ElasticsearchError.unexpectedResponse)
                    }
                    return
                }
            } catch let e {
                completion(nil, e)
                return
            }
            completion(nil, nil)
        }.resume()
    }
}
