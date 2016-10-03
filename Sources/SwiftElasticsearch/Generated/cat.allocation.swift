extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-allocation.html
     * - parameter method: The http method used to execute the request
     */
    public static func cat_allocation(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/allocation"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-allocation.html
     * - parameter node_id: A comma-separated list of node IDs or names to limit the returned information
     * - parameter method: The http method used to execute the request
     */
    public static func cat_allocation(node_id: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/allocation/\(node_id.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}