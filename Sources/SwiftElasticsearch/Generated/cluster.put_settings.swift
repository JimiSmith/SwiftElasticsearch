extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-update-settings.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func cluster_put_settings(method: HttpMethod = .PUT, body: ElasticsearchBody?) -> Request {
        assert(method == .PUT)
        let url = "/_cluster/settings"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-update-settings.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func cluster_put_settings(method: HttpMethod = .PUT, body: [String : Any]?) -> Request {
        assert(method == .PUT)
        let url = "/_cluster/settings"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
}