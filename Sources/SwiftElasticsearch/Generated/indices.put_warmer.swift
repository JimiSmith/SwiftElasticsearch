extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter name: The name of the warmer
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_warmer(name: String, method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_warmer/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter name: The name of the warmer
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_warmer(name: String, method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_warmer/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter name: The name of the warmer
     * - parameter index: A comma-separated list of index names to register the warmer for; use `_all` or omit to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_warmer(index: [String], name: String, method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index.joined(separator: ","))/_warmer/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter name: The name of the warmer
     * - parameter index: A comma-separated list of index names to register the warmer for; use `_all` or omit to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_warmer(index: [String], name: String, method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index.joined(separator: ","))/_warmer/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter type: A comma-separated list of document types to register the warmer for; leave empty to perform the operation on all types
     * - parameter name: The name of the warmer
     * - parameter index: A comma-separated list of index names to register the warmer for; use `_all` or omit to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_warmer(index: [String], type: [String], name: String, method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_warmer/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter type: A comma-separated list of document types to register the warmer for; leave empty to perform the operation on all types
     * - parameter name: The name of the warmer
     * - parameter index: A comma-separated list of index names to register the warmer for; use `_all` or omit to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_warmer(index: [String], type: [String], name: String, method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_warmer/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}