extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func msearch(method: HttpMethod = .GET, body: ElasticsearchBody) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_msearch"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func msearch(method: HttpMethod = .GET, body: [String : Any]) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_msearch"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html
     * - parameter index: A comma-separated list of index names to use as default
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func msearch(index: [String], method: HttpMethod = .GET, body: ElasticsearchBody) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/_msearch"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html
     * - parameter index: A comma-separated list of index names to use as default
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func msearch(index: [String], method: HttpMethod = .GET, body: [String : Any]) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/_msearch"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html
     * - parameter type: A comma-separated list of document types to use as default
     * - parameter index: A comma-separated list of index names to use as default
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func msearch(index: [String], type: [String], method: HttpMethod = .GET, body: ElasticsearchBody) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_msearch"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-multi-search.html
     * - parameter type: A comma-separated list of document types to use as default
     * - parameter index: A comma-separated list of index names to use as default
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func msearch(index: [String], type: [String], method: HttpMethod = .GET, body: [String : Any]) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_msearch"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}