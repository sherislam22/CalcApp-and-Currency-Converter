//
//  CurrenceViewController.swift
//  CalcApp
//
//  Created by sher on 12/6/22.
//

import UIKit
import SnapKit
class CurrencyViewController: UIViewController {
    
    //MARK: Create textFields and Labels
    // labels
    private lazy var titlelabel: UILabel = {
        let label = UILabel()
        label.text = "Convert currency"
        label.font = UIFont(name: "AvenirNext-regular", size: 40)
        label.textColor = .black
        return label
    }()
    private lazy var resultLabel: UILabel = {
        let result = UILabel()
        result.text = ""
        result.textColor = .black
        result.clipsToBounds = true
        result.numberOfLines = 0
        result.font = UIFont(name: "AvenirNext-regular", size: 22)
        return result
    }()
    
    //======================
    //button create
    
    private lazy var convertButton: UIButton = {
        let button = UIButton()
        button.setTitle("Convert", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "AvenirNext-bold", size: 22)
        button.backgroundColor = UIColor(named: "c")
        button.layer.cornerRadius = 12
        return button
    }()
    
    //Amount textfield
   private lazy var amount: UITextField = {
        let text = UITextField()
       text.borderStyle = .roundedRect
       text.placeholder = "amount"
       text.font = UIFont(name: "AvenirNext-regular", size: 22)
       text.backgroundColor = .lightGray
       return text
    }()
    private lazy var from: UITextField = {
        let from = UITextField()
        from.borderStyle = .roundedRect
        from.placeholder = "from"
        from.font = UIFont(name: "AvenirNext-regular", size: 22)
        from.backgroundColor = .lightGray
        return from
    }()
    private lazy var to: UITextField = {
        let to = UITextField()
        to.borderStyle = .roundedRect
        to.placeholder = "to"
        to.font = UIFont(name: "AvenirNext-regular", size: 22)
        to.backgroundColor = .lightGray
        return to
    }()
    //===================================================
    private lazy var textFieldStack: UIStackView = {
        let textFieldStack = UIStackView()
        textFieldStack.axis = .vertical
        textFieldStack.spacing = 10
        textFieldStack.contentMode = .scaleAspectFit
        return textFieldStack
    }()
    
    //===================================================
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "bg")
        setupTextFields()
        titleSetup()
        buttonSetup()
        resultSetup()
    }
    
     func fetchData() {
        let semaphore = DispatchSemaphore (value: 0)

         let url = "https://api.apilayer.com/exchangerates_data/convert?to=\(self.to.text ?? "")&from=\(self.from.text ?? "")&amount=\(self.amount.text ?? "")"
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        request.addValue("9QrAqa5TXizRVLJvAu4EAPQFKgoVddFB", forHTTPHeaderField: "apikey")
         DispatchQueue.global().async {
             
             let task = URLSession.shared.dataTask(with: request) { data, response, error in
               guard let data = data else {
                 print(String(describing: error))
                 return
               }
                 do {
                     let currence = try JSONDecoder().decode(Currence.self, from: data)
                     DispatchQueue.main.async {
                         
                         self.resultLabel.text = "\(currence.query?.amount ?? 0) \(currence.query?.from ?? "") = \(currence.result ?? 0) \(currence.query?.to ?? "")"
                         
                         if self.resultLabel.text == "0  = 0.0 " {
                             self.resultLabel.text = ""
                             self.alerterror()
                         }
                     }
                 } catch let error {
                     print(error)
                     self.alerterror()
                 }
               semaphore.signal()
             }
             task.resume()
             semaphore.wait()
         }
        
    }
    
    private func alerterror() {
        let alert = UIAlertController(title: "Error", message: "Неправильно введенные данные исправьте", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    //MARK: Setups
    //result
    private func resultSetup() {
        view.addSubview(resultLabel)
        resultLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.topMargin.equalTo(titlelabel.snp.bottomMargin).offset(20)
            make.height.equalTo(100)
            make.width.equalTo(200)
        }
        resultLabel.isHidden = true
        resultLabel.textColor = .white
        print(resultLabel.text ?? "")
    }
    
    // button
    private func buttonSetup() {
        view.addSubview(convertButton)
        convertButton.snp.makeConstraints { make in
            make.topMargin.equalTo(textFieldStack.snp.bottomMargin).offset(20)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(70)
            make.width.equalTo(200)
        }
        convertButton.addTarget(self, action: #selector(getData), for: .touchUpInside)
    }
    @objc func getData() {
        resultLabel.isHidden = false
        if to.text == "" || from.text == "" {
            alerterror()
        } else {
            fetchData()
            amount.text = ""
            to.text = ""
            from.text = ""
        }
        
    }
    // title
    private func titleSetup() {
        view.addSubview(titlelabel)
        titlelabel.textColor = .white
        titlelabel.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(view.snp.topMargin).offset(30)
        }
    }
    //textfield
    private func setupTextFields() {
        view.addSubview(textFieldStack)
        textFieldStack.addSubview(amount)
        textFieldStack.addSubview(to)
        textFieldStack.addSubview(from)
        //=======================
        
        textFieldStack.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.centerY.equalTo(view.snp.centerY)
            make.height.equalTo(200)
            make.width.equalTo(200)
        }
        
        amount.snp.makeConstraints { make in
            make.top.equalTo(textFieldStack.snp.topMargin).offset(20)
            make.centerX.equalTo(textFieldStack.snp.centerX)
            make.height.equalTo(40)
            make.width.equalTo(200)
        }
        //=======================
        from.snp.makeConstraints { make in
            make.top.equalTo(amount.snp.bottom).offset(20)
            make.centerX.equalTo(textFieldStack.snp.centerX)
            make.height.equalTo(40)
            make.width.equalTo(200)
        }
        to.snp.makeConstraints { make in
            make.top.equalTo(from.snp.bottom).offset(20)
            make.centerX.equalTo(textFieldStack.snp.centerX)
            make.bottomMargin.equalTo(textFieldStack.snp.bottomMargin).offset(-20)
            make.height.equalTo(40)
            make.width.equalTo(200)
        }
    }
    
    
    
    //MARK: Вскрыть клаву при нажатии на экран
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
}

