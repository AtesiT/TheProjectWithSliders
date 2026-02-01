import SwiftUI

struct CubeIcon: View {
    let size: CGFloat
    
    var body: some View {
        Image(systemName: "cube")
            .resizable()
            .frame(width: size, height: size)
    }
}

#Preview {
    CubeIcon(size: 64)
}
