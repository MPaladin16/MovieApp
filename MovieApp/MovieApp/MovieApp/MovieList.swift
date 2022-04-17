import UIKit
import SnapKit

class MovieList: UIViewController, SearchBarDelegate{
    func replaceViewControllers(){
        if(movieListView.view.isHidden){
            movieListSearch.view.isHidden = true
            movieListView.view.isHidden = false
        }
        else{
            movieListView.view.isHidden = true
            movieListSearch.view.isHidden = false
        }
    }
    
    var mainView: UIView!
    var searchBar: SearchBarView!
    var controllerContainer: UIView!
    var movieListView: MovieListView!
    var movieListSearch: MovieListSearch!
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildViewControllers()
        buildViews()
        addConstraints()
    }
    
    func buildViewControllers(){
        movieListSearch = MovieListSearch()
        movieListSearch.view.isHidden = true

        addChild(movieListSearch)
        
        movieListView = MovieListView()
        
        addChild(movieListView)
        
    }
    
    func buildViews(){
        mainView = UIView()
        searchBar.delegate = self
        searchBar.inputDelegate = movieListSearch
        
        controllerContainer = UIView()
        
        view.addSubview(mainView)
        mainView.addSubview(searchBar)
        mainView.addSubview(controllerContainer)
        controllerContainer.addSubview(movieListView.view)
        controllerContainer.addSubview(movieListSearch.view)
    }
    
    func addConstraints(){
        mainView.snp.makeConstraints{
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
        searchBar.snp.makeConstraints{
            $0.leading.top.equalToSuperview()
            $0.height.equalTo(25)
        }
        controllerContainer.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        movieListView.view.snp.makeConstraints{
            $0.edges.equalTo(controllerContainer)
        }
        movieListSearch.view.snp.makeConstraints{
            $0.edges.equalTo(controllerContainer)
        }
    }
}
