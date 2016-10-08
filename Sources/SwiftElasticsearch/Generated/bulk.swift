extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func bulk(method: HttpMethod = .POST, body: ElasticsearchBody) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/_bulk"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func bulk(method: HttpMethod = .POST, body: [String : Any]) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/_bulk"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html
     * - parameter index: Default index for items which don't provide one
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func bulk(index: String, method: HttpMethod = .POST, body: ElasticsearchBody) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/\(index)/_bulk"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html
     * - parameter index: Default index for items which don't provide one
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func bulk(index: String, method: HttpMethod = .POST, body: [String : Any]) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/\(index)/_bulk"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html
     * - parameter type: Default document type for items which don't provide one
     * - parameter index: Default index for items which don't provide one
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func bulk(index: String, type: String, method: HttpMethod = .POST, body: ElasticsearchBody) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/\(index)/\(type)/_bulk"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-bulk.html
     * - parameter type: Default document type for items which don't provide one
     * - parameter index: Default index for items which don't provide one
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func bulk(index: String, type: String, method: HttpMethod = .POST, body: [String : Any]) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/\(index)/\(type)/_bulk"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}