extension Request {

    /**
     * https://www.elastic.co/guide/en/elasticsearch/plugins/master/plugins-reindex.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func reindex(method: HttpMethod = .POST, body: ElasticsearchBody) -> Request {
        assert(method == .POST)
        let url = "/_reindex"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * https://www.elastic.co/guide/en/elasticsearch/plugins/master/plugins-reindex.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func reindex(method: HttpMethod = .POST, body: [String : Any]) -> Request {
        assert(method == .POST)
        let url = "/_reindex"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}