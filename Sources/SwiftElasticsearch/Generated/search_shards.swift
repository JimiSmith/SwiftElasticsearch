extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-shards.html
     * - parameter method: The http method used to execute the request
     */
    public static func searchShards(method: HttpMethod = .GET) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_search_shards"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-shards.html
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func searchShards(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/_search_shards"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-shards.html
     * - parameter type: A comma-separated list of document types to search; leave empty to perform the operation on all types
     * - parameter index: A comma-separated list of index names to search; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func searchShards(index: [String], type: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))/_search_shards"
        return Request(method: method, url: url, body: nil)
    }
    
}