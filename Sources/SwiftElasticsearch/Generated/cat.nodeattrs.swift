extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodeattrs.html
     * - parameter method: The http method used to execute the request
     */
    public static func catNodeattrs(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/nodeattrs"
        return Request(method: method, url: url, body: nil)
    }
    
}