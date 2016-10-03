extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-update-settings.html
     * - parameter method: The http method used to execute the request
     */
    public static func cluster_get_settings(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cluster/settings"
        return Request(method: method, url: url, body: nil)
    }

}