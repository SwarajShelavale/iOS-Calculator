//
//  ViewController.swift
//  Calculator
//
//  Created by Swaraj Shelavale on 27/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Display Screen Label
    let displayScreen = UILabel()
    
    //Digit Buttons
    let buttonZero = UIButton()
    let buttonOne = UIButton()
    let buttonTwo = UIButton()
    let buttonThree = UIButton()
    let buttonFour = UIButton()
    let buttonFive = UIButton()
    let buttonSix = UIButton()
    let buttonSeven = UIButton()
    let buttonEight = UIButton()
    let buttonNine = UIButton()
    
    //Operator Buttons
    let buttonAdd = UIButton()
    let buttonSubtract = UIButton()
    let buttonMultiply = UIButton()
    let buttonDivide = UIButton()
    let buttonModulus = UIButton()
    let buttonEqualTo = UIButton()
    
    
    //AllClear Button
    let buttonAllClear = UIButton()

    //Result
    var firstNumber = 0
    var resultNumber = 0
    var selectedOperation : Operation?
    
    enum Operation {
        case modulus,divide,multiply,subtract,add
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews();
        setupConstraints();
    }

    func setupViews() {
        
        //DisplayScreen
        displayScreen.backgroundColor = .black
        displayScreen.textAlignment = .right
        displayScreen.text = "0"
        displayScreen.textColor = .white
        displayScreen.font = displayScreen.font.withSize(54)
        
        //Digit Buttons
        buttonZero.backgroundColor = .blue
        buttonZero.setTitle("0", for: .normal)
        buttonZero.layer.borderWidth = 0.5
        buttonZero.layer.borderColor = UIColor.black.cgColor
        buttonZero.titleLabel?.font = .systemFont(ofSize: 48)
        buttonZero.setTitleColor(.black, for: .highlighted)
        buttonZero.tag = 0
        buttonZero.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        buttonOne.backgroundColor = .blue
        buttonOne.setTitle("1", for: .normal)
        buttonOne.layer.borderWidth = 0.5
        buttonOne.layer.borderColor = UIColor.black.cgColor
        buttonOne.titleLabel?.font = .systemFont(ofSize: 48)
        buttonOne.setTitleColor(.black, for: .highlighted)
        buttonOne.tag = 1
        buttonOne.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        buttonTwo.backgroundColor = .blue
        buttonTwo.setTitle("2", for: .normal)
        buttonTwo.layer.borderWidth = 0.5
        buttonTwo.layer.borderColor = UIColor.black.cgColor
        buttonTwo.titleLabel?.font = .systemFont(ofSize: 48)
        buttonTwo.setTitleColor(.black, for: .highlighted)
        buttonTwo.tag = 2
        buttonTwo.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        buttonThree.backgroundColor = .blue
        buttonThree.setTitle("3", for: .normal)
        buttonThree.layer.borderWidth = 0.5
        buttonThree.layer.borderColor = UIColor.black.cgColor
        buttonThree.titleLabel?.font = .systemFont(ofSize: 48)
        buttonThree.setTitleColor(.black, for: .highlighted)
        buttonThree.tag = 3
        buttonThree.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        buttonFour.backgroundColor = .blue
        buttonFour.setTitle("4", for: .normal)
        buttonFour.layer.borderWidth = 0.5
        buttonFour.layer.borderColor = UIColor.black.cgColor
        buttonFour.titleLabel?.font = .systemFont(ofSize: 48)
        buttonFour.setTitleColor(.black, for: .highlighted)
        buttonFour.tag = 4
        buttonFour.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        buttonFive.backgroundColor = .blue
        buttonFive.setTitle("5", for: .normal)
        buttonFive.layer.borderWidth = 0.5
        buttonFive.layer.borderColor = UIColor.black.cgColor
        buttonFive.titleLabel?.font = .systemFont(ofSize: 48)
        buttonFive.setTitleColor(.black, for: .highlighted)
        buttonFive.tag  = 5
        buttonFive.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        buttonSix.backgroundColor = .blue
        buttonSix.setTitle("6", for: .normal)
        buttonSix.layer.borderWidth = 0.5
        buttonSix.layer.borderColor = UIColor.black.cgColor
        buttonSix.titleLabel?.font = .systemFont(ofSize: 48)
        buttonSix.setTitleColor(.black, for: .highlighted)
        buttonSix.tag = 6
        buttonSix.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        buttonSeven.backgroundColor = .blue
        buttonSeven.setTitle("7", for: .normal)
        buttonSeven.layer.borderWidth = 0.5
        buttonSeven.layer.borderColor = UIColor.black.cgColor
        buttonSeven.titleLabel?.font = .systemFont(ofSize: 48)
        buttonSeven.setTitleColor(.black, for: .highlighted)
        buttonSeven.tag = 7
        buttonSeven.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        buttonEight.backgroundColor = .blue
        buttonEight.setTitle("8", for: .normal)
        buttonEight.layer.borderWidth = 0.5
        buttonEight.layer.borderColor = UIColor.black.cgColor
        buttonEight.titleLabel?.font = .systemFont(ofSize: 48)
        buttonEight.setTitleColor(.black, for: .highlighted)
        buttonEight.tag = 8
        buttonEight.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        buttonNine.backgroundColor = .blue
        buttonNine.setTitle("9", for: .normal)
        buttonNine.layer.borderWidth = 0.5
        buttonNine.layer.borderColor = UIColor.black.cgColor
        buttonNine.titleLabel?.font = .systemFont(ofSize: 48)
        buttonNine.setTitleColor(.black, for: .highlighted)
        buttonNine.tag = 9
        buttonNine.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        
        //Operator Buttons
        
        buttonModulus.backgroundColor = .darkGray
        buttonModulus.setTitle("%", for: .normal)
        buttonModulus.layer.borderWidth = 0.5
        buttonModulus.layer.borderColor = UIColor.black.cgColor
        buttonModulus.titleLabel?.font = .systemFont(ofSize: 48)
        buttonModulus.setTitleColor(.black, for: .highlighted)
        buttonModulus.tag = 0
        buttonModulus.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
                                
        buttonDivide.backgroundColor = .orange
        buttonDivide.setTitle("÷", for: .normal)
        buttonDivide.layer.borderWidth = 0.5
        buttonDivide.layer.borderColor = UIColor.black.cgColor
        buttonDivide.titleLabel?.font = .systemFont(ofSize: 48)
        buttonDivide.setTitleColor(.black, for: .highlighted)
        buttonDivide.tag = 1
        buttonDivide.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonMultiply.backgroundColor = .orange
        buttonMultiply.setTitle("×", for: .normal)
        buttonMultiply.layer.borderWidth = 0.5
        buttonMultiply.layer.borderColor = UIColor.black.cgColor
        buttonMultiply.titleLabel?.font = .systemFont(ofSize: 48)
        buttonMultiply.setTitleColor(.black, for: .highlighted)
        buttonMultiply.tag = 2
        buttonMultiply.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonSubtract.backgroundColor = .orange
        buttonSubtract.setTitle("-", for: .normal)
        buttonSubtract.layer.borderWidth = 0.5
        buttonSubtract.layer.borderColor = UIColor.black.cgColor
        buttonSubtract.titleLabel?.font = .systemFont(ofSize: 48)
        buttonSubtract.setTitleColor(.black, for: .highlighted)
        buttonSubtract.tag = 3
        buttonSubtract.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonAdd.backgroundColor = .orange
        buttonAdd.setTitle("+", for: .normal)
        buttonAdd.layer.borderWidth = 0.5
        buttonAdd.layer.borderColor = UIColor.black.cgColor
        buttonAdd.titleLabel?.font = .systemFont(ofSize: 48)
        buttonAdd.setTitleColor(.black, for: .highlighted)
        buttonAdd.tag = 4
        buttonAdd.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonEqualTo.backgroundColor = .orange
        buttonEqualTo.setTitle("=", for: .normal)
        buttonEqualTo.layer.borderWidth = 0.5
        buttonEqualTo.layer.borderColor = UIColor.black.cgColor
        buttonEqualTo.titleLabel?.font = .systemFont(ofSize: 48)
        buttonEqualTo.setTitleColor(.black, for: .highlighted)
        buttonEqualTo.tag = 5
        buttonEqualTo.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        //AllClear Button
        buttonAllClear.backgroundColor = .darkGray
        buttonAllClear.setTitle("AC", for: .normal)
        buttonAllClear.layer.borderWidth = 0.5
        buttonAllClear.layer.borderColor = UIColor.black.cgColor
        buttonAllClear.titleLabel?.font = .systemFont(ofSize: 48)
        buttonAllClear.setTitleColor(.black, for: .highlighted)
        buttonAllClear.addTarget(self, action: #selector(buttonAllClearPressed), for: .touchUpInside)
        
    }

    func setupConstraints() {
        
        //StackViews
        let calculatorStackView = UIStackView()
        let row1StackView = UIStackView(arrangedSubviews: [buttonModulus,buttonAllClear,buttonDivide])
        let row2StackView = UIStackView(arrangedSubviews: [buttonSeven,buttonEight,buttonNine,buttonMultiply])
        let row3StackView = UIStackView(arrangedSubviews: [buttonFour,buttonFive,buttonSix,buttonSubtract])
        let row4StackView = UIStackView(arrangedSubviews: [buttonOne,buttonTwo,buttonThree,buttonAdd])
        let row5StackView = UIStackView(arrangedSubviews: [buttonZero,buttonEqualTo])
        
        calculatorStackView.translatesAutoresizingMaskIntoConstraints =  false ;
        
        row1StackView.axis = .horizontal
        row1StackView.distribution = .fillProportionally
        row2StackView.axis = .horizontal
        row2StackView.distribution = .fillEqually
        row3StackView.axis = .horizontal
        row3StackView.distribution = .fillEqually
        row4StackView.axis = .horizontal
        row4StackView.distribution = .fillEqually
        row5StackView.axis = .horizontal
        row5StackView.distribution = .fillProportionally
        calculatorStackView.axis = .vertical
        calculatorStackView.distribution = .fillEqually
        self.view.addSubview(calculatorStackView)
        
        NSLayoutConstraint.activate([
            buttonModulus.widthAnchor .constraint(equalTo: row1StackView.widthAnchor, multiplier: 0.25),
            buttonAllClear.widthAnchor .constraint(equalTo: row1StackView.widthAnchor, multiplier: 0.50),
            buttonDivide.widthAnchor .constraint(equalTo: row1StackView.widthAnchor, multiplier: 0.25)
        ])
        
        NSLayoutConstraint.activate([
            buttonZero.widthAnchor .constraint(equalTo: row5StackView.widthAnchor, multiplier: 0.75),
            buttonEqualTo.widthAnchor .constraint(equalTo: row5StackView.widthAnchor, multiplier: 0.25)
        ])
        
        NSLayoutConstraint.activate([
            calculatorStackView.topAnchor .constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            calculatorStackView.leadingAnchor .constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            calculatorStackView.trailingAnchor .constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            calculatorStackView.bottomAnchor .constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ]);
        
        calculatorStackView.addArrangedSubview(displayScreen)
        calculatorStackView.addArrangedSubview(row1StackView)
        calculatorStackView.addArrangedSubview(row2StackView)
        calculatorStackView.addArrangedSubview(row3StackView)
        calculatorStackView.addArrangedSubview(row4StackView)
        calculatorStackView.addArrangedSubview(row5StackView)
         
    }
   
    //All Clear Button Pressed
    @objc func buttonAllClearPressed () {
        displayScreen.text = "0"
        selectedOperation = nil
        firstNumber = 0
    }
    
    //Digit Button Pressed
    @objc func digitPressed (_ sender :  UIButton) {
        let tag = sender.tag
        
        if displayScreen.text == "0" {
            displayScreen.text = "\(tag)"
        }
        else if  let text = displayScreen.text{
            displayScreen.text = "\(text)\(tag)"
    
        }
    }
    
    //Operation Button Pressed
    @objc func operationPressed (_ sender :  UIButton) {
        let tag = sender.tag
        
        if let text = displayScreen.text , let value = Int(text) , firstNumber == 0 {
            firstNumber = value
            displayScreen.text = "0"
        }
        
        if tag == 0 {
            selectedOperation = .modulus
        }
        else if tag == 1 {
            selectedOperation = .divide
        }
        else if tag == 2 {
            selectedOperation = .multiply
        }
        else if tag == 3 {
            selectedOperation = .subtract
        }
        else if tag == 4 {
            selectedOperation = .add
        }
        else if tag == 5 {
            var secondNumber = 0
            if let text = displayScreen.text , let value = Int(text) {
                secondNumber = value ;
            }
            if let operation = selectedOperation {
                
                switch operation {
                case .modulus:
                    let result = firstNumber % secondNumber
                    displayScreen.text = "\(result)"
                    break
                case .divide:
                    let result = firstNumber / secondNumber
                    displayScreen.text = "\(result)"
                    break
                case .multiply:
                    let result = firstNumber * secondNumber
                    displayScreen.text = "\(result)"
                    break
                case .subtract:
                    let result = firstNumber - secondNumber
                    displayScreen.text = "\(result)"
                    break
                case .add:
                    let result = firstNumber + secondNumber
                    displayScreen.text = "\(result)"
                    break
                }
            }
        }
    }

}
