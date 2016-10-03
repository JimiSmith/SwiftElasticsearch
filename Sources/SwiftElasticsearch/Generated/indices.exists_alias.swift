extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter name: A comma-separated list of alias names to return
     * - parameter method: The http method used to execute the request
     */
    public static func indices_exists_alias(name: [String], method: HttpMethod = .HEAD) -> Request {
        assert(method == .HEAD)
        let url = "/_alias/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter name: A comma-separated list of alias names to return
     * - parameter index: A comma-separated list of index names to filter aliases
     * - parameter method: The http method used to execute the request
     */
    public static func indices_exists_alias(index: [String], name: [String], method: HttpMethod = .HEAD) -> Request {
        assert(method == .HEAD)
        let url = "/\(index.joined(separator: ","))/_alias/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter index: A comma-separated list of index names to filter aliases
     * - parameter method: The http method used to execute the request
     */
    public static func indices_exists_alias(index: [String], method: HttpMethod = .HEAD) -> Request {
        assert(method == .HEAD)
        let url = "/\(index.joined(separator: ","))/_alias"
        return Request(method: method, url: url, body: nil)
    }

}