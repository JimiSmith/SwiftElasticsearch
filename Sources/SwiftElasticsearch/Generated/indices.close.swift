extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html
     * - parameter index: A comma separated list of indices to close
     * - parameter method: The http method used to execute the request
     */
    public static func indices_close(index: [String], method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/\(index.joined(separator: ","))/_close"
        return Request(method: method, url: url, body: nil)
    }

}