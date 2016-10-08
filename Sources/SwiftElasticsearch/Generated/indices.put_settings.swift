extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indicesPutSettings(method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT)
        let url = "/_settings"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indicesPutSettings(method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT)
        let url = "/_settings"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indicesPutSettings(index: [String], method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT)
        let url = "/\(index.joined(separator: ","))/_settings"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-update-settings.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indicesPutSettings(index: [String], method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT)
        let url = "/\(index.joined(separator: ","))/_settings"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}