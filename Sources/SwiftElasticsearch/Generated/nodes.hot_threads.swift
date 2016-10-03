extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-hot-threads.html
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_hot_threads(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/hot_threads"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-hot-threads.html
     * - parameter node_id: A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_hot_threads(node_id: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/\(node_id.joined(separator: ","))/hot_threads"
        return Request(method: method, url: url, body: nil)
    }

}