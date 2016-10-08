extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
     * - parameter snapshot: A snapshot name
     * - parameter repository: A repository name
     * - parameter method: The http method used to execute the request
     */
    public static func snapshotDelete(repository: String, snapshot: String, method: HttpMethod = .DELETE) -> Request {
        assert(method == .DELETE)
        let url = "/_snapshot/\(repository)/\(snapshot)"
        return Request(method: method, url: url, body: nil)
    }
    
}