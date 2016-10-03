extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-analyze.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_analyze(method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_analyze"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-analyze.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_analyze(method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_analyze"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-analyze.html
     * - parameter index: The name of the index to scope the operation
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_analyze(index: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/_analyze"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-analyze.html
     * - parameter index: The name of the index to scope the operation
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_analyze(index: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/_analyze"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}