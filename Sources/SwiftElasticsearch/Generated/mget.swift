extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mget(method: HttpMethod = .GET, body: ElasticsearchBody) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_mget"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mget(method: HttpMethod = .GET, body: [String : Any]) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_mget"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mget(index: String, method: HttpMethod = .GET, body: ElasticsearchBody) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/_mget"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mget(index: String, method: HttpMethod = .GET, body: [String : Any]) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/_mget"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html
     * - parameter type: The type of the document
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mget(index: String, type: String, method: HttpMethod = .GET, body: ElasticsearchBody) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_mget"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-multi-get.html
     * - parameter type: The type of the document
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mget(index: String, type: String, method: HttpMethod = .GET, body: [String : Any]) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_mget"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}