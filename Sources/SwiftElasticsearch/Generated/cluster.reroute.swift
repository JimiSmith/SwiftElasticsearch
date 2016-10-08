extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-reroute.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func clusterReroute(method: HttpMethod = .POST, body: ElasticsearchBody?) -> Request {
        assert(method == .POST)
        let url = "/_cluster/reroute"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cluster-reroute.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func clusterReroute(method: HttpMethod = .POST, body: [String : Any]?) -> Request {
        assert(method == .POST)
        let url = "/_cluster/reroute"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}