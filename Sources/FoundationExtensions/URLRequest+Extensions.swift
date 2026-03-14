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
        updateHeaders(headers)
    }
    
    init<T: Encodable>(
        url: URL,
        httpMethod: String = "GET",
        headers: [String: String]? = nil,
        httpBody: T,
        timeoutInterval: TimeInterval = 60,
        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
        encoder: JSONEncoder = .init()
    ) {
        self.init(
            url: url,
            httpMethod: httpMethod,
            headers: headers,
            httpBody: try? encoder.encode(httpBody),
            timeoutInterval: timeoutInterval,
            cachePolicy: cachePolicy
        )
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
        self.init(
            url: url,
            httpMethod: httpMethod,
            headers: headers,
            httpBody: httpBody,
            timeoutInterval: timeoutInterval,
            cachePolicy: cachePolicy
        )
    }
    
    init?<T: Encodable>(
        urlComponents: URLComponents,
        httpMethod: String = "GET",
        headers: [String: String]? = nil,
        httpBody: T,
        timeoutInterval: TimeInterval = 60,
        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
        encoder: JSONEncoder = .init()
    ) {
        self.init(
            urlComponents: urlComponents,
            httpMethod: httpMethod,
            headers: headers,
            httpBody: try? encoder.encode(httpBody),
            timeoutInterval: timeoutInterval,
            cachePolicy: cachePolicy
        )
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
        self.init(
            url: url,
            httpMethod: httpMethod,
            headers: headers,
            httpBody: httpBody,
            timeoutInterval: timeoutInterval,
            cachePolicy: cachePolicy
        )
    }
    
    init?<T: Encodable>(
        urlString: String,
        httpMethod: String = "GET",
        headers: [String: String]? = nil,
        httpBody: T,
        timeoutInterval: TimeInterval = 60,
        cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
        encoder: JSONEncoder = .init()
    ) {
        self.init(
            urlString: urlString,
            httpMethod: httpMethod,
            headers: headers,
            httpBody: try? encoder.encode(httpBody),
            timeoutInterval: timeoutInterval,
            cachePolicy: cachePolicy
        )
    }
    
    private mutating func updateHeaders(_ headers: [String: String]?) {
        guard let headers else { return }
        headers.forEach { key, value in
            setValue(value, forHTTPHeaderField: key)
        }
    }
}
