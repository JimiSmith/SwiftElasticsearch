extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-alias.html
     * - parameter method: The http method used to execute the request
     */
    public static func catAliases(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/aliases"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-alias.html
     * - parameter name: A comma-separated list of alias names to return
     * - parameter method: The http method used to execute the request
     */
    public static func catAliases(name: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/aliases/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}