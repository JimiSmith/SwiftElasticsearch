extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mtermvectors(method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_mtermvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mtermvectors(method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_mtermvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html
     * - parameter index: The index in which the document resides.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mtermvectors(index: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/_mtermvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html
     * - parameter index: The index in which the document resides.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mtermvectors(index: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/_mtermvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html
     * - parameter type: The type of the document.
     * - parameter index: The index in which the document resides.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mtermvectors(index: String, type: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_mtermvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-termvectors.html
     * - parameter type: The type of the document.
     * - parameter index: The index in which the document resides.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mtermvectors(index: String, type: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_mtermvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}