public protocol ElasticsearchResponse {
    init(json: [String : Any]) throws
}

public protocol ElasticsearchBody {
    func asJson() -> [String : Any]
}

public protocol ElasticsearchIndexable: ElasticsearchResponse, ElasticsearchBody {
}
