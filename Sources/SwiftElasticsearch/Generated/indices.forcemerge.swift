extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-forcemerge.html
     * - parameter method: The http method used to execute the request
     */
    public static func indices_forcemerge(method: HttpMethod = .POST) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/_forcemerge"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-forcemerge.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indices_forcemerge(index: [String], method: HttpMethod = .POST) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/_forcemerge"
        return Request(method: method, url: url, body: nil)
    }

}