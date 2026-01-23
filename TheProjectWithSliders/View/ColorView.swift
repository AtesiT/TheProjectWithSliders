import SwiftUI

struct ColorView: View {
    let width: CGFloat
    let height: CGFloat
    let color: Color
    let cornerRadius: CGFloat
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .foregroundStyle(color)
            .clipShape(.rect(cornerRadius: cornerRadius))
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.white, lineWidth: 5))
    }
}

#Preview {
    ColorView(width: 100, height: 50, color: .red, cornerRadius: 10)
}
