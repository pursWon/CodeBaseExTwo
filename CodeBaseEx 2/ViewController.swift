import UIKit

class ViewController: UIViewController {
    
    let rainbowStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 20
        stackView.axis = .vertical
        stackView.backgroundColor = .darkGray
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 20
        stackView.axis = .horizontal
        stackView.backgroundColor = .gray
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let buttonViewOne: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("버튼1", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    let buttonViewTwo: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("버튼2", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    let buttonViewThree: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("버튼3", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    let centerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemOrange
        return view
    }()
    
    let whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let textStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .cyan
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        stackView.alignment = .leading
        return stackView
    }()
    
    let textLabelOne = UILabel()
    let textLabelTwo = UILabel()
    let textLabelThree = UILabel()
    let textLabelFour = UILabel()
    let textLabelFive = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setConstraints()
        setTextLabel()
    }
    
    func setConstraints() {
        view.addSubview(rainbowStackView)
        view.addSubview(buttonStackView)
        view.addSubview(centerView)
        view.addSubview(textStackView)
        
        centerView.addSubview(whiteView)
        
        let textLabels: [UILabel] = [textLabelOne, textLabelTwo, textLabelThree, textLabelFour, textLabelFive]
        textLabels.forEach {
            textStackView.addArrangedSubview($0)
        }
        
        rainbowStackView.addArrangedSubview(redView)
        rainbowStackView.addArrangedSubview(orangeView)
        rainbowStackView.addArrangedSubview(yellowView)
        rainbowStackView.addArrangedSubview(greenView)
        
        buttonStackView.addArrangedSubview(buttonViewOne)
        buttonStackView.addArrangedSubview(buttonViewTwo)
        buttonStackView.addArrangedSubview(buttonViewThree)
        
        // rainbowStack뷰의 제약조건 설정
        rainbowStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        rainbowStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        rainbowStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -270).isActive = true
        rainbowStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -490).isActive = true
        
        redView.widthAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 1).isActive = true
        orangeView.widthAnchor.constraint(equalTo: orangeView.heightAnchor, multiplier: 2).isActive = true
        yellowView.widthAnchor.constraint(equalTo: yellowView.heightAnchor, multiplier: 3).isActive = true
        greenView.widthAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 4).isActive = true
        
        // buttonStackView의 제약조건 설정
        buttonStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        buttonStackView.leadingAnchor.constraint(equalTo: rainbowStackView.trailingAnchor, constant: 30).isActive = true
        buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        buttonStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -820).isActive = true
        
        // centerView의 제약조건 설정
        centerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        centerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        centerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300).isActive = true
        centerView.topAnchor.constraint(equalTo: rainbowStackView.bottomAnchor, constant: 15).isActive = true
        centerView.widthAnchor.constraint(equalTo: centerView.heightAnchor, multiplier: 1.875).isActive = true
        
        whiteView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        whiteView.centerXAnchor.constraint(equalTo: centerView.centerXAnchor).isActive = true
        whiteView.centerYAnchor.constraint(equalTo: centerView.centerYAnchor).isActive = true
        whiteView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 30).isActive = true
        whiteView.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: -30).isActive = true
        
        // textStackView의 제약조건 설정
        textStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        textStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        textStackView.topAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 30).isActive = true
        textStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        
        // 제약 조건 활성화
        rainbowStackView.translatesAutoresizingMaskIntoConstraints = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonViewOne.translatesAutoresizingMaskIntoConstraints = false
        buttonViewTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonViewThree.translatesAutoresizingMaskIntoConstraints = false
        
        centerView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        textStackView.translatesAutoresizingMaskIntoConstraints = false
        textLabelOne.translatesAutoresizingMaskIntoConstraints = false
        textLabelTwo.translatesAutoresizingMaskIntoConstraints = false
        textLabelThree.translatesAutoresizingMaskIntoConstraints = false
        textLabelFour.translatesAutoresizingMaskIntoConstraints = false
        textLabelFive.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setTextLabel() {
        let textLabels: [UILabel] = [textLabelOne, textLabelTwo, textLabelThree, textLabelFour, textLabelFive]
        textLabels.forEach {
            $0.backgroundColor = .white
        }
        
        textLabelOne.text = "안"
        textLabelTwo.text = "안녕"
        textLabelThree.text = "안녕하"
        textLabelFour.text = "안녕하세"
        textLabelFive.text = "안녕하세요"
        
        textLabelOne.sizeThatFits(CGSize(width: 3, height: 5))
    }
}

