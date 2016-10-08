extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-allocation.html
     * - parameter method: The http method used to execute the request
     */
    public static func catAllocation(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/allocation"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-allocation.html
     * - parameter nodeId: A comma-separated list of node IDs or names to limit the returned information
     * - parameter method: The http method used to execute the request
     */
    public static func catAllocation(nodeId: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/allocation/\(nodeId.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}