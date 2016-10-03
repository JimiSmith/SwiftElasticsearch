extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
     * - parameter name: The name of the template
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_template(name: String, method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_template/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
     * - parameter name: The name of the template
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func indices_put_template(name: String, method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_template/\(name)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}