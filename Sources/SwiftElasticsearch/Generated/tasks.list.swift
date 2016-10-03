extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks-list.html
     * - parameter method: The http method used to execute the request
     */
    public static func tasks_list(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_tasks"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks-list.html
     * - parameter task_id: Return the task with specified id (node_id:task_number)
     * - parameter method: The http method used to execute the request
     */
    public static func tasks_list(task_id: String, method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_tasks/\(task_id)"
        return Request(method: method, url: url, body: nil)
    }

}