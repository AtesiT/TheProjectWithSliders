import SwiftUI

struct RectangleIcon: View {
    let backgroundColor: Color
    let foregroundColor: Color
    
    var body: some View {
        Image(systemName: "rectangle")
            .resizable()
            .rectangleIconPatternUpdateFunction(backgroundColor: backgroundColor, foregroundColor: foregroundColor)
    }
}

struct RectangeIconPatternUpdate: ViewModifier {
    let backgroundColor: Color
    let foregroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 100, height: 100)
            .background(backgroundColor)
            .foregroundStyle(foregroundColor)
            .clipShape(.rect(cornerRadius: 15))
            .shadow(color: .gray, radius: 15, x: 10, y: 10)
            .padding()
    }
}

extension Image {
    func rectangleIconPatternUpdateFunction(backgroundColor: Color, foregroundColor: Color) -> some View {
        modifier(RectangeIconPatternUpdate(backgroundColor: backgroundColor, foregroundColor: foregroundColor))
    }
}

#Preview {
    RectangleIcon(backgroundColor: .pink, foregroundColor: .green)
}
