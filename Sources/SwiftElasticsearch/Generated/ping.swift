extension Request {

    /**
     * http://www.elastic.co/guide/
     * - parameter method: The http method used to execute the request
     */
    public static func ping(method: HttpMethod = .HEAD) -> Request {
        assert(method == .HEAD)
        let url = "/"
        return Request(method: method, url: url, body: nil)
    }
    
}