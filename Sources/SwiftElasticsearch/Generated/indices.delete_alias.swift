extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-aliases.html
     * - parameter name: A comma-separated list of aliases to delete (supports wildcards); use `_all` to delete all aliases for the specified indices.
     * - parameter index: A comma-separated list of index names (supports wildcards); use `_all` for all indices
     * - parameter method: The http method used to execute the request
     */
    public static func indices_delete_alias(index: [String], name: [String], method: HttpMethod = .DELETE) -> Request {
        assert(method == .DELETE)
        let url = "/\(index.joined(separator: ","))/_alias/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}