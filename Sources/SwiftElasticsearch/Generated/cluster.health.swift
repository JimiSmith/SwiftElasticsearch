extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-health.html
     * - parameter method: The http method used to execute the request
     */
    public static func clusterHealth(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cluster/health"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-health.html
     * - parameter index: Limit the information returned to a specific index
     * - parameter method: The http method used to execute the request
     */
    public static func clusterHealth(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cluster/health/\(index.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}