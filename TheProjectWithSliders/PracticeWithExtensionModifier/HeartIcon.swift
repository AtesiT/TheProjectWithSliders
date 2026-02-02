import SwiftUI

struct HeartIcon: View {
    var body: some View {
        Image(systemName: "heart")
    }
}

struct HeartViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.red)
            .font(.system(size: 50))
            .padding(10)
    }
}

extension View {
    func heartStyle() -> some View {
        modifier(HeartViewModifier())
    }
}

#Preview {
    HeartIcon().heartStyle()
}
