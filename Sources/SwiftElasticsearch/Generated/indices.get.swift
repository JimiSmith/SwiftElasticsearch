extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-index.html
     * - parameter index: A comma-separated list of index names
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-index.html
     * - parameter feature: A comma-separated list of features
     * - parameter index: A comma-separated list of index names
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get(index: [String], feature: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/\(feature.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}