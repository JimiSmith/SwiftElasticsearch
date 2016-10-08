extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-stats.html
     * - parameter method: The http method used to execute the request
     */
    public static func clusterStats(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cluster/stats"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-stats.html
     * - parameter nodeId: A comma-separated list of node IDs or names to limit the returned information; use `_local` to return information from the node you're connecting to, leave empty to get information from all nodes
     * - parameter method: The http method used to execute the request
     */
    public static func clusterStats(nodeId: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cluster/stats/nodes/\(nodeId.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}