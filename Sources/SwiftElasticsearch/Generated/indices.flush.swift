extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-flush.html
     * - parameter method: The http method used to execute the request
     */
    public static func indicesFlush(method: HttpMethod = .POST) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/_flush"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-flush.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string for all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesFlush(index: [String], method: HttpMethod = .POST) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/_flush"
        return Request(method: method, url: url, body: nil)
    }
    
}