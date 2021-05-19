import UIKit
import PlaygroundSupport

open class Main: UIViewController, UIGestureRecognizerDelegate {
    var titleEstelitaAndJosefa = UILabel()
    var instructionsLabel = UILabel()
    var numberOfScreens: Int = 0
    var vectorImages: [String] = ["womens", "mask1", "mask2"]
    var estelitaAndJosefa: UIImageView = UIImageView()
    var playgroundPage: PlaygroundPage?
    
    public override func viewDidLoad() {
        let background = UIImage(named: "background")
        self.view.backgroundColor = #colorLiteral(red: 0.8988514542579651, green: 0.8705711960792542, blue: 0.7787767648696899, alpha: 1.0)
        let backgroundImage = UIImageView (image: background) 
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.frame = CGRect(x: 108, y: 20, width: 341, height: 459)
        view.addSubview(backgroundImage)
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backgroundImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        
        var touch = UITapGestureRecognizer(target: self, action: #selector(updatesTheNumberOfScreens))
        touch.delegate = self
        
        
        estelitaAndJosefa.image = UIImage(named: "EstelitaAndJosefa")
        estelitaAndJosefa.isUserInteractionEnabled = true
        estelitaAndJosefa.contentMode = .scaleAspectFit 
        estelitaAndJosefa.addGestureRecognizer(touch)
        
        titleEstelitaAndJosefa.font = UIFont(name: "Avenir next", size: 33)
        titleEstelitaAndJosefa.frame = .zero
        titleEstelitaAndJosefa.numberOfLines = 50
        titleEstelitaAndJosefa.textAlignment = .center
        titleEstelitaAndJosefa.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1.0)
        titleEstelitaAndJosefa.text = "Estelita & Josefa"
        
        instructionsLabel.font = UIFont(name: "Avenir next", size: 23)
        instructionsLabel.frame = .zero
        instructionsLabel.numberOfLines = 100
        instructionsLabel.textAlignment = .justified
        instructionsLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1.0)
        instructionsLabel.text = "These are Estelita and Josefa, mother and daughter.\nThey live together in a small town in Bahia called Macarani, and have always worked doing small favors for their community.\n\nHowever, with the COVID-19 pandemic, allied with the economic crises that Brazil is facing, they've suddenly found themselves without a source of income, and started going through many difficulties. \n\nSo, they found a way to protect their neighbours and, at the same time, get financial support during the lockdown period: making COVID masks at an accessible price! \n\nToday, they are going to show you how easy it is to protect yourself and the ones you love by creating a simple mask.\n\nClick on their image to continue!"
        
        
        view.addSubview(titleEstelitaAndJosefa)
        view.addSubview(estelitaAndJosefa)
        view.addSubview(instructionsLabel)
        addConstraints()
        
    }
    
    open func setPage(_ receivedPage: PlaygroundPage) {
       playgroundPage = receivedPage
    }
    
    func addConstraints (){
        titleEstelitaAndJosefa.translatesAutoresizingMaskIntoConstraints = false
        titleEstelitaAndJosefa.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleEstelitaAndJosefa.topAnchor.constraint(equalTo: view.topAnchor, constant:-100).isActive = true
        titleEstelitaAndJosefa.widthAnchor.constraint(equalToConstant: 700).isActive = true
        titleEstelitaAndJosefa.heightAnchor.constraint(equalToConstant: 500).isActive = true
        titleEstelitaAndJosefa.preferredMaxLayoutWidth = 700
        
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant:200).isActive = true
        instructionsLabel.widthAnchor.constraint(equalToConstant: 700).isActive = true
        instructionsLabel.heightAnchor.constraint(equalToConstant: 550).isActive = true
        instructionsLabel.preferredMaxLayoutWidth = 700
        
        estelitaAndJosefa.translatesAutoresizingMaskIntoConstraints = false
        estelitaAndJosefa.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        estelitaAndJosefa.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 450).isActive = true
        estelitaAndJosefa.widthAnchor.constraint(equalToConstant: 400).isActive = true
        estelitaAndJosefa.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        
        
    }
    
    @objc func updatesTheNumberOfScreens(){
        guard let page = playgroundPage else { return }
        page.navigateTo(page: .next)
    }
}
