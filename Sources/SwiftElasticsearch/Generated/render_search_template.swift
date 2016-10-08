extension Request {

    /**
     * http://www.elasticsearch.org/guide/en/elasticsearch/reference/master/search-template.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func renderSearchTemplate(method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_render/template"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elasticsearch.org/guide/en/elasticsearch/reference/master/search-template.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func renderSearchTemplate(method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_render/template"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elasticsearch.org/guide/en/elasticsearch/reference/master/search-template.html
     * - parameter id: The id of the stored search template
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func renderSearchTemplate(id: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_render/template/\(id)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elasticsearch.org/guide/en/elasticsearch/reference/master/search-template.html
     * - parameter id: The id of the stored search template
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func renderSearchTemplate(id: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_render/template/\(id)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}