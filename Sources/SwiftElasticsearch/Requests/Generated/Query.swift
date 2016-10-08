public struct Fuzzy<T>: QueryItem {
    public let field: String
    public let value: T
    public let maxExpansions: Int?
    public let fuzziness: Int?
    public let prefixLength: Int?
    public let boost: Double?
    
    public init(
        field: String,
        value: T,
        maxExpansions: Int? = nil,
        fuzziness: Int? = nil,
        prefixLength: Int? = nil,
        boost: Double? = nil
    ) {
        self.field = field
        self.value = value
        self.maxExpansions = maxExpansions
        self.fuzziness = fuzziness
        self.prefixLength = prefixLength
        self.boost = boost
    }
    
    public func asJson() -> [String: Any] {
        var containerDict = [self.field: [:]]
        containerDict[self.field]?["value"] = self.value
        if let maxExpansions = self.maxExpansions {
            containerDict[self.field]?["max_expansions"] = maxExpansions
        }
        if let fuzziness = self.fuzziness {
            containerDict[self.field]?["fuzziness"] = fuzziness
        }
        if let prefixLength = self.prefixLength {
            containerDict[self.field]?["prefix_length"] = prefixLength
        }
        if let boost = self.boost {
            containerDict[self.field]?["boost"] = boost
        }
        return ["fuzzy": containerDict]
    }
    
}

public enum Operator: String {
    case and = "and"
    case or = "or"
}

public struct MatchAll: QueryItem {
    
    public init(
    ) {
    }
    
    public func asJson() -> [String: Any] {
        return ["match_all": [:]]
    }
    
}

public enum MatchType: String {
    case phrase = "phrase"
    case phrasePrefix = "phrase_prefix"
    case boolean = "boolean"
}

public struct Query: ElasticsearchBody {
    public let child: QueryItem
    
    public init(
        child: QueryItem
    ) {
        self.child = child
    }
    
    public func asJson() -> [String: Any] {
        return ["query": self.child.asJson()]
    }
    
}

public enum MultiMatchType: String {
    case bestFields = "best_fields"
    case mostFields = "most_fields"
    case crossFields = "cross_fields"
    case phrase = "phrase"
    case phrasePrefix = "phrase_prefix"
}

public struct Term<T>: QueryItem {
    public let field: String
    public let value: T
    public let boost: Double?
    
    public init(
        field: String,
        value: T,
        boost: Double? = nil
    ) {
        self.field = field
        self.value = value
        self.boost = boost
    }
    
    public func asJson() -> [String: Any] {
        var containerDict = [self.field: [:]]
        containerDict[self.field]?["value"] = self.value
        if let boost = self.boost {
            containerDict[self.field]?["boost"] = boost
        }
        return ["term": containerDict]
    }
    
}

public struct WildCard<T>: QueryItem {
    public let field: String
    public let wildcard: T
    public let boost: Double?
    
    public init(
        field: String,
        wildcard: T,
        boost: Double? = nil
    ) {
        self.field = field
        self.wildcard = wildcard
        self.boost = boost
    }
    
    public func asJson() -> [String: Any] {
        var containerDict = [self.field: [:]]
        containerDict[self.field]?["wildcard"] = self.wildcard
        if let boost = self.boost {
            containerDict[self.field]?["boost"] = boost
        }
        return ["wildcard": containerDict]
    }
    
}

public struct Range<T>: QueryItem {
    public let field: String
    public let lte: T
    public let gte: T
    public let boost: Double?
    public let format: String?
    public let timeZone: String?
    
    public init(
        field: String,
        lte: T,
        gte: T,
        boost: Double? = nil,
        format: String? = nil,
        timeZone: String? = nil
    ) {
        self.field = field
        self.lte = lte
        self.gte = gte
        self.boost = boost
        self.format = format
        self.timeZone = timeZone
    }
    
    public func asJson() -> [String: Any] {
        var containerDict = [self.field: [:]]
        containerDict[self.field]?["lte"] = self.lte
        containerDict[self.field]?["gte"] = self.gte
        if let boost = self.boost {
            containerDict[self.field]?["boost"] = boost
        }
        if let format = self.format {
            containerDict[self.field]?["format"] = format
        }
        if let timeZone = self.timeZone {
            containerDict[self.field]?["time_zone"] = timeZone
        }
        return ["range": containerDict]
    }
    
}

public struct BoolQuery: QueryItem {
    public let must: [QueryItem]?
    public let should: [QueryItem]?
    public let filter: [QueryItem]?
    public let mustNot: [QueryItem]?
    public let boost: Double?
    public let minimumShouldMatch: String?
    
    public init(
        must: [QueryItem]? = nil,
        should: [QueryItem]? = nil,
        filter: [QueryItem]? = nil,
        mustNot: [QueryItem]? = nil,
        boost: Double? = nil,
        minimumShouldMatch: String? = nil
    ) {
        self.must = must
        self.should = should
        self.filter = filter
        self.mustNot = mustNot
        self.boost = boost
        self.minimumShouldMatch = minimumShouldMatch
    }
    
