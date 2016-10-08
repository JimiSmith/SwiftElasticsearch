extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
     * - parameter snapshot: A comma-separated list of snapshot names
     * - parameter repository: A repository name
     * - parameter method: The http method used to execute the request
     */
    public static func snapshotGet(repository: String, snapshot: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_snapshot/\(repository)/\(snapshot.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}