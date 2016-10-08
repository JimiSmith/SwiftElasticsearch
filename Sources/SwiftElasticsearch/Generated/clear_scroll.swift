extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
     * - parameter scrollId: A comma-separated list of scroll IDs to clear
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func clearScroll(scrollId: [String], method: HttpMethod = .DELETE, body: ElasticsearchBody?) -> Request {
        assert(method == .DELETE)
        let url = "/_search/scroll/\(scrollId.joined(separator: ","))"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
     * - parameter scrollId: A comma-separated list of scroll IDs to clear
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func clearScroll(scrollId: [String], method: HttpMethod = .DELETE, body: [String : Any]?) -> Request {
        assert(method == .DELETE)
        let url = "/_search/scroll/\(scrollId.joined(separator: ","))"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func clearScroll(method: HttpMethod = .DELETE, body: ElasticsearchBody?) -> Request {
        assert(method == .DELETE)
        let url = "/_search/scroll"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func clearScroll(method: HttpMethod = .DELETE, body: [String : Any]?) -> Request {
        assert(method == .DELETE)
        let url = "/_search/scroll"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}