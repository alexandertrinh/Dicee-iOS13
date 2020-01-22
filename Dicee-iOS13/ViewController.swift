
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    let diceArr = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roll_dice()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        roll_dice()
    }
    
    func roll_dice() {
        diceImage1.image = diceArr.randomElement()
        diceImage2.image = diceArr.randomElement()
    }
}

