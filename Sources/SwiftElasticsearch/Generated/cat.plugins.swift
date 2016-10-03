extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-plugins.html
     * - parameter method: The http method used to execute the request
     */
    public static func cat_plugins(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/plugins"
        return Request(method: method, url: url, body: nil)
    }

}