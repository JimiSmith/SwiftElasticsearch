extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-put-mapping.html
     * - parameter type: The name of the document type
     * - parameter index: A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_mapping(index: [String], type: String, method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index.joined(separator: ","))/_mapping/\(type)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-put-mapping.html
     * - parameter type: The name of the document type
     * - parameter index: A comma-separated list of index names the mapping should be added to (supports wildcards); use `_all` or omit to add the mapping on all indices.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_mapping(index: [String], type: String, method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/\(index.joined(separator: ","))/_mapping/\(type)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-put-mapping.html
     * - parameter type: The name of the document type
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_mapping(type: String, method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_mapping/\(type)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-put-mapping.html
     * - parameter type: The name of the document type
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_mapping(type: String, method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_mapping/\(type)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}