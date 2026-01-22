import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Double.random(in: 0...255)
    @State private var userName = ""
    @State private var displayedName = ""
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            Text(lround(sliderValue).formatted())
                .font(.largeTitle)
            UserNameView(name: displayedName)
            ColorSliderView(sliderValue: $sliderValue)
            TextField("Enter your name", text: $userName)
                .textFieldStyle(.roundedBorder)
            Button("Done", action: checkUserName)
                .alert("Wrong format", isPresented: $isPresented, actions: {}) {
                    Text("Enter your name")
                }

            Spacer()
        }
        .padding()
    }
    
    private func checkUserName() {
        if let _ = Double(userName) {
            userName = ""
            isPresented.toggle()
            return
        }
        
        displayedName = userName
        userName = ""
    }
}

struct UserNameView : View {
    let name: String
    
    var body: some View {
        HStack {
            HStack(alignment: .firstTextBaseline) {
                Text("USER NAME: ").frame(height: 60)
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
