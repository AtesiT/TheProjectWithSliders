import SwiftUI

struct StarIcon: View {
    var body: some View {
        Image(systemName: "star.fill")
            .font(.system(size: 20))
            .initWithStarIconViewModifier()
    }
}

struct StarIconViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundStyle(.cyan)
    }
}

extension View {
    func initWithStarIconViewModifier() -> some View {
        modifier(StarIconViewModifier())
    }
}

#Preview {
    StarIcon()
}
