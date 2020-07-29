import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5 * sender.alpha
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
            sender.alpha = sender.alpha * 2
        }
        playSound(name: sender.currentTitle!)
    }
    
    func playSound(name: String!) {
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
