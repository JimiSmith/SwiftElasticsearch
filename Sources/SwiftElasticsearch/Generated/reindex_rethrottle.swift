extension Request {
    /**
     * https://www.elastic.co/guide/en/elasticsearch/reference/2.4/docs-reindex.html
     * - parameter task_id: The task id to rethrottle
     * - parameter method: The http method used to execute the request
     */
    public static func reindex_rethrottle(task_id: String, method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/_reindex/\(task_id)/_rethrottle"
        return Request(method: method, url: url, body: nil)
    }

}