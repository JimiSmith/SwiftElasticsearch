extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-stats.html
     * - parameter method: The http method used to execute the request
     */
    public static func indices_stats(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_stats"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-stats.html
     * - parameter metric: Limit the information returned the specific metrics.
     * - parameter method: The http method used to execute the request
     */
    public static func indices_stats(metric: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_stats/\(metric.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-stats.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indices_stats(index: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_stats"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-stats.html
     * - parameter metric: Limit the information returned the specific metrics.
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indices_stats(index: [String], metric: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index.joined(separator: ","))/_stats/\(metric.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}