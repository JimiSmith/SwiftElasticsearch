extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
     * - parameter name: The name of the template
     * - parameter method: The http method used to execute the request
     */
    public static func indices_exists_template(name: String, method: HttpMethod = .HEAD) -> Request {
        assert(method == .HEAD)
        let url = "/_template/\(name)"
        return Request(method: method, url: url, body: nil)
    }

}