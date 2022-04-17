import UIKit
import SnapKit

class SearchBarView: UIView{
    
    var mainView: UIStackView!
    var searchView: UIView!
    var magnify: UIImageView!
    var textFieldInput: UITextField!
    var deleteButton: UIButton!
    var cancelButton: UIButton!
    
    var delegate: SearchBarDelegate!
    var inputDelegate: SearchBarInputDelegate!
    init(){
        super.init(frame: .zero)
        buildView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildView(){
        mainView = UIStackView()
        mainView.spacing = 8
        
        searchView = UIView()
        searchView.backgroundColor = .gray
        searchView.layer.cornerRadius = 12
        
        magnify = UIImageView(image: UIImage(systemName: "magnifyingGlass"))
        
        textFieldInput = UITextField()
        textFieldInput.delegate = self
        textFieldInput.placeholder = "Search..."
        textFieldInput.addTarget(self, action: #selector(Typed), for: .editingChanged)
        
        deleteButton = UIButton()
        deleteButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        deleteButton.isHidden = true
        deleteButton.addTarget(self, action: #selector(deleteClicked), for: .touchUpInside)
        
        cancelButton = UIButton()
        cancelButton.setTitle("cancel", for: .normal)
        cancelButton.setTitleColor(.black, for: .normal)
        cancelButton.isHidden = true
        cancelButton.addTarget(self, action: #selector(cancelClicked), for: .touchUpInside)
        
        addSubview(mainView)
        mainView.addArrangedSubview(searchView)
        searchView.addSubview(magnify)
        searchView.addSubview(textFieldInput)
        searchView.addSubview(deleteButton)
        mainView.addArrangedSubview(cancelButton)
    }
    
    
    
    @objc
    func cancelClicked(){
        cancelButton.isHidden = true
        deleteButton.isHidden = true
        textFieldInput.text = ""
        textFieldInput.endEditing(true)
        delegate?.replaceViewControllers()
        inputDelegate?.inputChanged(newInput: "")
    }
    
    @objc
    func deleteClicked(){
        textFieldInput.text = ""
        inputDelegate?.inputChanged(newInput: "")
    }
    @objc
    func Typed(textFieldInput: UITextField) {
        guard let text = textFieldInput.text else { return }
        inputDelegate?.inputChanged(newInput: text)
    }
    
    func addConstraints(){
        mainView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        searchView.snp.makeConstraints{
            $0.leading.top.equalToSuperview()
            $0.height.equalTo(25)
        }
        magnify.snp.makeConstraints{
            $0.leading.top.equalToSuperview().offset(10)
            $0.height.width.equalTo(20)
        }
        textFieldInput.snp.makeConstraints{
            $0.leading.equalTo(magnify.snp.trailing)
            $0.trailing.equalTo(deleteButton)
            $0.top.equalToSuperview().offset(10)
        }
        deleteButton.snp.makeConstraints{
            $0.trailing.equalToSuperview().offset(-15)
            $0.top.equalToSuperview().offset(10)
            $0.width.height.equalTo(15)
        }
        cancelButton.snp.makeConstraints{
            $0.trailing.equalToSuperview().offset(-5)
        }
        
    }
}

extension SearchBarView: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textFieldInput: UITextField) {
        cancelButton.isHidden = false
        
        delegate?.replaceViewControllers()
    }
    
}
protocol SearchBarInputDelegate{
    func inputChanged(newInput: String)
}

protocol SearchBarDelegate{
    func replaceViewControllers()
}
