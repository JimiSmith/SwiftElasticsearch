extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-suggesters.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func suggest(method: HttpMethod = .POST, body: ElasticsearchBody) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/_suggest"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-suggesters.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func suggest(method: HttpMethod = .POST, body: [String : Any]) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/_suggest"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-suggesters.html
     * - parameter index: A comma-separated list of index names to restrict the operation; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func suggest(index: [String], method: HttpMethod = .POST, body: ElasticsearchBody) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/_suggest"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-suggesters.html
     * - parameter index: A comma-separated list of index names to restrict the operation; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func suggest(index: [String], method: HttpMethod = .POST, body: [String : Any]) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/_suggest"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}