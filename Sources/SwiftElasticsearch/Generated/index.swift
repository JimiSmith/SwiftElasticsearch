extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html
     * - parameter type: The type of the document
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func index(index: String, type: String, method: HttpMethod = .POST, body: ElasticsearchBody) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/\(index)/\(type)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html
     * - parameter type: The type of the document
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func index(index: String, type: String, method: HttpMethod = .POST, body: [String : Any]) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/\(index)/\(type)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html
     * - parameter type: The type of the document
     * - parameter id: Document ID
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func index(index: String, type: String, id: String, method: HttpMethod = .POST, body: ElasticsearchBody) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/\(index)/\(type)/\(id)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-index_.html
     * - parameter type: The type of the document
     * - parameter id: Document ID
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func index(index: String, type: String, id: String, method: HttpMethod = .POST, body: [String : Any]) -> Request {
        assert(method == .POST || method == .PUT)
        let url = "/\(index)/\(type)/\(id)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}