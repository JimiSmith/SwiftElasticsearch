//: Playground - noun: a place where people can play

import SwiftElasticsearch
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

struct User: ElasticsearchIndexable {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
    
    init(json: [String : Any]) throws {
        if let name = json["name"] as? String,
            let number = json["number"] as? Int {
            self.name = name
            self.number = number
        } else {
            throw ElasticsearchError.missingResponseField("name, number")
        }
    }
    
    func asJson() -> [String: Any] {
        return [
            "name": self.name,
            "number": self.number
        ]
    }
}

let connection = Connection(connectionInfo: ConnectionInfo(host: "http://localhost", port: 9200))

try! connection.performRequest(request: .info()) { (response, error) in
    print(error)
    print(response!)
}

let user = User(name: "James", number: 1)
let request: Request = .index(index: "test",
                              type: "user",
                              body: user)
try! connection.performRequest(request: request) { (response, error) in
    print(error)
    print(response!)
}

let body = [
    "query": [
        "match": [
            "name": "James"
        ]
    ]
]
let searchRequest: Request = .search(index: ["test"], body: body)
do {
    try connection.performRequest(request: searchRequest) { (response: QueryResponse<User>?, error) in
        print(error)
        print(response!)
    }
} catch let e {
    print(e)
}
