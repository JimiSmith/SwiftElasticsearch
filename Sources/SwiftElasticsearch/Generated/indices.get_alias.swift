extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_alias(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_alias"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter name: A comma-separated list of alias names to return
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_alias(name: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_alias/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter name: A comma-separated list of alias names to return
     * - parameter index: A comma-separated list of index names to filter aliases
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_alias(index: [String], name: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_alias/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter index: A comma-separated list of index names to filter aliases
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_alias(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_alias"
        return Request(method: method, url: url, body: nil)
    }

}