extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-optimize.html
     * - parameter method: The http method used to execute the request
     */
    public static func indicesOptimize(method: HttpMethod = .POST) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/_optimize"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-optimize.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesOptimize(index: [String], method: HttpMethod = .POST) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/_optimize"
        return Request(method: method, url: url, body: nil)
    }
    
}