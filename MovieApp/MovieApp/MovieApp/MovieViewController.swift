//
//  ViewController.swift
//  MovieApp
//
//  Created by Five on 23.03.2022..
//

import UIKit

class MoveViewController: UIViewController {

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
        
        let img = UIImage(named: "deadpoolMovie2.jpg")
        let imgView = UIImageView(image: img)
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        //imgView.heightAnchor()
        
        
        let labelName = UILabel()
        labelName.text = "Deadpool"
        labelName.textAlignment = .left
        labelName.textColor = .white
        //labelName.font = UIFont.boldSystemFont(ofSize: 22)
        labelName.font = UIFont(name: "HelveticaNeue-Bold", size: 22.0)
        
        let labelYear = UILabel()
        labelYear.text = "(2016)"
        labelYear.textAlignment = .left
        labelYear.textColor = .white
        labelYear.font = UIFont(name: "HelveticaNeue", size: 22.0)
        
        let labelDate = UILabel()
        labelDate.numberOfLines = 0
        labelDate.text = """
        05/02/2016 (US)
        Action, Adventure, Comedy 1h 48m
        """
        labelDate.textAlignment = .left
        labelDate.textColor = .white
        labelDate.font = UIFont(name: "HelveticaNeue", size: 12.0)
        
        let labelUserScore = UILabel()
        labelUserScore.text = "89%   User Score"
        labelUserScore.textAlignment = .left
        labelUserScore.textColor = .white
        labelUserScore.font = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
        
        let imgStar = UIImage(systemName: "star")
        let imageStar = UIImageView(image: imgStar)
        
        let labelOvr = UILabel()
        labelOvr.text = "Overview"
        labelOvr.textAlignment = .left
        labelOvr.textColor = .black
        labelOvr.font = UIFont(name: "HelveticaNeue-Bold", size: 22.0)
        
        let labelOvrLong = UILabel()
        labelOvrLong.text = "A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks."
        labelOvrLong.textAlignment = .left
        labelOvrLong.numberOfLines = 0
        labelOvrLong.textColor = .black
        labelOvrLong.font = UIFont(name: "HelveticaNeue", size: 12.0)
        
        let layoutCastView = UICollectionViewFlowLayout()
        let labelCastView = UICollectionView(frame: CGRect(
            x: 400, y: 20, width: view.bounds.width,
            height: 200), collectionViewLayout: layoutCastView)
        
        view.addSubview(labelCastView)
        
        
        
        
        view.addSubview(imageStar)
        view.addSubview(imgView)
        view.addSubview(labelName)
        view.addSubview(labelYear)
        view.addSubview(labelDate)
        view.addSubview(labelUserScore)
        view.addSubview(labelOvr)
        view.addSubview(labelOvrLong)
        
        imageStar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageStar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageStar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageStar.topAnchor.constraint(equalTo: view.topAnchor, constant: 215)
            
        ])
        
        imgView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imgView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imgView.topAnchor.constraint(equalTo: view.topAnchor),
 //           imgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imgView.heightAnchor.constraint(equalToConstant: 275)
            
        ])
        
        labelName.translatesAutoresizingMaskIntoConstraints=false
        NSLayoutConstraint.activate([
            labelName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelName.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            labelName.topAnchor.constraint(equalTo: view.topAnchor, constant: 165)
            //labelName.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        labelYear.translatesAutoresizingMaskIntoConstraints=false
        NSLayoutConstraint.activate([
            labelYear.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135),
            labelYear.topAnchor.constraint(equalTo: view.topAnchor, constant: 165)
        ])
        labelDate.translatesAutoresizingMaskIntoConstraints=false
        NSLayoutConstraint.activate([
            labelDate.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelDate.topAnchor.constraint(equalTo: view.topAnchor, constant: 200)
        ])
        labelUserScore.translatesAutoresizingMaskIntoConstraints=false
        NSLayoutConstraint.activate([
            labelUserScore.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            labelUserScore.topAnchor.constraint(equalTo: view.topAnchor, constant: 130)
        ])
        labelOvr.translatesAutoresizingMaskIntoConstraints=false
        NSLayoutConstraint.activate([
            labelOvr.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelOvr.topAnchor.constraint(equalTo: view.topAnchor, constant: 300)
        ])
        labelOvrLong.translatesAutoresizingMaskIntoConstraints=false
        NSLayoutConstraint.activate([
            labelOvrLong.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            labelOvrLong.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 15),
            labelOvrLong.topAnchor.constraint(equalTo: view.topAnchor, constant: 335)
        ])
        
    }


}

