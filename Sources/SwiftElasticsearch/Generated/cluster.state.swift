extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-state.html
     * - parameter method: The http method used to execute the request
     */
    public static func cluster_state(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cluster/state"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-state.html
     * - parameter metric: Limit the information returned to the specified metrics
     * - parameter method: The http method used to execute the request
     */
    public static func cluster_state(metric: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cluster/state/\(metric.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-state.html
     * - parameter metric: Limit the information returned to the specified metrics
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func cluster_state(metric: [String], index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cluster/state/\(metric.joined(separator: ","))/\(index.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}