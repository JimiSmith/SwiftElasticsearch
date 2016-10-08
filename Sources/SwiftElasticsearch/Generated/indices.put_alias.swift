extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter name: The name of the alias to be created or updated
     * - parameter index: A comma-separated list of index names the alias should point to (supports wildcards); use `_all` to perform the operation on all indices.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indicesPutAlias(index: [String], name: String, method: HttpMethod = .PUT, body: ElasticsearchBody?) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index.joined(separator: ","))/_alias/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter name: The name of the alias to be created or updated
     * - parameter index: A comma-separated list of index names the alias should point to (supports wildcards); use `_all` to perform the operation on all indices.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indicesPutAlias(index: [String], name: String, method: HttpMethod = .PUT, body: [String : Any]?) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index.joined(separator: ","))/_alias/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}