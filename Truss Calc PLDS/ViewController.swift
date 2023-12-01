//
//  ViewController.swift
//  test 500
//
//  Created by Daan Baanvinger on 23/11/2023.
//

import UIKit
import SwiftUI

extension UIApplication {
    
func endEditing() {
    
    
sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
   



}
}


class ViewController: UIViewController {
    
    @IBOutlet weak var trussLengthTextField: UITextField!
    @IBOutlet weak var angle90TextField: UITextField!
    @IBOutlet weak var angle90DownTextField: UITextField!
    @IBOutlet weak var angleTDownTextField: UITextField!
    @IBOutlet weak var angleBoxTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultLabel2: UILabel!
    @IBOutlet weak var angleTstukTextField: UITextField!
    @IBOutlet weak var angleBoxDownTextField: UITextField!
    @IBOutlet weak var angleFD31TextField: UITextField!
    @IBOutlet weak var angleFD32TextField: UITextField!
    @IBOutlet weak var angleCirkelTextField: UITextField!
    @IBOutlet weak var angle135GradenTextField: UITextField!
    @IBOutlet weak var angleBaseplateTextField: UITextField!
    @IBOutlet weak var angleKruisjeTextField: UITextField!
    @IBOutlet weak var angleTowerTextField: UITextField!
    @IBOutlet weak var angleSpacerTextField: UITextField!
    @IBOutlet weak var angleFD3190TextField: UITextField!
    @IBOutlet weak var angleFD31KruisTextField: UITextField!
    @IBOutlet weak var angleFD32ShiftTextField: UITextField!
  
    
   
