#if canImport(QuickLook)
import Foundation
import SwiftUI
import QuickLook

public extension View {
    func quickLookPreview(remoteUrl: Binding<URL?>) -> some View {
        self.modifier(QuickLookPreviewRemoteUrl(url: remoteUrl))
    }
}

struct QuickLookPreviewRemoteUrl: ViewModifier {
    @Binding var url: URL?
    
    init(url: Binding<URL?>) {
        self._url = url
    }
    
    @ViewBuilder
    func body(content: Content) -> some View {
        content
            .quickLookPreview($url)
            .onChange(of: url) { url in
                guard let actualUrl = url else { return }
                
                let downloadTask = URLSession.shared.downloadTask(with: actualUrl) { url, _, _ in
                    guard let url else { return }

                    let downloadUrl = FileManager.default.temporaryDirectory.appendingPathComponent(actualUrl.lastPathComponent)
                                        
                    try? FileManager.default.moveItem(at: url, to: downloadUrl)
                    
                    DispatchQueue.main.async {
                        self.url = downloadUrl
                    }
                }
                
                downloadTask.resume()
            }
    }
}
@available(iOS 17, macCatalyst 17, tvOS 17, watchOS 10, macOS 14, *)
#Preview {
    @Previewable @State var url: URL?
    
    Button("Quick Look") {
        url = URL(string: "https://developer.apple.com/support/downloads/terms/apple-developer-program/Apple-Developer-Program-License-Agreement-English.pdf")
    }
    .quickLookPreview(remoteUrl: $url)
}
#endif
