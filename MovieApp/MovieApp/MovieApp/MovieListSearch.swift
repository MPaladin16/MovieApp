import UIKit
import SnapKit
import MovieAppData

class MovieListSearch: UIViewController, SearchBarInputDelegate{
    var collectionViewLayout: UICollectionViewFlowLayout!
    var collectionView: UICollectionView!
    
    var searchBarText = ""
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildViews()
        addConstraints()
        configureCollectionView()
    }
    
    func buildViews(){
        
        collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.scrollDirection = .vertical
        collectionViewLayout.minimumLineSpacing = 15
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.showsVerticalScrollIndicator = false
        
        view.addSubview(collectionView)
    }
    
    func addConstraints(){
        collectionView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(15)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    func configureCollectionView() {
        //ExampleCollectionViewCell, String
        collectionView.register(MovieListSearchCell.self, forCellWithReuseIdentifier: MovieListSearchCell.reuseIdentifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    
    func inputChanged(newInput: String){
        searchBarText = newInput
        
        
        collectionView.reloadData()
    }
    
    //  Resizes collection view cells on rotation
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(
            alongsideTransition: { _ in self.collectionView.collectionViewLayout.invalidateLayout() },
            completion: { _ in }
        )
    }
}

extension MovieListSearch: UICollectionViewDelegate{
    
}

extension MovieListSearch: UICollectionViewDelegateFlowLayout {
    
    //postavlja dimenziju celija
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        
        if UIDevice.current.orientation.isPortrait{
            let itemWidth = collectionView.frame.width - 20
            //        let itemDimension = (collectionViewWidth - 2 * 10) / 3
            let itemHeight = CGFloat(view.frame.height / 3)
            
            return CGSize(width: itemWidth, height: itemHeight)
        }
        else{
            let itemWidth = collectionView.frame.width - 20
            let itemHeight = CGFloat(view.frame.height - 40)
            
            return CGSize(width: itemWidth, height: itemHeight)
        }
    }
}

extension MovieListSearch: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let movies = Movies.all()
        
        return movies.filter({
            if searchBarText.isEmpty{
                return true
            }
            
            return $0.title.lowercased().contains(searchBarText.lowercased())
        }).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieListSearchCell.reuseIdentifier, for: indexPath) as? MovieListSearchCell
        else {
            fatalError()
        }
        let movies = Movies.all()
        
        let movie = movies.filter({
            if searchBarText.isEmpty{
                return true
            }
            
            return $0.title.lowercased().contains(searchBarText.lowercased())
        }).sorted(by: {$0.title > $1.title})[indexPath.row]
        
        cell.set(movie: movie)
        
        return cell
    }
}
