import UIKit

// MARK: - Protocol
protocol ViewControllerDelegate: AnyObject {
//    var colorView: UIColor { get set }
    func updateColor(for color: UIColor)
}

// MARK: - Class
final class InitialViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let theVC = segue.destination as? ViewController
        
        theVC?.delegate = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - ViewControllerDelegate
extension InitialViewController : ViewControllerDelegate {
    func updateColor(for color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
