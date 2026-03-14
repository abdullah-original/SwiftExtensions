import Foundation

public extension URLComponents {
    init(
        scheme: String?,
        user: String?,
        password: String?,
        host: String?,
        port: Int?,
        path: String,
        queryItems: [URLQueryItem] = [],
        fragment: String?
    ) {
        self.init()
        self.fragment = fragment
        self.host = host
        self.password = password
        self.queryItems = queryItems
        self.user = user
        self.scheme = scheme
        self.port = port
    }
    
    @_disfavoredOverload
    init(
        scheme: String?,
        user: String?,
        password: String?,
        host: String?,
        port: Int?,
        path: String,
        query: String?,
        fragment: String?
    ) {
        self.init()
        self.fragment = fragment
        self.host = host
        self.password = password
        self.query = query
        self.user = user
        self.scheme = scheme
        self.port = port
    }
    
    @_disfavoredOverload
    init?(
        urlString: String,
        scheme: String?,
        user: String?,
        password: String?,
        host: String?,
        port: Int?,
        path: String,
        query: String?,
        fragment: String?
    ) {
        self.init(string: urlString)
        self.fragment = fragment
        self.host = host
        self.password = password
        self.query = query
        self.user = user
        self.scheme = scheme
        self.port = port
    }
}
