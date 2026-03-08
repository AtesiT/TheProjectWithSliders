import SwiftUI

struct ColorViewControllerRepresentation: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //  Возвращаем storyboard. Перед этим в Storyboard ID необходимо добавить название класса, а после этого передать его в withIdentifier
        return storyboard.instantiateViewController(withIdentifier: "ViewController")
    }
    
    //  Оставляем пустым, так как наш ViewController независим от других
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}

#Preview {
    ColorViewControllerRepresentation()
        .ignoresSafeArea()
}
