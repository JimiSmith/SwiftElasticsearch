extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-get.html
     * - parameter type: The type of the document (use `_all` to fetch the first document matching the ID across all types)
     * - parameter id: The document ID
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     */
    public static func get(index: String, type: String, id: String, method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/\(index)/\(type)/\(id)"
        return Request(method: method, url: url, body: nil)
    }
    
}