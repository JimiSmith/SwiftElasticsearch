extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-shards.html
     * - parameter method: The http method used to execute the request
     */
    public static func catShards(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/shards"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-shards.html
     * - parameter index: A comma-separated list of index names to limit the returned information
     * - parameter method: The http method used to execute the request
     */
    public static func catShards(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/shards/\(index.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}