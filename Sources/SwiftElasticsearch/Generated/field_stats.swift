extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-stats.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func field_stats(method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_field_stats"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-stats.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func field_stats(method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_field_stats"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-stats.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func field_stats(index: [String], method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/_field_stats"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-field-stats.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func field_stats(index: [String], method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/_field_stats"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}