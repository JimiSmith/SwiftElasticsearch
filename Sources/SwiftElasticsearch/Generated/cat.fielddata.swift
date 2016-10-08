extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-fielddata.html
     * - parameter method: The http method used to execute the request
     */
    public static func catFielddata(method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/fielddata"
        return Request(method: method, url: url, body: nil)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/cat-fielddata.html
     * - parameter fields: A comma-separated list of fields to return the fielddata size
     * - parameter method: The http method used to execute the request
     */
    public static func catFielddata(fields: [String], method: HttpMethod = .GET) -> Request {
        assert(method == .GET)
        let url = "/_cat/fielddata/\(fields.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}