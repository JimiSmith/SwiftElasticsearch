extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
     * - parameter repository: A repository name
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func snapshot_create_repository(repository: String, method: HttpMethod = .PUT, body: ElasticsearchBody) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_snapshot/\(repository)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-snapshots.html
     * - parameter repository: A repository name
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func snapshot_create_repository(repository: String, method: HttpMethod = .PUT, body: [String : Any]) -> Request {
        assert(method == .PUT || method == .POST)
        let url = "/_snapshot/\(repository)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}