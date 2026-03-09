import SwiftUI


struct UITextFieldRepresentation: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextField {
        let toolbar = UIToolbar()
        //  Расширяем toolbar до ширины клавиатуры
        toolbar.sizeToFit()
        
        let textField = UITextField()
        textField.keyboardType = .numberPad
        textField.borderStyle = .roundedRect
        textField.textAlignment = .right
        textField.inputAccessoryView = toolbar
        
        textField.addTarget(
            //  Устанавливаем местонахождение метода, который нужно вызвать - находится в кординаторе
            context.coordinator,
            //  После чего устанавливаем название метода, которое необходимо вызвать
            action: #selector(Coordinator.didTapDone),
            //  Устанавливаем событие, по которому действие завершится (когда прекратили редактирование)
            for: .editingDidEnd
        )
        
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
        
        return textField
    }
    
    //  Используется для обновления значений из SwiftUI в UIKit
    func updateUIView(_ uiView: UITextField, context: Context) {
        //  Обновляем текстовое поле у нашего TextField
        uiView.text = text
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(text: $text)
    }
    
    //  Определяем тип, для которого будет создана UIViewRepresentable. После чего, можем удалить этот метод или закомментировать.
    //  typealias UIViewType = UITextField
}

//  Создаём посредника для передачи данных от UIKit в SwiftUI
extension UITextFieldRepresentation {
    final class Coordinator: NSObject {
        @Binding var text: String
        
        init(text: Binding<String>) {
            self._text = text
        }
        
        @objc func didTapDone(_ sender: UITextField) {
            text = sender.text ?? ""
        }
    }
}

#Preview {
    UITextFieldRepresentation(text: .constant("100"))
}
