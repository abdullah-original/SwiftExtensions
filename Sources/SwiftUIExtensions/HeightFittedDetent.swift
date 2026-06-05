import SwiftUI

@available(iOS 16, macCatalyst 16, tvOS 16, watchOS 9, macOS 13, *)
struct HeightFittingModifier: ViewModifier {
    let minimumHeight: CGFloat
    
    @State private var contentHeight = CGFloat(0)
    
    @ViewBuilder
    func body(content: Content) -> some View {
        let view = content
            .presentationDetents([.height(contentHeight)])
            .onGeometryChange(for: CGFloat.self, of: \.size.height) { newHeight in
                self.contentHeight = max(newHeight, minimumHeight)
            }
        
        if #available(iOS 18, macCatalyst 18, tvOS 18, watchOS 11, macOS 15, visionOS 2, *) {
            view
                .onScrollGeometryChange(for: CGFloat.self, of: \.contentSize.height) { _, newHeight in
                    self.contentHeight = max(contentHeight + newHeight, minimumHeight)
                }
        } else {
            view
        }
    }
}

@available(iOS 16, macCatalyst 16, tvOS 16.0, watchOS 9.0, macOS 13, *)
public extension View {
    @ViewBuilder
    func presentationDetentsFitToHeight(minHeight: CGFloat = 75) -> some View {
        self.modifier(
            HeightFittingModifier(minimumHeight: minHeight)
        )
    }
}

@available(iOS 17, macCatalyst 17, tvOS 17, watchOS 10, macOS 14, *)
#Preview {
    @Previewable @State var isSheetPresented: Bool = false
    @Previewable @State var pickerSelection: Int = 0
    
    Button("Sheet", systemImage: "square.and.arrow.up") {
        isSheetPresented = true
    }
    .buttonStyle(.borderedProminent)
    .sheet(isPresented: $isSheetPresented) {
        VStack {
            Picker("", selection: $pickerSelection) {
                Text("Text")
                    .tag(0)
                
                Text("List")
                    .tag(1)
            }
            .pickerStyle(.segmented)
            
            if pickerSelection == 0 {
                Text("Hello world")
            } else {
                List(0...10, id: \.self) {
                    Text("\($0) cell")
                }
                .scrollContentBackground(.hidden)
                .scrollIndicators(.hidden)
            }
        }
        .padding(.vertical, 24)
        .padding(.horizontal)
        .presentationDragIndicator(.visible)
        .presentationDetentsFitToHeight()
    }
}
