import UIKit
import PlaygroundSupport

class HomeSubView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class HomeViewController: UIViewController {
    
    override func loadView() {
        print("LOAD VIEW")
        let view = UIView()
        
        let subView = UIView()
        subView.backgroundColor = .blue
        subView.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        
        view.addSubview(subView)
        
        let yellowSubView = HomeSubView(frame: CGRect(x: 125, y: 125, width: 100, height: 100))
        view.addSubview(yellowSubView)

        self.view = view
    }
    
    override func viewDidLoad() {
        print("DID LOAD")
    }
}

let homeViewController = HomeViewController()
PlaygroundPage.current.liveView = homeViewController
