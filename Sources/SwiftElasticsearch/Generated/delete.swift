extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/docs-delete.html
     * - parameter type: The type of the document
     * - parameter id: The document ID
     * - parameter index: The name of the index
     * - parameter method: The http method used to execute the request
     */
    public static func delete(index: String, type: String, id: String, method: HttpMethod = .DELETE) -> Request {
        assert(method == .DELETE)
        let url = "/\(index)/\(type)/\(id)"
        return Request(method: method, url: url, body: nil)
    }

}