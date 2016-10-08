extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mpercolate(method: HttpMethod = .GET, body: ElasticsearchBody) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_mpercolate"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mpercolate(method: HttpMethod = .GET, body: [String : Any]) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_mpercolate"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter index: The index of the document being count percolated to use as default
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mpercolate(index: String, method: HttpMethod = .GET, body: ElasticsearchBody) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/_mpercolate"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter index: The index of the document being count percolated to use as default
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mpercolate(index: String, method: HttpMethod = .GET, body: [String : Any]) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/_mpercolate"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter type: The type of the document being percolated to use as default.
     * - parameter index: The index of the document being count percolated to use as default
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mpercolate(index: String, type: String, method: HttpMethod = .GET, body: ElasticsearchBody) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_mpercolate"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter type: The type of the document being percolated to use as default.
     * - parameter index: The index of the document being count percolated to use as default
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func mpercolate(index: String, type: String, method: HttpMethod = .GET, body: [String : Any]) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_mpercolate"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}