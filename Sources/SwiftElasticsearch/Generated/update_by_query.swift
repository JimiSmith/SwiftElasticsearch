extension Request {

    /**
     * https://www.elastic.co/guide/en/elasticsearch/plugins/master/plugins-reindex.html
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func updateByQuery(index: [String], method: HttpMethod = .POST, body: ElasticsearchBody?) -> Request {
        assert(method == .POST)
        let url = "/\(index.joined(separator: ","))/_update_by_query"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * https://www.elastic.co/guide/en/elasticsearch/plugins/master/plugins-reindex.html
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func updateByQuery(index: [String], method: HttpMethod = .POST, body: [String : Any]?) -> Request {
        assert(method == .POST)
        let url = "/\(index.joined(separator: ","))/_update_by_query"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * https://www.elastic.co/guide/en/elasticsearch/plugins/master/plugins-reindex.html
     * - parameter type: A comma-separated list of document types to search; leave empty to perform the operation on all types
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func updateByQuery(index: [String], type: [String], method: HttpMethod = .POST, body: ElasticsearchBody?) -> Request {
        assert(method == .POST)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_update_by_query"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * https://www.elastic.co/guide/en/elasticsearch/plugins/master/plugins-reindex.html
     * - parameter type: A comma-separated list of document types to search; leave empty to perform the operation on all types
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func updateByQuery(index: [String], type: [String], method: HttpMethod = .POST, body: [String : Any]?) -> Request {
        assert(method == .POST)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_update_by_query"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}