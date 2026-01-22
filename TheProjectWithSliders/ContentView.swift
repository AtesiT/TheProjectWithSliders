import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Double.random(in: 0...255)
    @State private var userName = ""
    
    var body: some View {
        VStack {
            Text(lround(sliderValue).formatted())
                .font(.largeTitle)
            UserNameView(name: userName)
            ColorSliderView(sliderValue: $sliderValue)
            TextField("Enter your name", text: $userName)
                .textFieldStyle(.roundedBorder)
            Spacer()
        }
        .padding()
    }
}

struct UserNameView : View {
    let name: String
    
    var body: some View {
        HStack {
            HStack(alignment: .firstTextBaseline) {
                Text("USER NAME: ")
                Text(name)
                    .font(.largeTitle)
            }
            Spacer()
        }
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
