extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks-cancel.html
     * - parameter method: The http method used to execute the request
     */
    public static func tasksCancel(method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/_tasks/_cancel"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/tasks-cancel.html
     * - parameter taskId: Cancel the task with specified id
     * - parameter method: The http method used to execute the request
     */
    public static func tasksCancel(taskId: String, method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/_tasks/\(taskId)/_cancel"
        return Request(method: method, url: url, body: nil)
    }
    
}