    public func asJson() -> [String: Any] {
        var dict = ["bool": [:]]
        if let must = self.must {
            dict["bool"]?["must"] = must.map { $0.asJson() }
        }
        if let should = self.should {
            dict["bool"]?["should"] = should.map { $0.asJson() }
        }
        if let filter = self.filter {
            dict["bool"]?["filter"] = filter.map { $0.asJson() }
        }
        if let mustNot = self.mustNot {
            dict["bool"]?["must_not"] = mustNot.map { $0.asJson() }
        }
        if let boost = self.boost {
            dict["bool"]?["boost"] = boost
        }
        if let minimumShouldMatch = self.minimumShouldMatch {
            dict["bool"]?["minimum_should_match"] = minimumShouldMatch
        }
        return dict
    }
    
}

public struct Ids<T>: QueryItem {
    public let values: [T]
    public let type: String?
    
    public init(
        values: [T],
        type: String? = nil
    ) {
        self.values = values
        self.type = type
    }
    
    public func asJson() -> [String: Any] {
        var dict = ["ids": [:]]
        dict["ids"]?["values"] = self.values
        if let type = self.type {
            dict["ids"]?["type"] = type
        }
        return dict
    }
    
}

public struct Terms<T>: QueryItem {
    public let field: String
    public let value: [T]
    
    public init(
        field: String,
        value: [T]
    ) {
        self.field = field
        self.value = value
    }
    
    public func asJson() -> [String: Any] {
        return ["terms": [self.field: self.value]]
    }
    
}

public struct Prefix<T>: QueryItem {
    public let field: String
    public let prefix: T
    public let boost: Double?
    
    public init(
        field: String,
        prefix: T,
        boost: Double? = nil
    ) {
        self.field = field
        self.prefix = prefix
        self.boost = boost
    }
    
    public func asJson() -> [String: Any] {
        var containerDict = [self.field: [:]]
        containerDict[self.field]?["prefix"] = self.prefix
        if let boost = self.boost {
            containerDict[self.field]?["boost"] = boost
        }
        return ["prefix": containerDict]
    }
    
}

public struct Common<T>: QueryItem {
    public let field: String
    public let query: T
    public let cutoffFrequency: Double?
    public let minimumShouldMatch: String?
    public let boost: Double?
    public let analyzer: String?
    public let disableCoord: Bool?
    
    public init(
        field: String,
        query: T,
        cutoffFrequency: Double? = nil,
        minimumShouldMatch: String? = nil,
        boost: Double? = nil,
        analyzer: String? = nil,
        disableCoord: Bool? = nil
    ) {
        self.field = field
        self.query = query
        self.cutoffFrequency = cutoffFrequency
        self.minimumShouldMatch = minimumShouldMatch
        self.boost = boost
        self.analyzer = analyzer
        self.disableCoord = disableCoord
    }
    
    public func asJson() -> [String: Any] {
        var containerDict = [self.field: [:]]
        containerDict[self.field]?["query"] = self.query
        if let cutoffFrequency = self.cutoffFrequency {
            containerDict[self.field]?["cutoff_frequency"] = cutoffFrequency
        }
        if let minimumShouldMatch = self.minimumShouldMatch {
            containerDict[self.field]?["minimum_should_match"] = minimumShouldMatch
        }
        if let boost = self.boost {
            containerDict[self.field]?["boost"] = boost
        }
        if let analyzer = self.analyzer {
            containerDict[self.field]?["analyzer"] = analyzer
        }
        if let disableCoord = self.disableCoord {
            containerDict[self.field]?["disable_coord"] = disableCoord
        }
        return ["common": containerDict]
    }
    
}

public struct Exists<T>: QueryItem {
    public let field: String
    public let value: T
    
    public init(
        field: String,
        value: T
    ) {
        self.field = field
        self.value = value
    }
    
    public func asJson() -> [String: Any] {
        return ["exists": [self.field: self.value]]
    }
    
}

public struct MultiMatch<T>: QueryItem {
    public let query: T
    public let fields: [String]
    public let type: MultiMatchType?
    public let tieBreaker: Double?
    public let `operator`: Operator?
    public let maxExpansions: Int?
    public let fuzziness: Int?
    public let analyzer: String?
    public let prefixLength: Int?
    public let boost: Double?
    public let minimumShouldMatch: String?
    public let zeroTermsQuery: ZeroTermsQueryType?
    public let cutoffFrequency: Double?
    
    public init(
        query: T,
        fields: [String],
        type: MultiMatchType? = nil,
        tieBreaker: Double? = nil,
        `operator`: Operator? = nil,
        maxExpansions: Int? = nil,
        fuzziness: Int? = nil,
        analyzer: String? = nil,
        prefixLength: Int? = nil,
        boost: Double? = nil,
        minimumShouldMatch: String? = nil,
        zeroTermsQuery: ZeroTermsQueryType? = nil,
        cutoffFrequency: Double? = nil
    ) {
        self.query = query
        self.fields = fields
        self.type = type
        self.tieBreaker = tieBreaker
        self.`operator` = `operator`
        self.maxExpansions = maxExpansions
        self.fuzziness = fuzziness
        self.analyzer = analyzer
        self.prefixLength = prefixLength
        self.boost = boost
        self.minimumShouldMatch = minimumShouldMatch
        self.zeroTermsQuery = zeroTermsQuery
        self.cutoffFrequency = cutoffFrequency
    }
    
