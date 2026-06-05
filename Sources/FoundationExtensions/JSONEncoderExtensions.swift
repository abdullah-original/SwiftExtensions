import Foundation

public extension JSONEncoder {
    convenience init(
        outputFormatting: JSONEncoder.OutputFormatting? = nil,
        keyEncodingStrategy: JSONEncoder.KeyEncodingStrategy = .useDefaultKeys,
        dateEncodingStrategy: JSONEncoder.DateEncodingStrategy = .iso8601,
        dataEncodingStrategy: JSONEncoder.DataEncodingStrategy = .base64,
        nonConformingFloatEncodingStrategy: JSONEncoder.NonConformingFloatEncodingStrategy = .throw
    ) {
        self.init()
        if let outputFormatting { self.outputFormatting = outputFormatting }
        self.keyEncodingStrategy = keyEncodingStrategy
        self.dateEncodingStrategy = dateEncodingStrategy
        self.dataEncodingStrategy = dataEncodingStrategy
        self.nonConformingFloatEncodingStrategy = nonConformingFloatEncodingStrategy
    }
}

public extension JSONEncoder.DateEncodingStrategy {
    static let yearMonthDay = Self.formatted(
        DateFormatter(
            dateFormat: "yyyy-MM-dd",
            calendar: .init(identifier: .gregorian)
        )
    )
}
