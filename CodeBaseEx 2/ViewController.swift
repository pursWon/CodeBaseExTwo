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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setConstraints()
    }
    
    func setConstraints() {
        view.addSubview(rainbowStackView)
        view.addSubview(buttonStackView)
        
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
        rainbowStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -240).isActive = true
        rainbowStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -480).isActive = true
        
        buttonStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        buttonStackView.leadingAnchor.constraint(equalTo: rainbowStackView.trailingAnchor, constant: 20).isActive = true
        buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        buttonStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -840).isActive = true
        
        redView.widthAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 1).isActive = true
        orangeView.widthAnchor.constraint(equalTo: orangeView.heightAnchor, multiplier: 2).isActive = true
        yellowView.widthAnchor.constraint(equalTo: yellowView.heightAnchor, multiplier: 3).isActive = true
        greenView.widthAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 4).isActive = true
        
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
    }
}

