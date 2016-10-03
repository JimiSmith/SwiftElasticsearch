extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-info.html
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_info(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-info.html
     * - parameter node_id: A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_info(node_id: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/\(node_id.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-info.html
     * - parameter metric: A comma-separated list of metrics you wish returned. Leave empty to return all.
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_info(metric: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/\(metric.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-info.html
     * - parameter node_id: A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes
     * - parameter metric: A comma-separated list of metrics you wish returned. Leave empty to return all.
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_info(node_id: [String], metric: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/\(node_id.joined(separator: ","))/\(metric.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}