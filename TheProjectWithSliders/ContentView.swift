import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Double.random(in: 0...255)
    @State private var userName = ""
    
    var body: some View {
        VStack {
            Text(lround(sliderValue).formatted())
                .font(.largeTitle)
            ColorSliderView(sliderValue: $sliderValue)
            TextField("Enter your name", text: $userName)
                .textFieldStyle(.roundedBorder)
            Spacer()
        }
        .padding()
    }
}

struct ColorSliderView : View {
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            Text("0").foregroundStyle(.red)
            Slider(value: $sliderValue, in: 0...255, step: 1)
            Text("255").foregroundStyle(.red)
        }
    }
}

#Preview {
    ContentView()
}
