extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-template.html
     * - parameter id: Template ID
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func putTemplate(id: String, method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_search/template/\(id)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-template.html
     * - parameter id: Template ID
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func putTemplate(id: String, method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_search/template/\(id)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}