    //reset
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        // Reset de waarden van de invoervelden naar 0 of een andere standaardwaarde
        trussLengthTextField.text = "0"
        angle90TextField.text = "0"
        angle90DownTextField.text = "0"
        angleTDownTextField.text = "0"
        angleBoxTextField.text = "0"
        angleTstukTextField.text = "0"
        angleBoxDownTextField.text = "0"
        angleFD31TextField.text = "0"
        angleFD32TextField.text = "0"
        angleCirkelTextField.text = "0"
        angle135GradenTextField.text = "0"
        angleCirkelTextField.text = "0"
        angle135GradenTextField.text = "0"
        angleBaseplateTextField.text = "0"
        angleKruisjeTextField.text = "0"
        angleTowerTextField.text = "0"
        angleSpacerTextField.text = "0"
        angleFD3190TextField.text = "0"
        angleFD31KruisTextField.text = "0"
        angleFD32ShiftTextField.text = "0"
        resultLabel.text = "Pennen"
        resultLabel2.text = "Eitjes"
        
    }
    
    var trussLength: Int = 0
    var angle90Count: Int = 0
    var angle90DownCount: Int = 0
    var angleTDownCount: Int = 0
    var angleBoxCount: Int = 0
    var angleTstukCount: Int = 0
    var angleBoxDownCount: Int = 0
    var angleFD31Count: Int = 0
    var angleFD32Count: Int = 0
    var angleCirkelCount: Int = 0
    var angle135GradenCount: Int = 0
    var angleBaseplateCount: Int = 0
    var angleKruisjeCount: Int = 0
    var angleTowerCount: Int = 0
    var angleSpacerCount: Int = 0
    var angleFD3190Count: Int = 0
    var angleFD31KruisCount: Int = 0
    var angleFD32ShiftCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.addTarget(self, action: #selector(calculateButtonPressed), for: .touchUpInside)
        
    }
    

    
    @objc func calculateButtonPressed() {
        guard let trussLengthText = trussLengthTextField.text, let trussLength = Int(trussLengthText),
              let angle90Text = angle90TextField.text, let angle90Count = Int(angle90Text),
              let angle90DownText = angle90DownTextField.text, let angle90DownCount = Int(angle90DownText),
              let angleTDownText = angleTDownTextField.text, let angleTDownCount = Int(angleTDownText),
              let angleBoxText = angleBoxTextField.text, let angleBoxCount = Int(angleBoxText),
              let angleTstukText = angleTstukTextField.text, let angleTstukCount = Int(angleTstukText),
              let angleBoxDownText = angleBoxDownTextField.text, let angleBoxDownCount = Int(angleBoxDownText),
              let angleFD31Text = angleFD31TextField.text, let angleFD31Count = Int(angleFD31Text),
              let angleFD32Text = angleFD32TextField.text, let angleFD32Count = Int(angleFD32Text),
              let angleCirkelText = angleCirkelTextField.text, let angleCirkelCount = Int(angleCirkelText),
              let angle135GradenText = angle135GradenTextField.text, let angle135GradenCount = Int(angle135GradenText),
              let angleBaseplateText = angleBaseplateTextField.text, let angleBaseplateCount = Int(angleBaseplateText),
              let angleKruisjeText = angleKruisjeTextField.text, let angleKruisjeCount = Int(angleKruisjeText),
              let angleSpacerText = angleSpacerTextField.text, let angleSpacerCount = Int(angleSpacerText),
              let angleTowerText = angleTowerTextField.text, let angleTowerCount = Int(angleTowerText),
              let angleFD3190Text = angleFD3190TextField.text, let angleFD3190Count = Int(angleFD3190Text),
              let angleFD31KruisText = angleFD31KruisTextField.text, let angleFD31KruisCount = Int(angleFD31KruisText),
              let angleFD32ShiftText = angleFD32ShiftTextField.text, let angleFD32ShiftCount = Int(angleFD32ShiftText) else {
            return
        }
        
        
        
        var totalPins = trussLength * 4 // Truss lengte staat voor 4 pinnen
        var totalEggs = trussLength * 0 // Truss lengte staat ook voor 0 eitjes
        
        totalPins += angle90Count * 4 // 90 Graden Hoek staat voor 8 pennen
        totalEggs += angle90Count * 0 // 90 Graden Hoek staat voor  eitjes
        
        totalPins += (angle90DownCount + angleTDownCount) * 16 // 90 Down en T Down staan voor 16 pennen
        totalEggs += (angle90DownCount + angleTDownCount) * 8 // 90 Down en T Down staan voor 8 eitjes
        
        totalPins += angleBoxCount * 24 // Box staat voor 24 pennen
        totalEggs += angleBoxCount * 12 // Box staat voor 12 eitjes
        
        totalPins += angleTstukCount * 16 // Tstuk staat voor 16 pennen
        totalEggs += angleTstukCount * 8 // Tstuk staat voor 8 eitjes
        
        totalPins += angleBoxDownCount * 32 // XDown staat voor 24 pennen
        totalEggs += angleBoxDownCount * 16 // XDown staat voor 12 eitjes
        
        totalPins += angleFD31Count * 2 // FD31 staat voor 2 pennen
        totalEggs += angleFD31Count * 1 // FD31 staat voor 1 eitjes
        
        totalPins += angleFD32Count * 4 // FD31 staat voor 4 pennen
        totalEggs += angleFD32Count * 2 // FD31 staat voor 2 eitjes
        
        totalPins += angleCirkelCount * 4 // Cirkel staat voor 4 pennen
        totalEggs += angleCirkelCount * 0 // Cirkel staat voor 0 eitjes
        
        totalPins += angle135GradenCount * 4 // 135Graden staat voor 4 pennen
        totalEggs += angle135GradenCount * 0 // 135Graden staat voor 0 eitjes
        
        totalPins += angleBaseplateCount * 8 // Baseplate staat voor 4 pennen
        totalEggs += angleBaseplateCount * 4 // Baseplate staat voor 0 eitjes
        
        totalPins += angleKruisjeCount * 4 // Kruisje staat voor 4 pennen
        totalEggs += angleKruisjeCount * 0 // Kruisje staat voor 0 eitjes
        
        totalPins += angleTowerCount * 4 // TrussTower staat voor 4 pennen
        totalEggs += angleTowerCount * 0 // TrussTower staat voor 0 eitjes
        
        totalPins += angleSpacerCount * 1 // Spacer staat voor 1 pennen
        totalEggs += angleSpacerCount * 0 // Spacer staat voor 0 eitjes
        
        totalPins += angleFD3190Count * 2 // FD3190 staat voor 2 pennen
        totalEggs += angleFD3190Count * 1 // FD3190 staat voor 1 eitjes
        
        totalPins += angleFD31KruisCount * 6 // FD31Kruis staat voor 6 pennen
        totalEggs += angleFD31KruisCount * 3 // FD31Kruis staat voor 3 eitjes
        
        totalPins += angleFD32ShiftCount * 2 // FD32Shift staat voor 2 pennen
        totalEggs += angleFD32ShiftCount * 0 // FD32Shift staat voor 0 eitjes
        
        resultLabel.text = "Benodigde Pennen: \(totalPins)"
        resultLabel2.text = "Benodigde Eitjes: \(totalEggs)"
        
    }
}


//timer

