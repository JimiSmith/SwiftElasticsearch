extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shards-stores.html
     * - parameter method: The http method used to execute the request
     */
    public static func indicesShardStores(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_shard_stores"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-shards-stores.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesShardStores(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_shard_stores"
        return Request(method: method, url: url, body: nil)
    }
    
}