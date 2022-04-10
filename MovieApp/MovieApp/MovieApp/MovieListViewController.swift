
import UIKit

class MovieListViewController: UISearchController {

    var backgroundColor: UIColor
    
    init(backgroundColor: UIColor) {
            self.backgroundColor = backgroundColor
            super.init(nibName: nil, bundle: nil)
    }
    
    convenience init() {
            self.init(backgroundColor: .white)
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let searchBarView = UIView()
        view.addSubview(searchBarView)
        
        searchBarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBarView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchBarView.topAnchor.constraint(equalTo: view.topAnchor)
            
        ])
        
        
        let searchImg = UIImage(named: "searchBar.jpg")
        let searchImgView = UIImageView(image: searchImg)
        searchImgView.contentMode = .scaleAspectFill
        searchImgView.clipsToBounds = true
        
        
        let searchTextField = UITextField()
        searchTextField.placeholder = "Search"
        
        let deleteSearchButton = UIButton()
        let xImage = UIImage(named: "xButton.jpg")
        
        deleteSearchButton.setBackgroundImage(xImage, for: .normal)
        deleteSearchButton.isEnabled = false
        
        let cancelSearchButton = UIButton()
        cancelSearchButton.setTitle("Cancel", for: .normal)
        cancelSearchButton.isEnabled = false
        
       // searchView.addSubview(searchImgView)
        searchBarView.addSubview(searchTextField)
        searchBarView.addSubview(deleteSearchButton)
        searchBarView.addSubview(cancelSearchButton)
        
        //searchImgView.translatesAutoresizingMaskIntoConstraints = false
       // NSLayoutConstraint.activate([
         //   searchImgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        //    searchImgView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        //    searchImgView.topAnchor.constraint(equalTo: view.topAnchor),
 //           imgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
 //           searchImgView.heightAnchor.constraint(equalToConstant: 275)
            
 //       ])
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            searchTextField.topAnchor.constraint(equalTo: view.topAnchor)
            
        ])
        cancelSearchButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cancelSearchButton.leadingAnchor.constraint(equalTo: view.trailingAnchor),
            cancelSearchButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            cancelSearchButton.topAnchor.constraint(equalTo: view.topAnchor)
            
        ])
        deleteSearchButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            deleteSearchButton.leadingAnchor.constraint(equalTo: view.trailingAnchor),
            deleteSearchButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            deleteSearchButton.topAnchor.constraint(equalTo: view.topAnchor)
            
        ])
        
        
        
    }
}
