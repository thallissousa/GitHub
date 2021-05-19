
import UIKit
import PlaygroundSupport

open class DragDrop: UIViewController, UIGestureRecognizerDelegate { 
    var patternMask: UIImageView = UIImageView()
    var firstFold: UIImageView = UIImageView()
    var numScene: Int = 0
    var imageName: String = ""
    var button: UIButton = UIButton()
    var instructionsText = UILabel()
    
    var vectorImageMove: [String] = ["patternMask", "band", "thirdFold"]
    var vectorImageStatic: [String] =  ["firstFold", "secondFold", "fourthFold", "lastFold"]
    var playgroundPage: PlaygroundPage?
    
    open override func viewDidLoad() {
        self.view.backgroundColor = #colorLiteral(red: 0.921976625919342, green: 0.8940635323524475, blue: 0.8206657767295837, alpha: 1.0)
    
        instructionsText.font = UIFont(name: "Avenir next", size: 28)
        instructionsText.frame = .zero
        instructionsText.numberOfLines = 30
        instructionsText.textAlignment = .center
        instructionsText.textColor = #colorLiteral(red: 0.11764705882352941, green: 0.11764705882352941, blue: 0.11764705882352941, alpha: 1.0)
        instructionsText.text = "Just drag an image on top of the other and then click the Next Step button"

        configurateScene()
        view.addSubview(instructionsText)
        addConstraints()

    }
    
    func addConstraints (){
        instructionsText.translatesAutoresizingMaskIntoConstraints = false
        instructionsText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        instructionsText.topAnchor.constraint(equalTo: view.topAnchor, constant:-120).isActive = true
        instructionsText.widthAnchor.constraint(equalToConstant: 700).isActive = true
        instructionsText.heightAnchor.constraint(equalToConstant: 500).isActive = true
        instructionsText.preferredMaxLayoutWidth = 700
        
    }
    
    open func configurateScene() {
        for subview in view.subviews {
            subview.removeFromSuperview()

        }

        imageName = vectorImageStatic[numScene]
        
        firstFold.image = UIImage(named: vectorImageStatic[numScene])
        if numScene==3{
            patternMask.image = nil
            nextStep()
        } else {
            patternMask.image = UIImage(named: vectorImageMove[numScene])
        }
        if imageName == "secondFold"{
            patternMask.frame = CGRect(x: 500, y: 320, width: 231, height: 218)

        } else if imageName == "fourthFold"{
            patternMask.frame = CGRect(x: 108, y: 100, width: 423, height: 328)
            
        } else {
            patternMask.frame = CGRect(x: 108, y: 170, width: 341, height: 459)
        }
        
        patternMask.contentMode = .scaleAspectFill
        view.addSubview(patternMask)
        patternMask.isUserInteractionEnabled = true
        
        firstFold.frame = CGRect(x: 300, y: 700, width: 306, height: 159)
        firstFold.contentMode = .scaleAspectFill
        view.addSubview(firstFold)
        firstFold.isUserInteractionEnabled = true            
        
        var touch = UIPanGestureRecognizer(target: self, action: #selector(changePhoto))
        touch.delegate = self
        firstFold.addGestureRecognizer(touch)
        patternMask.addGestureRecognizer(touch)
   
        
   
    }
       
    
    open func nextStep() {
        button.backgroundColor = #colorLiteral(red: 0.11764705882352941, green: 0.11764705882352941, blue: 0.11764705882352941, alpha: 1.0)
        button.setTitle("Next Step", for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(updateScene), for: .touchUpInside)
        view.addSubview(button)        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -300).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
 
    
    open func setPage(_ receivedPage: PlaygroundPage) {
       playgroundPage = receivedPage
    }

    
    @objc open func updateScene() {
        numScene += 1
        switch imageName{
        case "firstFold": 
            configurateScene()
        case "secondFold":
            configurateScene()
        case "fourthFold":
            configurateScene()
        case "lastFold":
            guard let page = playgroundPage else { return }
            page.navigateTo(page: .next)
        default:
            print()
        }
        
    }
    
    
    @IBAction open func changePhoto(finger: UIPanGestureRecognizer) {
        let translation = finger.translation(in: self.view)
        if let view = finger.view{
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
            
        }
        
        finger.setTranslation(CGPoint.zero, in: self.view)
        
        if patternMask.frame.intersects(firstFold.frame) {
            nextStep()
        }
        
    }
    
}



