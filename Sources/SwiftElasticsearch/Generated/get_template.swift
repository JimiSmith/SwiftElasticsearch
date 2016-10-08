extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-template.html
     * - parameter id: Template ID
     * - parameter method: The http method used to execute the request
     */
    public static func getTemplate(id: String, method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_search/template/\(id)"
        return Request(method: method, url: url, body: nil)
    }
    
}