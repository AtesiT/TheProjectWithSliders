import SwiftUI

struct SliderView: View {
    let color: Color
    
    @Binding var sliderValue: Double
    @State private var text = ""
    @State private var showAlert = false
    
    var body: some View {
        
        HStack {
            Text("\(lround(sliderValue).formatted())")
                .foregroundStyle(Color(.white))
                .frame(width: 50, alignment: .leading)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { _, newValue in
                    text = newValue.formatted()
                }
            TextFieldView(text: $text, action: checkValue)
                .alert("Wrong format", isPresented: $showAlert, actions: {}) {
                    Text("Please enter a value from 0 to 255")
                }
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .onAppear {
            text = sliderValue.formatted()
        }
    }
    
    private func checkValue() {
        if let sliderValue = Double(text), (0...255).contains(sliderValue) {
            self.sliderValue = sliderValue
        } else {
            showAlert.toggle()
            sliderValue = 0
            text = "0"
        }
    }
}

#Preview {
//    SliderView(color: .red, sliderValue: $)
}
