import SwiftUI

struct ColorViewControllerRepresentation: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //  Возвращаем storyboard. Перед этим в Storyboard ID необходимо добавить название класса, а после этого передать его в withIdentifier
        return storyboard.instantiateViewController(withIdentifier: "InitialViewController")
    }
    
    //  Оставляем пустым, так как наш ViewController независим от других
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
//      Указываем с каким UIViewController будем работать, а после добавления автоматически обязательных методов - удаляем эту строку
//    typealias UIViewControllerType = UIViewController
    
    
}

#Preview {
    ColorViewControllerRepresentation()
}
