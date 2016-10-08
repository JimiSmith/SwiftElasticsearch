extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-settings.html
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetSettings(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_settings"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-settings.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetSettings(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_settings"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-settings.html
     * - parameter name: The name of the settings that should be included
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetSettings(index: [String], name: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_settings/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-settings.html
     * - parameter name: The name of the settings that should be included
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetSettings(name: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_settings/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}