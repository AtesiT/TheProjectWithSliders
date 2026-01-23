import SwiftUI

struct SliderView: View {
    let color: Color
    
    
    @Binding var sliderValue: Double
    
    var body: some View {
        
        HStack {
            Text("\(lround(sliderValue).formatted())")
                .foregroundStyle(Color(.white))
                .frame(width: 50)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
            TextField("", value: $sliderValue, format: .number)
                .frame(width: 50)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

#Preview {
//    SliderView(color: .red, sliderValue: $)
}
