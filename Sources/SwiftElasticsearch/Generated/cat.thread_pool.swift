extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-thread-pool.html
     * - parameter method: The http method used to execute the request
     */
    public static func catThreadPool(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/thread_pool"
        return Request(method: method, url: url, body: nil)
    }
    
}