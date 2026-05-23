import SwiftUI

@available(iOS 16, macCatalyst 16, tvOS 16.0, watchOS 9.0, macOS 13, *)
struct HeightFittingModifier: ViewModifier {
    let minimumHeight: CGFloat
    let otherDetents: Set<PresentationDetent>
    
    @State private var contentDetent: PresentationDetent = .height(.zero)
    
    func body(content: Content) -> some View {
        content
            .onGeometryChange(for: CGFloat.self, of: \.size.height) { newSize in
                self.contentDetent = .height(
                    max(newSize, minimumHeight)
                )
            }
            .presentationDetents(otherDetents.union([contentDetent]))
    }
}

@available(iOS 16, macCatalyst 16, tvOS 16.0, watchOS 9.0, macOS 13, *)
public extension View {
    @ViewBuilder
    func presentationDetents(
        _ detents: Set<PresentationDetent> = [],
        shouldFitToHeight: Bool,
        /// If the content is too small, this will serve as the minimum height.
        minHeight: CGFloat = 75
    ) -> some View {
        if shouldFitToHeight {
            self.modifier(
                HeightFittingModifier(
                    minimumHeight: minHeight,
                    otherDetents: detents
                )
            )
        } else {
            self.presentationDetents(detents)
        }
    }
}

@available(iOS 17, macCatalyst 17, tvOS 17, watchOS 10, macOS 14, *)
#Preview {
    @Previewable @State var isSheetPresented: Bool = false
    
    Button("Sheet", systemImage: "square.and.arrow.up") {
        isSheetPresented.toggle()
    }
    .sheet(isPresented: $isSheetPresented) {
        Text("Hello world")
            .presentationDetents(shouldFitToHeight: true)
            .presentationDragIndicator(.visible)
    }
    
}
