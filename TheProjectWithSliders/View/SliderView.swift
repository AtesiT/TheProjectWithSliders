import SwiftUI

struct SliderView: View {
    let color: Color
    
    @State var sliderValue = Double.random(in: 0...255).rounded()
    
    var body: some View {
        
        HStack {
            Text("\(lround(sliderValue).formatted())")
                .frame(width: 50)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
            TextField("Num", value: $sliderValue, format: .number)
                .frame(width: 50)
                .keyboardType(.decimalPad)
        }
        .padding()
    }
}

#Preview {
    SliderView(color: .red)
}
