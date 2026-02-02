import SwiftUI

struct StarIcon: View {
    var body: some View {
        Image(systemName: "star.fill")
            .font(.system(size: 20))
            .foregroundColor(.yellow)
    }
}

#Preview {
    StarIcon()
}
