extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat.html
     * - parameter method: The http method used to execute the request
     */
    public static func cat_help(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat"
        return Request(method: method, url: url, body: nil)
    }

}