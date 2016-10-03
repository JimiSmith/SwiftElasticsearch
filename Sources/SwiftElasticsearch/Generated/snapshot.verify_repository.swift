extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
     * - parameter repository: A repository name
     * - parameter method: The http method used to execute the request
     */
    public static func snapshot_verify_repository(repository: String, method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/_snapshot/\(repository)/_verify"
        return Request(method: method, url: url, body: nil)
    }

}