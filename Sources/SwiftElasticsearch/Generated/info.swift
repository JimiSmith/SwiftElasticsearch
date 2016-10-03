extension Request {
    /**
     * http://www.elastic.co/guide/
     * - parameter method: The http method used to execute the request
     */
    public static func info(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/"
        return Request(method: method, url: url, body: nil)
    }

}