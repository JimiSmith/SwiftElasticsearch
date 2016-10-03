import Foundation

public struct Hit<T: ElasticsearchResponse>: ElasticsearchResponse {
    public let index: String
    public let type: String
    public let id: String
    public let score: Double
    public let source: T
    
    public init(json: [String : Any]) throws {
        guard let index = json["_index"] as? String else {
            throw ElasticsearchError.missingResponseField("_index")
        }
        guard let type = json["_type"] as? String else {
            throw ElasticsearchError.missingResponseField("_type")
        }
        guard let id = json["_id"] as? String else {
            throw ElasticsearchError.missingResponseField("_id")
        }
        guard let score = json["_score"] as? Double else {
            throw ElasticsearchError.missingResponseField("_score")
        }
        guard let source = json["_source"] as? [String : Any] else {
            throw ElasticsearchError.missingResponseField("_source")
        }
        
        self.index = index
        self.type = type
        self.id = id
        self.score = score
        self.source = try T(json: source)
    }
}

public struct Hits<T: ElasticsearchResponse>: ElasticsearchResponse {
    public let total: Int
    public let maxScore: Double
    public let hits: [Hit<T>]
    
    public init(json: [String : Any]) throws {
        guard let total = json["total"] as? Int else {
            throw ElasticsearchError.missingResponseField("total")
        }
        guard let maxScore = json["max_score"] as? Double else {
            throw ElasticsearchError.missingResponseField("max_score")
        }
        guard let hitsAsAny = json["hits"] as? [[String: Any]] else {
            throw ElasticsearchError.missingResponseField("hits")
        }
        
        self.total = total
        self.maxScore = maxScore
        self.hits = try hitsAsAny.map({ try Hit<T>(json: $0) })
    }
}

public struct QueryResponse<T: ElasticsearchResponse>: ElasticsearchResponse {
    public let took: Int
    public let timedOut: Bool
    public let shards: Shards
    public let hits: Hits<T>
    
    public init(json: [String : Any]) throws {
        guard let took = json["took"] as? Int else {
            throw ElasticsearchError.missingResponseField("took")
        }
        guard let timedOut = json["timed_out"] as? Bool else {
            throw ElasticsearchError.missingResponseField("timed_out")
        }
        guard let shards = json["_shards"] as? [String : Any] else {
            throw ElasticsearchError.missingResponseField("_shards")
        }
        guard let hits = json["hits"] as? [String : Any] else {
            throw ElasticsearchError.missingResponseField("hits")
        }
        
        self.took = took
        self.timedOut = timedOut
        self.shards = try Shards(json: shards)
        self.hits = try Hits(json: hits)
    }
}
