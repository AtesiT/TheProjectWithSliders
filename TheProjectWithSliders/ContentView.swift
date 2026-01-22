import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            Text(lround(sliderValue).formatted())
                .font(.largeTitle)
            HStack {
                Text("0").foregroundStyle(.red)
                Slider(value: $sliderValue, in: 0...255, step: 1)
                Text("255").foregroundStyle(.red)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
