import UIKit

open class ThanksAndGoodbye: UIViewController, UIGestureRecognizerDelegate {
    var youMadeIt = UILabel()
    var instructionsLabel = UILabel()
    var numberOfScreens: Int = 0
    var estelitaAndJosefa: UIImageView = UIImageView()
    
    
    public override func viewDidLoad() {
        let background = UIImage(named: "background2")
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
        estelitaAndJosefa.image = UIImage(named: "EstelitaAndJosefa_mask")
        estelitaAndJosefa.isUserInteractionEnabled = true

        youMadeIt.font = UIFont(name: "Avenir next", size: 33)
        youMadeIt.frame = .zero
        youMadeIt.numberOfLines = 50
        youMadeIt.textAlignment = .center
        youMadeIt.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1.0)
        youMadeIt.text = "YOU MADE IT!"
        
        instructionsLabel.font = UIFont(name: "Avenir next", size: 23)
        instructionsLabel.frame = .zero
        instructionsLabel.numberOfLines = 35
        instructionsLabel.textAlignment = .justified
        instructionsLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1.0)
        instructionsLabel.text = "At this moment, you have faced a small part of the reality that is being experienced by women of periferic regions here in Brazil.\n\nIn the year 2018, the country has back to the world hunger map and, with the covid pandemic, nearly 19 million people are now in a social vulnerability situation, according to WHO.\n\nLike Josefa and Estelita, several families have to reinvent themselves and create alternatives of protection for themselves and their communities. For some, the confection of homemade masks, as we have done in this PlaygroundBook, was the alternative to keep surviving through everything we're facing and and get some source of income.\n\nHope you enjoyed it!"
        
        view.addSubview(youMadeIt)
        view.addSubview(instructionsLabel)
        view.addSubview(estelitaAndJosefa)
        
        addConstraints()
        
    }
    
    func addConstraints (){
        youMadeIt.translatesAutoresizingMaskIntoConstraints = false
        youMadeIt.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        youMadeIt.topAnchor.constraint(equalTo: view.topAnchor, constant:128).isActive = true
        youMadeIt.preferredMaxLayoutWidth = 700
        
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant:200).isActive = true
        instructionsLabel.preferredMaxLayoutWidth = 700
        
        estelitaAndJosefa.translatesAutoresizingMaskIntoConstraints = false
        estelitaAndJosefa.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        estelitaAndJosefa.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250).isActive = true
        estelitaAndJosefa.widthAnchor.constraint(equalToConstant: 628).isActive = true
        estelitaAndJosefa.heightAnchor.constraint(equalToConstant: 366).isActive = true
        
        
    }
}










