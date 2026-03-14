import Foundation

public extension URLRequest {
    init(
        url: URL,
        httpMethod: String = "GET",
        headers: [String: String]? = nil,
        httpBody: Data? = nil,
        timeoutInterval: TimeInterval = 60,
        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy
    ) {
        self.init(url: url, cachePolicy: cachePolicy, timeoutInterval: timeoutInterval)
        self.httpMethod = httpMethod
        self.httpBody = httpBody
        self.timeoutInterval = timeoutInterval
        self.cachePolicy = cachePolicy
        if let headers {
            self.allHTTPHeaderFields?.merge(headers) { $1 }
        }
    }
    
    init?(
        urlComponents: URLComponents,
        httpMethod: String = "GET",
        headers: [String: String]? = nil,
        httpBody: Data? = nil,
        timeoutInterval: TimeInterval = 60,
        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy
    ) {
        guard let url = urlComponents.url else { return nil }
        self.init(url: url, cachePolicy: cachePolicy, timeoutInterval: timeoutInterval)
        self.httpMethod = httpMethod
        self.httpBody = httpBody
        self.timeoutInterval = timeoutInterval
        self.cachePolicy = cachePolicy
        if let headers {
            self.allHTTPHeaderFields?.merge(headers) { $1 }
        }
    }
    
    init?(
        urlString: String,
        httpMethod: String = "GET",
        headers: [String: String]? = nil,
        httpBody: Data? = nil,
        timeoutInterval: TimeInterval = 60,
        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy
    ) {
        guard let url = URL(string: urlString) else { return nil }
        self.init(url: url, cachePolicy: cachePolicy, timeoutInterval: timeoutInterval)
        self.httpMethod = httpMethod
        self.httpBody = httpBody
        self.timeoutInterval = timeoutInterval
        self.cachePolicy = cachePolicy
        if let headers {
            self.allHTTPHeaderFields?.merge(headers) { $1 }
        }
    }
}
