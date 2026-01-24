import SwiftUI

struct ViewAndThreeSliders: View {
    
    @State private var redValue = Double.random(in: 0...255).rounded()
    @State private var greenValue = Double.random(in: 0...255).rounded()
    @State private var blueValue = Double.random(in: 0...255).rounded()
    
    var colorView: Color { Color(red: redValue/255, green: greenValue/255, blue: blueValue/255) }
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        ZStack {
            Color(red: 55/255, green: 150/255, blue: 255/255)
                .ignoresSafeArea()
            VStack {
                ColorView(width: 365, height: 135, color: colorView, cornerRadius: 25)
                    .frame(height: 200)
                VStack {
                    SliderView(color: .red, sliderValue: $redValue)
                    SliderView(color: .green, sliderValue: $greenValue)
                    SliderView(color: .blue, sliderValue: $blueValue)
                }
                //  Свойство isFocuced принимает значение true, благодаря тому, что отслеживает клавиатуру. После нажатия добавленной нами кнопки, клавиатура закрывается.
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ViewAndThreeSliders()
}
