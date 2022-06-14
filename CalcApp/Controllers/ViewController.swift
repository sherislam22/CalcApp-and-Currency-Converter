//
//  ViewController.swift
//  CalcApp
//
//  Created by sher on 6/6/22.
//


import UIKit
import SnapKit
class ViewController: UIViewController {

    var newNumber : Double = 0
    var previousNumber : Double = 0
    var performingMath = false
    var operation = ""
    //MARK: BUTTONS
    private lazy var buttonDelete: UIButton = {
        let view = UIButton()
        
        view.setTitle("C", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonDalite")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var buttonSkobka: UIButton = {
        let view = UIButton()
        view.setTitle("()", for: .normal)
        view.setTitleColor(UIColor(named: "c"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var buttonPercent: UIButton = {
        let view = UIButton()
        view.setTitle("%", for: .normal)
        view.setTitleColor(UIColor(named: "c"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var buttonDivision: UIButton = {
        let view = UIButton()
        view.setTitle("÷", for: .normal)
        view.setTitleColor(UIColor(named: "c"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var sevenButton: UIButton = {
        let view = UIButton()
        view.setTitle("7", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var eightButton: UIButton = {
        let view = UIButton()
        view.setTitle("8", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var nineButton: UIButton = {
        let view = UIButton()
        view.setTitle("9", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var multiButton: UIButton = {
        let view = UIButton()
        view.setTitle("×", for: .normal)
        view.setTitleColor(UIColor(named: "c"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var fourButton: UIButton = {
        let view = UIButton()
        view.setTitle("4", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var fifeButton: UIButton = {
        let view = UIButton()
        view.setTitle("5", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var sixButton: UIButton = {
        let view = UIButton()
        view.setTitle("6", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var minusButton: UIButton = {
        let view = UIButton()
        view.setTitle("-", for: .normal)
        view.setTitleColor(UIColor(named: "c"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var oneButton: UIButton = {
        let view = UIButton()
        view.setTitle("1", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var twoButton: UIButton = {
        let view = UIButton()
        view.setTitle("2", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var thirtButton: UIButton = {
        let view = UIButton()
        view.setTitle("3", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var plusButton: UIButton = {
        let view = UIButton()
        view.setTitle("+", for: .normal)
        view.setTitleColor(UIColor(named: "c"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var plusMinusButton: UIButton = {
        let view = UIButton()
        view.setTitle("+/-", for: .normal)
        view.setTitleColor(UIColor(named: "c"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var zeroButton: UIButton = {
        let view = UIButton()
        view.setTitle("0", for: .normal)
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var dotButton: UIButton = {
        let view = UIButton()
        view.setTitle(".", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "buttonsColor")
        view.setTitleColor(UIColor(named: "c"), for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var equelsButton: UIButton = {
        let view = UIButton()
        view.setTitle("=", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor(named: "c")
        view.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
//
    
    //MARK: LABEL
    private lazy var mainLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .right
        view.font = .systemFont(ofSize: 48)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor(named: "buttonColor")
        view.text = "0"
        return view
    }()
    
    private lazy var resultLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .right
        view.font = .systemFont(ofSize: 48)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor(named: "buttonColor")
        view.text = "="
        return view
    }()
    
    //MARK: STACK
    private lazy var mainStack: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.axis = .vertical
        return view
    }()
    private lazy var firstStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        return view
    }()
    private lazy var secondStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        return view
    }()
    private lazy var thirdStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        return view
    }()
    private lazy var fourStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        return view
    }()
    private lazy var fifeStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        return view
    }()
    
    
    //MARK: IMAGE
    private lazy var imageLine: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Line 5")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageTime: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Time Machine")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageRuler: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Ruler")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageRoot: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Root")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageBackspace: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Backspace")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var currencyImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "currency")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: viewdidload
    override func viewDidLoad() {
        super.viewDidLoad()
        targetsFunc()
        SetupLayers()
        numbersTappedFunc()
        view.backgroundColor = UIColor(named: "bgcolor")
        self.mainLabel.text = ""
        self.resultLabel.text = ""
    }
    
    private func SetupLayers() {
        //MARK: ADDVIEW
        view.addSubview(imageLine)
        view.addSubview(imageTime)
        view.addSubview(imageRuler)
        view.addSubview(imageRoot)
        view.addSubview(currencyImage)
        view.addSubview(imageBackspace)
        view.addSubview(mainLabel)
        view.addSubview(resultLabel)
        //MARK: layers
        mainStack.backgroundColor = .clear
        view.addSubview(mainStack)
        mainStack.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(340)
            make.leading.equalTo(view.snp.leadingMargin)
            make.trailing.equalTo(view.snp.trailingMargin)
            make.bottom.equalTo(view.snp.bottomMargin).offset(-20)
        }
        mainStack.spacing = 10
        mainStack.addArrangedSubview(firstStack)
        
        firstStack.addArrangedSubview(buttonDelete)
        firstStack.addArrangedSubview(buttonSkobka)
        firstStack.addArrangedSubview(buttonPercent)
        firstStack.addArrangedSubview(buttonDivision)
        firstStack.spacing = 10
        
        secondStack.addArrangedSubview(sevenButton)
        secondStack.addArrangedSubview(eightButton)
        secondStack.addArrangedSubview(nineButton)
        secondStack.addArrangedSubview(multiButton)
        secondStack.spacing = 10
        
        thirdStack.addArrangedSubview(fourButton)
        thirdStack.addArrangedSubview(fifeButton)
        thirdStack.addArrangedSubview(sixButton)
        thirdStack.addArrangedSubview(minusButton)
        thirdStack.spacing = 10
        
        fourStack.addArrangedSubview(oneButton)
        fourStack.addArrangedSubview(twoButton)
        fourStack.addArrangedSubview(thirtButton)
        fourStack.addArrangedSubview(plusButton)
        fourStack.spacing = 10
        
        fifeStack.addArrangedSubview(plusMinusButton)
        fifeStack.addArrangedSubview(zeroButton)
        fifeStack.addArrangedSubview(dotButton)
        fifeStack.addArrangedSubview(equelsButton)
        fifeStack.spacing = 10
        
        mainStack.addArrangedSubview(firstStack)
        mainStack.addArrangedSubview(secondStack)
        mainStack.addArrangedSubview(thirdStack)
        mainStack.addArrangedSubview(fourStack)
        mainStack.addArrangedSubview(fifeStack)
        
        //========================IMAGE=================
        imageLine.snp.makeConstraints { make in
            make.bottom.equalTo(mainStack.snp.topMargin).offset(-25)
            make.leading.equalTo(mainStack.snp.leading)
            make.trailing.equalTo(mainStack.snp.trailing)
        }
        
        imageTime.snp.makeConstraints { make in
            make.bottom.equalTo(imageLine.snp.topMargin).offset(-20)
            make.leading.equalTo(imageLine.snp.leading)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        imageRuler.snp.makeConstraints { make in
            make.bottom.equalTo(imageLine.snp.topMargin).offset(-20)
            make.leading.equalTo(imageLine.snp.leading).offset(40)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        
        imageRoot.snp.makeConstraints { make in
            make.bottom.equalTo(imageLine.snp.topMargin).offset(-20)
            make.leading.equalTo(imageLine.snp.leading).offset(80)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        currencyImage.snp.makeConstraints { make in
            make.bottom.equalTo(imageLine.snp.topMargin).offset(-20)
            make.leadingMargin.equalTo(imageRoot.snp.trailingMargin).offset(25)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        
        
        imageBackspace.snp.makeConstraints { make in
            make.bottom.equalTo(imageLine.snp.topMargin).offset(-20)
            make.trailing.equalTo(imageLine.snp.trailing)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.topMargin).offset(30)
            make.leading.equalTo(view.snp.leadingMargin).offset(19)
            make.trailing.equalTo(view.snp.trailingMargin).offset(-19)
        }
        
        resultLabel.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.top).offset(100)
            make.leading.equalTo(view.snp.leadingMargin).offset(19)
            make.trailing.equalTo(view.snp.trailingMargin).offset(-22)
        }
        
    }
    
    // MARK: button target func
   
    private func targetsFunc() {
    let rulerTap = UITapGestureRecognizer(target: self, action: #selector(self.rulerTapFunc))
    imageRuler.addGestureRecognizer(rulerTap)
    imageRuler.isUserInteractionEnabled = true
    
    let timeTap = UITapGestureRecognizer(target: self, action: #selector(self.timeTapFunc))
    imageTime.addGestureRecognizer(timeTap)
    imageTime.isUserInteractionEnabled = true
  
    let backspaceTap = UITapGestureRecognizer(target: self, action: #selector(self.backspaceTapFunc))
    imageBackspace.addGestureRecognizer(backspaceTap)
    imageBackspace.isUserInteractionEnabled = true
    
    let rootTap = UITapGestureRecognizer(target: self, action: #selector(self.rootTapFunc))
    imageRoot.addGestureRecognizer(rootTap)
    imageRoot.isUserInteractionEnabled = true
        
    let allDelete = UITapGestureRecognizer(target: self, action: #selector(self.allDeleteFunc))
    buttonDelete.addGestureRecognizer(allDelete)
    buttonDelete.isUserInteractionEnabled = true
    
    let scobka = UITapGestureRecognizer(target: self, action: #selector(self.allDeleteFunc))
    buttonSkobka.addGestureRecognizer(scobka)
    buttonSkobka.isUserInteractionEnabled = true
    
    let percent = UITapGestureRecognizer(target: self, action: #selector(self.allDeleteFunc))
    buttonPercent.addGestureRecognizer(percent)
    buttonPercent.isUserInteractionEnabled = true
        
    let devision = UITapGestureRecognizer(target: self, action: #selector(self.allDeleteFunc))
    buttonDivision.addGestureRecognizer(devision)
    buttonDivision.isUserInteractionEnabled = true
        
    let multiply = UITapGestureRecognizer(target: self, action: #selector(self.allDeleteFunc))
    multiButton.addGestureRecognizer(multiply)
    multiButton.isUserInteractionEnabled = true
        
    let minus = UITapGestureRecognizer(target: self, action: #selector(self.allDeleteFunc))
    minusButton.addGestureRecognizer(minus)
    minusButton.isUserInteractionEnabled = true
        
    let plus = UITapGestureRecognizer(target: self, action: #selector(self.allDeleteFunc))
    plusButton.addGestureRecognizer(plus)
    plusButton.isUserInteractionEnabled = true
        
    let dot = UITapGestureRecognizer(target: self, action: #selector(self.allDeleteFunc))
    dotButton.addGestureRecognizer(dot)
    dotButton.isUserInteractionEnabled = true
        
    let plusORminus = UITapGestureRecognizer(target: self, action: #selector(self.allDeleteFunc))
    plusMinusButton.addGestureRecognizer(plusORminus)
    plusMinusButton.isUserInteractionEnabled = true
        
        let equal = UITapGestureRecognizer(target: self, action: #selector(self.resultFunc))
    equelsButton.addGestureRecognizer(equal)
    equelsButton.isUserInteractionEnabled = true
        let currency = UITapGestureRecognizer(target: self, action: #selector(self.currencyFunc))
    currencyImage.addGestureRecognizer(currency)
    currencyImage.isUserInteractionEnabled = true
    }
    
    //MARK: NumbersTarget
    
    private func numbersTappedFunc() {
        let one = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        oneButton.addGestureRecognizer(one)
        oneButton.isUserInteractionEnabled = true
        let two = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        twoButton.addGestureRecognizer(two)
        twoButton.isUserInteractionEnabled = true
        let three = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        thirtButton.addGestureRecognizer(three)
        thirtButton.isUserInteractionEnabled = true
        let four = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        fourButton.addGestureRecognizer(four)
        fourButton.isUserInteractionEnabled = true
        let five = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        fifeButton.addGestureRecognizer(five)
        fifeButton.isUserInteractionEnabled = true
        let six = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        sixButton.addGestureRecognizer(six)
        sixButton.isUserInteractionEnabled = true
        let seven = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        sevenButton.addGestureRecognizer(seven)
        sevenButton.isUserInteractionEnabled = true
        let eight = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        eightButton.addGestureRecognizer(eight)
        eightButton.isUserInteractionEnabled = true
        let nine = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        nineButton.addGestureRecognizer(nine)
        nineButton.isUserInteractionEnabled = true
        let zero = UITapGestureRecognizer(target: self, action: #selector(numbersTapped))
        zeroButton.addGestureRecognizer(zero)
        zeroButton.isUserInteractionEnabled = true
    }
    
    //MARK: FUNC
    @objc func timeTapFunc () -> Void {
        print("TimeTap")
    }
    
    @objc func rootTapFunc () -> Void {
        print("RootTap")
    }
    
    @objc func rulerTapFunc () -> Void {
        print("RullerTap")
    }
    
    @objc func backspaceTapFunc () -> Void {
        print("backspaceTap")
        mainLabel.text = String((mainLabel.text?.dropLast()) ?? "")
                   resultLabel.text = String((resultLabel.text?.dropLast()) ?? "")
                   newNumber = Double(mainLabel.text ?? "") ?? 0
    }
    //MARK: Navigation 
    @objc func currencyFunc() {
        let nav = UINavigationController()
        nav.viewControllers = [ViewController(), CurrencyViewController()]
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
    
    //MAKR: NumbersButtonTapped
    
    @objc func numbersTapped(sender: UITapGestureRecognizer) {
        print(sender.view?.largeContentTitle ?? 0)
    
        if performingMath == true
        {
            self.mainLabel.text = String(sender.view?.largeContentTitle ?? "")
            self.newNumber = Double(self.mainLabel.text!)!
            self.resultLabel.text = resultLabel.text! + mainLabel.text!
            performingMath = false
            
        }
        else
        {
            self.resultLabel.text = self.resultLabel.text! + String(sender.view?.largeContentTitle ?? "0")
            if let num = Double(mainLabel.text ?? "") {
                newNumber = num
            }
        }
    }
    
    //MARK: Operations
    @objc func allDeleteFunc(sender: UITapGestureRecognizer) {
        print(sender.view?.largeContentTitle ?? "error")
       
        self.previousNumber = Double(resultLabel.text ?? "") ?? 0
//
        if sender.view?.largeContentTitle == "C"  {
            mainLabel.text = "0"
            resultLabel.text = ""
        } else if sender.view?.largeContentTitle == "()" {
            mainLabel.text = "()"
            resultLabel.text = ("(\(resultLabel.text ?? ""))")
        } else if sender.view?.largeContentTitle == "%" {
            mainLabel.text = "%"
            resultLabel.text = (resultLabel.text ?? "") + "%"
        } else if sender.view?.largeContentTitle == "÷" {
            mainLabel.text = "÷"
            resultLabel.text = (resultLabel.text ?? "") + "÷"
        } else if sender.view?.largeContentTitle == "×" {
            mainLabel.text = "×"
            resultLabel.text = (resultLabel.text ?? "") + "×"
        } else if sender.view?.largeContentTitle == "-" {
            mainLabel.text = "-"
            resultLabel.text = (resultLabel.text ?? "") + "-"
        } else if sender.view?.largeContentTitle == "+" {
            mainLabel.text = "+"
            resultLabel.text = (resultLabel.text ?? "") + "+"
        }
        if sender.view?.largeContentTitle == "+/-" {
            mainLabel.text =  "-" + mainLabel.text!
            resultLabel.text = "-" + (resultLabel.text ?? "")
            previousNumber = Double(resultLabel.text ?? "") ?? 0
        }
        if sender.view?.largeContentTitle == "." {
            mainLabel.text = mainLabel.text! + "."
            resultLabel.text = (resultLabel.text ?? "") + "."
            newNumber = Double(mainLabel.text!)!
        }
        self.operation = sender.view?.largeContentTitle ?? ""
        performingMath = true
        
        
    }
    
    @objc func resultFunc(sender: UITapGestureRecognizer) {
        if sender.view?.largeContentTitle == "=" {
            print(operation)
            if operation == "÷" {
                resultLabel.text = String(previousNumber / newNumber)
            } else if operation == "×" {
                resultLabel.text = String(previousNumber * newNumber)
            } else if operation == "-" {
                resultLabel.text = String(previousNumber - newNumber)
            } else if operation == "+" {
                resultLabel.text = String(previousNumber + newNumber)
            }else if operation == "%" {
                resultLabel.text = String((previousNumber * newNumber) / 100)
            } else if operation == "C" {
                mainLabel.text = ""
                previousNumber = 0
                newNumber = 0
                operation = ""
                resultLabel.text = ""
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


