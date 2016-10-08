extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-field-mapping.html
     * - parameter fields: A comma-separated list of fields
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetFieldMapping(fields: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_mapping/field/\(fields.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-field-mapping.html
     * - parameter fields: A comma-separated list of fields
     * - parameter index: A comma-separated list of index names
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetFieldMapping(index: [String], fields: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_mapping/field/\(fields.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-field-mapping.html
     * - parameter type: A comma-separated list of document types
     * - parameter fields: A comma-separated list of fields
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetFieldMapping(type: [String], fields: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_mapping/\(type.joined(separator: ","))/field/\(fields.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-get-field-mapping.html
     * - parameter type: A comma-separated list of document types
     * - parameter fields: A comma-separated list of fields
     * - parameter index: A comma-separated list of index names
     * - parameter method: The http method used to execute the request
     */
    public static func indicesGetFieldMapping(index: [String], type: [String], fields: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_mapping/\(type.joined(separator: ","))/field/\(fields.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}