extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html
     * - parameter id: Script ID
     * - parameter lang: Script language
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func put_script(lang: String, id: String, method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_scripts/\(lang)/\(id)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html
     * - parameter id: Script ID
     * - parameter lang: Script language
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func put_script(lang: String, id: String, method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_scripts/\(lang)/\(id)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}