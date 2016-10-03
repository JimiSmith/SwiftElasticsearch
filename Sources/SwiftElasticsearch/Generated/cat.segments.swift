extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-segments.html
     * - parameter method: The http method used to execute the request
     */
    public static func cat_segments(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/segments"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-segments.html
     * - parameter index: A comma-separated list of index names to limit the returned information
     * - parameter method: The http method used to execute the request
     */
    public static func cat_segments(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/segments/\(index.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}