extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-open-close.html
     * - parameter index: A comma separated list of indices to open
     * - parameter method: The http method used to execute the request
     */
    public static func indicesOpen(index: [String], method: HttpMethod = .POST) -> Request {
        assert(method == .POST)
        let url = "/\(index.joined(separator: ","))/_open"
        return Request(method: method, url: url, body: nil)
    }
    
}