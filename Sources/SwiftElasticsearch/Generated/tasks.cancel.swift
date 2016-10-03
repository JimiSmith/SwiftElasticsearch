extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks-cancel.html
     * - parameter method: The http method used to execute the request
     */
    public static func tasks_cancel(method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/_tasks/_cancel"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks-cancel.html
     * - parameter task_id: Cancel the task with specified id
     * - parameter method: The http method used to execute the request
     */
    public static func tasks_cancel(task_id: String, method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/_tasks/\(task_id)/_cancel"
        return Request(method: method, url: url, body: nil)
    }

}