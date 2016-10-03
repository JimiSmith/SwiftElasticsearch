extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func search_template(method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_search/template"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func search_template(method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_search/template"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func search_template(index: [String], method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/_search/template"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func search_template(index: [String], method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/_search/template"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html
     * - parameter type: A comma-separated list of document types to search; leave empty to perform the operation on all types
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func search_template(index: [String], type: [String], method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_search/template"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/current/search-template.html
     * - parameter type: A comma-separated list of document types to search; leave empty to perform the operation on all types
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func search_template(index: [String], type: [String], method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_search/template"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}