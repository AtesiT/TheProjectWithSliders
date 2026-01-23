import SwiftUI

struct CircleIcon: View {
    let size: CGSize
    
    var body: some View {
        Image(systemName: "circle")
            .resizable()
        //    The First Way
            .modifier(CircleViewModifier(size: size))
            .modifier(CircleColorViewModifier(color: .brown))
        Image(systemName: "circle")
            .resizable()
            .colorChange(color: .indigo)
        //  The Second Way
            .frame(size: size)
            
    }
}

struct CircleViewModifier: ViewModifier {
    let size: CGSize
    
    func body(content: Content) -> some View {
        content
            .frame(width: size.width, height: size.height)
    }
}

extension Image {
    func frame(size: CGSize) -> some View {
        modifier(CircleViewModifier(size: size))
    }
}

struct CircleColorViewModifier: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(color)
    }
}

extension Image {
    func colorChange(color: Color) -> some View {
        modifier(CircleColorViewModifier(color: color))
    }
}


#Preview {
    CircleIcon(size: CGSize(width: 250, height: 250))
}
