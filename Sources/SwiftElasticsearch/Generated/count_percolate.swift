extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter type: The type of the document being count percolated.
     * - parameter index: The index of the document being count percolated.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func countPercolate(index: String, type: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_percolate/count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter type: The type of the document being count percolated.
     * - parameter index: The index of the document being count percolated.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func countPercolate(index: String, type: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/_percolate/count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter type: The type of the document being count percolated.
     * - parameter id: Substitute the document in the request body with a document that is known by the specified id. On top of the id, the index and type parameter will be used to retrieve the document from within the cluster.
     * - parameter index: The index of the document being count percolated.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func countPercolate(index: String, type: String, id: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/\(id)/_percolate/count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-percolate.html
     * - parameter type: The type of the document being count percolated.
     * - parameter id: Substitute the document in the request body with a document that is known by the specified id. On top of the id, the index and type parameter will be used to retrieve the document from within the cluster.
     * - parameter index: The index of the document being count percolated.
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func countPercolate(index: String, type: String, id: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/\(index)/\(type)/\(id)/_percolate/count"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}