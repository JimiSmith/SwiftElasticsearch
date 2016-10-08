extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks-list.html
     * - parameter method: The http method used to execute the request
     */
    public static func tasksList(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_tasks"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks-list.html
     * - parameter taskId: Return the task with specified id (node_id:task_number)
     * - parameter method: The http method used to execute the request
     */
    public static func tasksList(taskId: String, method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_tasks/\(taskId)"
        return Request(method: method, url: url, body: nil)
    }
    
}