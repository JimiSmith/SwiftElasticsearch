extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-nodes.html
     * - parameter method: The http method used to execute the request
     */
    public static func catNodes(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/nodes"
        return Request(method: method, url: url, body: nil)
    }
    
}