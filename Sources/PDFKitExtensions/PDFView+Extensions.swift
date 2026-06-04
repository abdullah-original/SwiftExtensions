#if canImport(PDFKit)
import PDFKit

public extension PDFView {
    convenience init(
        document: PDFDocument,
        delegate: PDFViewDelegate?
    ) {
        self.init()
        self.document = document
        self.delegate = delegate
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

#endif
