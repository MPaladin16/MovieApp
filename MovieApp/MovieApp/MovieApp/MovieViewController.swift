//
//  ViewController.swift
//  MovieApp
//
//  Created by Five on 23.03.2022..
//

import UIKit

class MovieViewController: UIViewController {

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
        //view = UIScrollView()
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        let collectionView = UICollectionView(
            frame: CGRect(
                x:0,
                y:0,
                width: view.bounds.width,
                height: view.bounds.height),
            collectionViewLayout: flowLayout)
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        
        let scroll = UIScrollView(frame: CGRect(
            x:0,
            y:0,
            width: view.bounds.width,
            height: view.bounds.height)
        )
        //scroll.delegate = self
        scroll.translatesAutoresizingMaskIntoConstraints = false
    
        view.addSubview(scroll)
        let img = UIImage(named: "deadpoolMovie2.jpg")
        let imgView = UIImageView(image: img)
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        //imgView.heightAnchor()
        
        
        let labelName = UILabel()
        labelName.text = "Deadpool"
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
        
        let imgStar = UIImage(systemName: "flame")
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
        
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        //stackView.distribution = .fillProportionally
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        let stackView2 = UIStackView()
        stackView2.axis = .horizontal
        stackView2.alignment = .fill
        //stackView2.distribution = .fillProportionally
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView2)
        
        
        
        let labelCast = ["Tim Miller", "Rhett Reese", "Paul Wernick", "Ryan Reynolds","Morena Baccarin","T.J.Miller"]
        let labelCastJob = ["Director", "Writer", "Writer", "Screenplay", "Screenplay", "Screenplay"]
        
        var counter = 0
        for word in labelCast {
            counter = counter + 1
            let labelNew = UILabel()
            labelNew.numberOfLines = 0
            labelNew.text = word
            labelNew.font = UIFont(name: "HelveticaNeue-Bold", size: 12.0)
            let labelNew2 = UILabel()
            labelNew2.text = labelCastJob[counter-1]
            labelNew2.font = UIFont(name: "HelveticaNeue", size:12.0)
            let stackViewVer = UIStackView()
            stackViewVer.axis = .vertical
            stackViewVer.alignment = .fill
            stackViewVer.distribution = .fillProportionally
            stackViewVer.translatesAutoresizingMaskIntoConstraints = false
            stackViewVer.addArrangedSubview(labelNew)
            stackViewVer.addArrangedSubview(labelNew2)
            
            if(counter < 4) {
                stackView.addArrangedSubview(stackViewVer)
            }
            else {
                stackView2.addArrangedSubview(stackViewVer)
            }
        }
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 15)
        ])
        NSLayoutConstraint.activate([
            stackView2.topAnchor.constraint(equalTo: view.topAnchor, constant: 450),
            stackView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 5)
        ])
        
        
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
            labelOvrLong.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 5),
            labelOvrLong.topAnchor.constraint(equalTo: view.topAnchor, constant: 335)
        ])
        
    }


}

