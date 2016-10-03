extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
     * - parameter repository: A comma-separated list of repository names
     * - parameter method: The http method used to execute the request
     */
    public static func snapshot_delete_repository(repository: [String], method: HttpMethod = .DELETE) -> Request {
        assert(method == .DELETE)
        let url = "/_snapshot/\(repository.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}