extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-create-index.html
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_create(index: String, method: HttpMethod = .PUT, body: ElasticsearchBody?) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-create-index.html
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_create(index: String, method: HttpMethod = .PUT, body: [String : Any]?) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}