import UIKit
import AVFoundation
import AVKit



class ContactViewController: UIViewController {

    @IBOutlet weak var CallButton: UIButton!
    // ... (eventuele andere outlets en functies voor ContactViewController)

    @IBAction func callButtonPressed(_ sender: UIButton) {
        guard let url = URL(string: "tel://0591714314") else {
            // Ongeldige URL
            return
        }

        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:]) { success in
                if !success {
                    // Kon de telefoon-app niet openen
                    let alert = UIAlertController(title: "Fout", message: "Kan de telefoon-app niet openen", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
        } else {
            // Geef een melding weer dat bellen niet wordt ondersteund op dit apparaat
            let alert = UIAlertController(title: "Fout", message: "Bellen wordt niet ondersteund op dit apparaat", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func openEmailButtonPressed(_ sender: UIButton) {
            let email = "Ruben@plds.nl"
            if let url = URL(string: "mailto:\(email)") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        }

    
    }
   

