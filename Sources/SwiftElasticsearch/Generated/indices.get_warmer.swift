extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetWarmer(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_warmer"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter index: A comma-separated list of index names to restrict the operation; use `_all` to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetWarmer(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_warmer"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter name: The name of the warmer (supports wildcards); leave empty to get all warmers
     * - parameter index: A comma-separated list of index names to restrict the operation; use `_all` to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetWarmer(index: [String], name: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_warmer/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter name: The name of the warmer (supports wildcards); leave empty to get all warmers
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetWarmer(name: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_warmer/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter type: A comma-separated list of document types to restrict the operation; leave empty to perform the operation on all types
     * - parameter name: The name of the warmer (supports wildcards); leave empty to get all warmers
     * - parameter index: A comma-separated list of index names to restrict the operation; use `_all` to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetWarmer(index: [String], type: [String], name: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_warmer/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}