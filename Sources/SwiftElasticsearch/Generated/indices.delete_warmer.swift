extension Request {
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-warmers.html
     * - parameter name: A comma-separated list of warmer names to delete (supports wildcards); use `_all` to delete all warmers in the specified indices. You must specify a name either in the uri or in the parameters.
     * - parameter index: A comma-separated list of index names to delete warmers from (supports wildcards); use `_all` to perform the operation on all indices.
     * - parameter method: The http method used to execute the request
     */
    public static func indices_delete_warmer(index: [String], name: [String], method: HttpMethod = .DELETE) -> Request {
        assert(method == .DELETE)
        let url = "/\(index.joined(separator: ","))/_warmer/\(name.joined(separator: ","))"
        return Request(method: method, url: url, body: nil)
    }

}