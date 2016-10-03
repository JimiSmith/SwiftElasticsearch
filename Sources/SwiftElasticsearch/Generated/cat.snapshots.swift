extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-snapshots.html
     * - parameter repository: Name of repository from which to fetch the snapshot information
     * - parameter method: The http method used to execute the request
     */
    public static func cat_snapshots(repository: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/snapshots/\(repository.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}