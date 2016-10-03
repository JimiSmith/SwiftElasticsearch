public struct Shards: ElasticsearchResponse {
    public let total: Int
    public let successful: Int
    public let failed: Int
    
    public init(json: [String : Any]) throws {
        guard let total = json["total"] as? Int else {
            throw ElasticsearchError.missingResponseField("total")
        }
        guard let successful = json["successful"] as? Int else {
            throw ElasticsearchError.missingResponseField("successful")
        }
        guard let failed = json["failed"] as? Int else {
            throw ElasticsearchError.missingResponseField("failed")
        }
        self.failed = failed
        self.successful = successful
        self.total = total
    }
}
