import SwiftUI

struct CubeIcon: View {
    
    var body: some View {
        Image(systemName: "cube")
            .resizable()
            .fastSettingView()
    }
}

struct CubeViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.orange)
            .frame(width: 64, height: 64)
    }
}

extension View {
    func fastSettingView() -> some View {
        modifier(CubeViewModifier())
    }
}

#Preview {
    CubeIcon()
}
