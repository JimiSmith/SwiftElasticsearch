extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-delete-index.html
     * - parameter index: A comma-separated list of indices to delete; use `_all` or `*` string to delete all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesDelete(index: [String], method: HttpMethod = .DELETE) -> Request {
        assert(method == .DELETE)
        let url = "/\(index.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}