extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html
     * - parameter method: The http method used to execute the request
     */
    public static func indices_upgrade(method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/_upgrade"
        return Request(method: method, url: url, body: nil)
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-upgrade.html
     * - parameter index: A comma-separated list of index names; use `_all` or empty string to perform the operation on all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indices_upgrade(index: [String], method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/\(index.joined(separator: ","))/_upgrade"
        return Request(method: method, url: url, body: nil)
    }

}