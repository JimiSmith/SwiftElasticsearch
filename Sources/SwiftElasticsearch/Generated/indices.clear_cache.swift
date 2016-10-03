extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clearcache.html
     * - parameter method: The http method used to execute the request
     */
    public static func indices_clear_cache(method: HttpMethod = .POST) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/_cache/clear"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-clearcache.html
     * - parameter index: A comma-separated list of index name to limit the operation
     * - parameter method: The http method used to execute the request
     */
    public static func indices_clear_cache(index: [String], method: HttpMethod = .POST) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/_cache/clear"
        return Request(method: method, url: url, body: nil)
    }

}