extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func count(method: HttpMethod = .POST, body: ElasticsearchBody?) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/_count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func count(method: HttpMethod = .POST, body: [String : Any]?) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/_count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html
     * - parameter index: A comma-separated list of indices to restrict the results
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func count(index: [String], method: HttpMethod = .POST, body: ElasticsearchBody?) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/_count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html
     * - parameter index: A comma-separated list of indices to restrict the results
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func count(index: [String], method: HttpMethod = .POST, body: [String : Any]?) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/_count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html
     * - parameter type: A comma-separated list of types to restrict the results
     * - parameter index: A comma-separated list of indices to restrict the results
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func count(index: [String], type: [String], method: HttpMethod = .POST, body: ElasticsearchBody?) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-count.html
     * - parameter type: A comma-separated list of types to restrict the results
     * - parameter index: A comma-separated list of indices to restrict the results
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func count(index: [String], type: [String], method: HttpMethod = .POST, body: [String : Any]?) -> Request {
        assert(method == .POST || method == .GET)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}