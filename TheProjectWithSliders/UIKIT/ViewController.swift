import UIKit

final class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    var redSliderValue = 0
    var greenSliderValue = 0
    var blueSliderValue = 0
    
    weak var delegate: ViewControllerDelegate?

    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        initialAndRangeOfTumblers()
        redTextField.delegate = self
        greenTextField.delegate = self
        blueTextField.delegate = self
    }
    
    // MARK: - Funcs
    @IBAction func buttonTapped() {
        dismiss(animated: true)
    }
    
    
    override func viewWillLayoutSubviews() {
        colorView.layer.cornerRadius = colorView.frame.height / 4
    }
    
    private func initialAndRangeOfTumblers() {
        colorView.backgroundColor = .black
        
        redSlider.minimumValue = 0
        greenSlider.minimumValue = 0
        blueSlider.minimumValue = 0
        
        redSlider.maximumValue = 255
        greenSlider.maximumValue = 255
        blueSlider.maximumValue = 255
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        
    }
    
    private func updateLabels() {
        redLabel.text = String(Int(redSlider.value))
        greenLabel.text = String(Int(greenSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
    }

    @IBAction func changeColorSlider() {
        let currentColor = UIColor(
            red: CGFloat(redSlider.value) / 255,
            green: CGFloat(greenSlider.value) / 255,
            blue: CGFloat(blueSlider.value) / 255,
            alpha: CGFloat(1))
        
        colorView.backgroundColor = currentColor
        delegate?.updateColor(for: currentColor)
        updateLabels()
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        let redValue = Float(redTextField.text ?? "0") ?? 0
        let greenValue = Float(greenTextField.text ?? "0") ?? 0
        let blueValue = Float(blueTextField.text ?? "0") ?? 0
        
        
        redSlider.value = redValue
        greenSlider.value = greenValue
        blueSlider.value = blueValue
        
        changeColorSlider()
    }
}
