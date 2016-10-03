extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_template(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_template"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
     * - parameter name: The comma separated names of the index templates
     * - parameter method: The http method used to execute the request
     */
    public static func indices_get_template(name: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_template/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}