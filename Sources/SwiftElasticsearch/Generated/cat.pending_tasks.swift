extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-pending-tasks.html
     * - parameter method: The http method used to execute the request
     */
    public static func cat_pending_tasks(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/pending_tasks"
        return Request(method: method, url: url, body: nil)
    }

}