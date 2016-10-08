extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-master.html
     * - parameter method: The http method used to execute the request
     */
    public static func catMaster(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/master"
        return Request(method: method, url: url, body: nil)
    }
    
}