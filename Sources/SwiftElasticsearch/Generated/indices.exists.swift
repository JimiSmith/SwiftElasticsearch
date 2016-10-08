extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-exists.html
     * - parameter index: A comma-separated list of indices to check
     * - parameter method: The http method used to execute the request
     */
    public static func indicesExists(index: [String], method: HttpMethod = .HEAD) -> Request {
        assert(method == .HEAD)
        let url = "/\(index.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}