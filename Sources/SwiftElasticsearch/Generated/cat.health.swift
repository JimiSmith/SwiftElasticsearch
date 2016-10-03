extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-health.html
     * - parameter method: The http method used to execute the request
     */
    public static func cat_health(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/health"
        return Request(method: method, url: url, body: nil)
    }

}