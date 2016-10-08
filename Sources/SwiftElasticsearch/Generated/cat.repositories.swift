extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-repositories.html
     * - parameter method: The http method used to execute the request
     */
    public static func catRepositories(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/repositories"
        return Request(method: method, url: url, body: nil)
    }
    
}