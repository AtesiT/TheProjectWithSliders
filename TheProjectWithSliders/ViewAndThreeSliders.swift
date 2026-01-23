import SwiftUI

struct ViewAndThreeSliders: View {
    var body: some View {
        ZStack {
            Color(red: 55/255, green: 150/255, blue: 255/255)
                .ignoresSafeArea()
            VStack {
                ColorView(width: 365, height: 135, color: .red, cornerRadius: 25)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 50, trailing: 0))
                VStack {
                    SliderView(color: .red)
                    SliderView(color: .green)
                    SliderView(color: .blue)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ViewAndThreeSliders()
}
