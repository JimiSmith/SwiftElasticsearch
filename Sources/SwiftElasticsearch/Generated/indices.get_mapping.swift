extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-mapping.html
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_mapping(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_mapping"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-mapping.html
     * - parameter index: A comma-separated list of index names
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_mapping(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_mapping"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-mapping.html
     * - parameter type: A comma-separated list of document types
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_mapping(type: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_mapping/\(type.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-mapping.html
     * - parameter type: A comma-separated list of document types
     * - parameter index: A comma-separated list of index names
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_mapping(index: [String], type: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_mapping/\(type.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}