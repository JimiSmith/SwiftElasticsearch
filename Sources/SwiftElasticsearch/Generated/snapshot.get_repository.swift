extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
     * - parameter method: The http method used to execute the request
     */
    public static func snapshotGetRepository(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_snapshot"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
     * - parameter repository: A comma-separated list of repository names
     * - parameter method: The http method used to execute the request
     */
    public static func snapshotGetRepository(repository: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_snapshot/\(repository.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}