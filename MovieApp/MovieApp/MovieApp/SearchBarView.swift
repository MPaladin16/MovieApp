//
//  SearchBarView.swift
//  MovieApp
//
//  Created by Five on 10.04.2022..
//
import UIKit
import MovieAppData


class SearchBarView: UIViewController{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let searchView = UIView()
        let img = UIImage(systemName: "magnifyingglass")
        let imageView = UIImageView(image: img)
        searchView.addSubview(imageView)
        
        let textInput = UITextField()
        searchView.addSubview(textInput)
        
        let xButton = UIButton()
        let imgX = UIImage(systemName: "xmark")
        let imageViewX = UIImageView(image: imgX)
        xButton.isHidden = true;
        
        xButton.addSubview(imageViewX)
        searchView.addSubview(xButton)
        
        let cancelButton = UIButton()
        let cancelLabel = UILabel()
        cancelLabel.text = "cancel"
        cancelButton.isHidden = true;
        
        cancelButton.addSubview(cancelLabel)
        searchView.addSubview(cancelButton)
        
        //textInput.delegate = self
        
        func textFieldDidBeginEditing(textField: UITextField) {
            xButton.isHidden = false;
            cancelButton.isHidden = false;
            stackViewMain.isHidden = true;
            
            stackViewMovies.isHidden = false;
           }
        
        func textFieldDidEndEditing(textField: UITextField){
            xButton.isHidden = true;
            cancelButton.isHidden = true;
            stackViewMain.isHidden = false;
            
            stackViewMovies.isHidden = true;
        }
        
        
        
        let scrollView = UIScrollView()
        view.addSubview(searchView)
        view.addSubview(scrollView)
        
        let stackViewMain = UIStackView()
        stackViewMain.axis = .vertical
        stackViewMain.alignment = .fill
        stackViewMain.distribution = .fillEqually
        stackViewMain.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(stackViewMain)
        
        searchView.translatesAutoresizingMaskIntoConstraints = false;
        NSLayoutConstraint.activate([
            searchView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            searchView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            stackViewMain.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            stackViewMain.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        
        let popularView = UIView()
        let freeView = UIView()
        let trendingView = UIView()
        let topRatedView = UIView()
        let upcomingView = UIView()

        stackViewMain.addArrangedSubview(popularView) // 4.
        stackViewMain.addArrangedSubview(freeView)
        stackViewMain.addArrangedSubview(trendingView)
        stackViewMain.addArrangedSubview(topRatedView)
        stackViewMain.addArrangedSubview(upcomingView)
        
        let popularViewTable = UITableView()
        let freeViewTable = UITableView()
        let trendingViewTable = UITableView()
        let topRatedViewTable = UITableView()
        let upcomingViewTable = UITableView()

        popularView.addSubview(popularViewTable)
        freeView.addSubview(freeViewTable)
        trendingView.addSubview(trendingViewTable)
        topRatedView.addSubview(topRatedViewTable)
        upcomingView.addSubview(upcomingViewTable)
        
        
        let movies = Movies.all()
        
        
        
        for movie in movies  {
            if (movie.group.contains(.popular))  {
                let img = UIImage(named: movie.imageUrl)
                let imageView = UIImageView(image: img)
                popularViewTable.addSubview(imageView)
            }
            if (movie.group.contains(.freeToWatch))  {
                let img = UIImage(named: movie.imageUrl)
                let imageView = UIImageView(image: img)
                freeViewTable.addSubview(imageView)
            }
            if (movie.group.contains(.trending))  {
                let img = UIImage(named: movie.imageUrl)
                let imageView = UIImageView(image: img)
                trendingViewTable.addSubview(imageView)
            }
            if (movie.group.contains(.topRated))  {
                let img = UIImage(named: movie.imageUrl)
                let imageView = UIImageView(image: img)
                topRatedViewTable.addSubview(imageView)
            }
            if (movie.group.contains(.upcoming))  {
                let img = UIImage(named: movie.imageUrl)
                let imageView = UIImageView(image: img)
                upcomingViewTable.addSubview(imageView)
            }
            
            
            
            
        }
        
        let stackViewMovies = UIStackView()
        stackViewMovies.axis = .vertical
        stackViewMovies.alignment = .fill
        stackViewMovies.distribution = .fillEqually
        stackViewMovies.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(stackViewMovies)
        
        for movie in movies  {
            if(){
                let MovieView = UIView()
                let movieImg = UIImage()
                let MovieImageView = UIImageView(image: movieImg)
                MovieView.addSubview(MovieImageView)
                
                let MovieTextName = UILabel()
                MovieTextName.text = movie.title
                let MovieTextDesc = UILabel()
                MovieTextDesc.text = movie.description
                MovieView.addSubview(MovieTextName)
                MovieView.addSubview(MovieTextDesc)
                
                MovieImageView.translatesAutoresizingMaskIntoConstraints = false;
                NSLayoutConstraint.activate([
                    MovieImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
                    MovieImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    MovieImageView.widthAnchor.constraint(equalToConstant: view.bounds.width/2)
                ])
                
                

                
                
                
                stackViewMovies.addArrangedSubview(MovieView)
            }
            
        }
        
    }
    
        
    }
    
