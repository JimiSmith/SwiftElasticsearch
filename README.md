# SwiftElasticsearch

A swift client for Elasticsearch 2.4.

Uses [SwiftElasticsearchGenerator](https://github.com/JimiSmith/SwiftElasticsearchGenerator) to generate the api methods

Still in the very early stages of development but it is functional, but you'll need to deal with the JSON requests and responses yourself most of the time

## Usage

The basic usage is as follows. This will get the server info

```swift
let connection = Connection(connectionInfo: ConnectionInfo(host: "http://localhost", port: 9200))
try! connection.performRequest(request: .info()) { (response, error) in
    print(error) // nil if no error
    print(response) // the response as a dictionary
}
```

Basic indexing and querying are supported. To index a model, it must implement the ElasticsearchIndexable protocol

```swift
struct User: ElasticsearchIndexable {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    init(json: [String : Any]) throws {
        if let name = json["name"] as? String {
            self.name = name
        } else {
            throw ElasticsearchError.missingResponseField("name")
        }
    }
    
    func asJson() -> [String: Any] {
        return [
            "name": self.name
        ]
    }
}

// index the user
let user = User(name: "James")
let request: Request = .index(index: "users",
                              type: "user",
                              body: user)
try! connection.performRequest(request: request) { (response, error) in
    print(error)
    print(response)
}

// query for users
let body = [
    "query": [
        "match": [
            "name": "James"
        ]
    ]
]
let searchRequest: Request = .search(index: ["users"], body: body)
try! connection.performRequest(request: searchRequest) { (response: QueryResponse<User>?, error) in
    print(error)
    print(response)
}
```


There is a playground in the repo that demonstrates how to perform basic operations

## License

MIT Licensed. See the [LICENSE](/LICENSE) file for details
