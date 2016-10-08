extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html
     * - parameter type: The type of the document.
     * - parameter index: The index in which the document resides.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func termvectors(index: String, type: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_termvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html
     * - parameter type: The type of the document.
     * - parameter index: The index in which the document resides.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func termvectors(index: String, type: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_termvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html
     * - parameter type: The type of the document.
     * - parameter id: The id of the document, when not specified a doc param should be supplied.
     * - parameter index: The index in which the document resides.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func termvectors(index: String, type: String, id: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/\(id)/_termvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-termvectors.html
     * - parameter type: The type of the document.
     * - parameter id: The id of the document, when not specified a doc param should be supplied.
     * - parameter index: The index in which the document resides.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func termvectors(index: String, type: String, id: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/\(id)/_termvectors"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}