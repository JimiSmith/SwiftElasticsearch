extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_stats(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/stats"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html
     * - parameter node_id: A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_stats(node_id: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/\(node_id.joined(separator: ","))/stats"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html
     * - parameter metric: Limit the information returned to the specified metrics
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_stats(metric: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/stats/\(metric.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html
     * - parameter node_id: A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes
     * - parameter metric: Limit the information returned to the specified metrics
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_stats(node_id: [String], metric: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/\(node_id.joined(separator: ","))/stats/\(metric.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html
     * - parameter metric: Limit the information returned to the specified metrics
     * - parameter index_metric: Limit the information returned for `indices` metric to the specific index metrics. Isn't used if `indices` (or `all`) metric isn't specified.
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_stats(metric: [String], index_metric: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/stats/\(metric.joined(separator: ","))/\(index_metric.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-nodes-stats.html
     * - parameter node_id: A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes
     * - parameter metric: Limit the information returned to the specified metrics
     * - parameter index_metric: Limit the information returned for `indices` metric to the specific index metrics. Isn't used if `indices` (or `all`) metric isn't specified.
     * - parameter method: The http method used to execute the request
     */
    public static func nodes_stats(node_id: [String], metric: [String], index_metric: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_nodes/\(node_id.joined(separator: ","))/stats/\(metric.joined(separator: ","))/\(index_metric.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}