extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-types-exists.html
     * - parameter type: A comma-separated list of document types to check
     * - parameter index: A comma-separated list of index names; use `_all` to check the types across all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indicesExistsType(index: [String], type: [String], method: HttpMethod = .HEAD) -> Request {
        assert(method == .HEAD)
        let url = "/\(index.joined(separator: ","))/\(type.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }
    
}