    public func asJson() -> [String: Any] {
        var dict = ["multi_match": [:]]
        dict["multi_match"]?["query"] = self.query
        dict["multi_match"]?["fields"] = self.fields
        if let type = self.type {
            dict["multi_match"]?["type"] = type.rawValue
        }
        if let tieBreaker = self.tieBreaker {
            dict["multi_match"]?["tie_breaker"] = tieBreaker
        }
        if let `operator` = self.`operator` {
            dict["multi_match"]?["operator"] = `operator`.rawValue
        }
        if let maxExpansions = self.maxExpansions {
            dict["multi_match"]?["max_expansions"] = maxExpansions
        }
        if let fuzziness = self.fuzziness {
            dict["multi_match"]?["fuzziness"] = fuzziness
        }
        if let analyzer = self.analyzer {
            dict["multi_match"]?["analyzer"] = analyzer
        }
        if let prefixLength = self.prefixLength {
            dict["multi_match"]?["prefix_length"] = prefixLength
        }
        if let boost = self.boost {
            dict["multi_match"]?["boost"] = boost
        }
        if let minimumShouldMatch = self.minimumShouldMatch {
            dict["multi_match"]?["minimum_should_match"] = minimumShouldMatch
        }
        if let zeroTermsQuery = self.zeroTermsQuery {
            dict["multi_match"]?["zero_terms_query"] = zeroTermsQuery.rawValue
        }
        if let cutoffFrequency = self.cutoffFrequency {
            dict["multi_match"]?["cutoff_frequency"] = cutoffFrequency
        }
        return dict
    }
    
}

public struct Type: QueryItem {
    public let value: String
    
    public init(
        value: String
    ) {
        self.value = value
    }
    
    public func asJson() -> [String: Any] {
        var dict = ["type": [:]]
        dict["type"]?["value"] = self.value
        return dict
    }
    
}

public struct Match<T>: QueryItem {
    public let field: String
    public let query: T
    public let type: MatchType?
    public let `operator`: Operator?
    public let maxExpansions: Int?
    public let fuzziness: Int?
    public let analyzer: String?
    public let prefixLength: Int?
    public let boost: Double?
    public let minimumShouldMatch: String?
    public let zeroTermsQuery: ZeroTermsQueryType?
    public let cutoffFrequency: Double?
    
    public init(
        field: String,
        query: T,
        type: MatchType? = nil,
        `operator`: Operator? = nil,
        maxExpansions: Int? = nil,
        fuzziness: Int? = nil,
        analyzer: String? = nil,
        prefixLength: Int? = nil,
        boost: Double? = nil,
        minimumShouldMatch: String? = nil,
        zeroTermsQuery: ZeroTermsQueryType? = nil,
        cutoffFrequency: Double? = nil
    ) {
        self.field = field
        self.query = query
        self.type = type
        self.`operator` = `operator`
        self.maxExpansions = maxExpansions
        self.fuzziness = fuzziness
        self.analyzer = analyzer
        self.prefixLength = prefixLength
        self.boost = boost
        self.minimumShouldMatch = minimumShouldMatch
        self.zeroTermsQuery = zeroTermsQuery
        self.cutoffFrequency = cutoffFrequency
    }
    
    public func asJson() -> [String: Any] {
        var containerDict = [self.field: [:]]
        containerDict[self.field]?["query"] = self.query
        if let type = self.type {
            containerDict[self.field]?["type"] = type.rawValue
        }
        if let `operator` = self.`operator` {
            containerDict[self.field]?["operator"] = `operator`.rawValue
        }
        if let maxExpansions = self.maxExpansions {
            containerDict[self.field]?["max_expansions"] = maxExpansions
        }
        if let fuzziness = self.fuzziness {
            containerDict[self.field]?["fuzziness"] = fuzziness
        }
        if let analyzer = self.analyzer {
            containerDict[self.field]?["analyzer"] = analyzer
        }
        if let prefixLength = self.prefixLength {
            containerDict[self.field]?["prefix_length"] = prefixLength
        }
        if let boost = self.boost {
            containerDict[self.field]?["boost"] = boost
        }
        if let minimumShouldMatch = self.minimumShouldMatch {
            containerDict[self.field]?["minimum_should_match"] = minimumShouldMatch
        }
        if let zeroTermsQuery = self.zeroTermsQuery {
            containerDict[self.field]?["zero_terms_query"] = zeroTermsQuery.rawValue
        }
        if let cutoffFrequency = self.cutoffFrequency {
            containerDict[self.field]?["cutoff_frequency"] = cutoffFrequency
        }
        return ["match": containerDict]
    }
    
}

public enum ZeroTermsQueryType: String {
    case none = "none"
    case all = "all"
}
