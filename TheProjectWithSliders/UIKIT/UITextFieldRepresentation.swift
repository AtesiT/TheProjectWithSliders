import SwiftUI


struct UITextFieldRepresentation: UIViewRepresentable {
    func makeUIView(context: Context) -> UITextField {
        let toolbar = UIToolbar()
        //  Расширяем toolbar до ширины клавиатуры
        toolbar.sizeToFit()
        
        let textField = UITextField()
        textField.keyboardType = .numberPad
        textField.borderStyle = .roundedRect
        textField.textAlignment = .right
        textField.inputAccessoryView = toolbar
        
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            //  Target - местоположение метода, который вызывается по нажатию на кнопку
            target: textField,
            //  Указываем, что нам необходимо вызвать
            action: #selector(textField.resignFirstResponder)
        )
        
        //  Создаём пустое пространство
        let flexibleSpace = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        
        //  Добавляем в toolBar
        toolbar.items = [flexibleSpace, doneButton]
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
