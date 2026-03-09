import SwiftUI


struct UITextFieldRepresentation: UIViewRepresentable {
    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField()
        textField.keyboardType = .numberPad
        textField.borderStyle = .roundedRect
        textField.textAlignment = .right
        return textField
    }
    
    //  Используется для обновления значений из SwiftUI в UIKit
    func updateUIView(_ uiView: UITextField, context: Context) {
        
    }
    
    
    
    //  Определяем тип, для которого будет создана UIViewRepresentable. После чего, можем удалить этот метод или закомментировать.
    //  typealias UIViewType = UITextField
    
    
}

#Preview {
    UITextFieldRepresentation()
}
