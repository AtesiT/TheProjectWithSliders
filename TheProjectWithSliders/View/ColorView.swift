import SwiftUI

struct ColorView: View {
    let width: CGFloat
    let height: CGFloat
    let color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .foregroundStyle(color)
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    ColorView(width: 100, height: 50, color: .red)
}
