extension Request {

    /**
     * https://www.elastic.co/guide/en/elasticsearch/reference/2.4/docs-reindex.html
     * - parameter taskId: The task id to rethrottle
     * - parameter method: The http method used to execute the request
     */
    public static func reindexRethrottle(taskId: String, method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/_reindex/\(taskId)/_rethrottle"
        return Request(method: method, url: url, body: nil)
    }
    
}