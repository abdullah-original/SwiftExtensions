import SwiftUI

@available(iOS 17, macCatalyst 17, tvOS 17, watchOS 10, macOS 14, *)
public extension ColorPicker where Label == Text {    
    init(
        _ titleKey: LocalizedStringKey,
        selection: Binding<ColorComponents>,
        supportsOpacity: Bool = true
    ) {
        self.init(
            titleKey,
            selection: Binding<Color> {
                Color(selection.wrappedValue)
            } set: { newValue in
                selection.wrappedValue = ColorComponents(newValue)
            },
            supportsOpacity: supportsOpacity
        )
    }
}

@available(iOS 17, macCatalyst 17, tvOS 17, watchOS 10, macOS 14, *)
public extension ColorPicker {
    init(
        selection: Binding<ColorComponents>,
        supportsOpacity: Bool = true,
        label: () -> Label
    ) {
        self.init(
            selection: Binding<Color> {
                Color(selection.wrappedValue)
            } set: { newValue in
                selection.wrappedValue = ColorComponents(newValue)
            },
            supportsOpacity: supportsOpacity,
            label: label
        )
    }
}

@available(iOS 17, macCatalyst 17, tvOS 17, watchOS 10, macOS 14, *)
#Preview {
    @Previewable @State var color = ColorComponents(Color.black)
    
    ColorPicker("Color", selection: $color)
    
    Circle()
        .frame(maxWidth: 50)
        .foregroundStyle(Color(color))
        .onChange(of: color) {
            print(color)
        }
}
