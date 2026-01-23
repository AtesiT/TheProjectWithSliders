import SwiftUI

struct TableImageView: View {
    let size: CGSize
    
    var body: some View {
        Image(systemName: "table")
            .resizable()
            .frame(size: size)
            .background(Color(white: 0.9))
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red, lineWidth: 10))
            .foregroundStyle(.red)
    }
}

struct FrameViewModifier: ViewModifier {
    let size: CGSize
    
    func body(content: Content) -> some View {
        content
            .frame(width: size.width, height: size.height)
    }
}

extension View {
    func frame(size: CGSize) -> some View {
        modifier(FrameViewModifier(size: size))
    }
}

#Preview {
    TableImageView(size: CGSize(width: 250, height: 250))
}
