import SwiftUI

struct SliderView: View {
    let color: Color
    @State var sliderValue = Double.random(in: 0...255)
    
    var body: some View {
        Slider(value: $sliderValue, in: 0...255, step: 1)
            .tint(color)
    }
}

#Preview {
    SliderView(color: .red)
}
