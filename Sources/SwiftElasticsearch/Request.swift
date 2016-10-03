import Foundation

public enum HttpMethod: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case HEAD = "HEAD"
    case DELETE = "DELETE"
}

public struct Request {
    let method: HttpMethod
    let url: String
    let body: [String: Any]?
    
    public init(method: HttpMethod, url: String, body: [String: Any]?) {
        self.method = method
        self.url = url
        self.body = body
    }
}
