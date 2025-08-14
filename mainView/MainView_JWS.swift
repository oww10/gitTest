import Foundation
import UIKit


class mainView : UIView{
    
   
    
    let topbarView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    var teamTitle: UILabel = {
            let label = UILabel()
            label.text = "스타터 1조" // 팀 이름 수정
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 30)
            
            return label
        }()
        
        var teamIntroduction: UILabel = {
            let label = UILabel()
            label.text = "팀 소개: iOS를 함께 배우는 팀입니다."//소개글 수정
            label.textAlignment = .left
            
            
            return label
            
        }()
        
        var teamGoals: UILabel = {
            let label = UILabel()
            label.text = "팀 목표: 함께 배우고, 함께 성장한다"//목표글 수정
            
            return label
            
        }()
    
    var teamPromises: UILabel = {
            let label = UILabel()
            label.text =  """
                팀 약속 : 
                서로를 존중하고 믿는다
                모르는 건 함께 배우고, 아는 건 나눈다.
                끝까지 함께 완주한다.
                """ // "팀 약속 수정
            label.numberOfLines = 0 // 여러 줄 사용 코드 추가
            label.lineBreakMode = .byWordWrapping // 단어 단위 줄 바꿈 추가

            return label
            
        }()
    
    private let titleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    
    private let textStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.alignment = .leading
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    
    
    
    var teamMBTI1: UILabel = {
        let label = UILabel()
        label.text = "장우석"
        return label
        
    }()
    var teamMBTI2: UILabel = {
        let label = UILabel()
        label.text = "구동현"
        
        return label
        
    }()
    var teamMBTI3: UILabel = {
        let label = UILabel()
        label.text = "변지혜"
        
        return label
        
    }()
    var teamMBTI4: UILabel = {
        let label = UILabel()
        label.text = "team MBTI"
        
        return label
        
    }()
    
    let teamMemberButton1: UIButton = {
        let button = UIButton()
        //let config  = UIImage.SymbolConfiguration(pointSize: 100)
        let image = UIImage(named: "wooseok")
      
         
        
        button.setImage(image, for: .normal)
        button.tag = JWSmainViewController.memberButtonType.memberButton1.rawValue
        
        return button
    }()
    
    
    let teamMemberButton2: UIButton = {
        let button = UIButton()
        //let config  = UIImage.SymbolConfiguration(pointSize: 100)
        let image = UIImage(named: "donghyun")
      
        
        
        button.setImage(image, for: .normal)
        button.tag = JWSmainViewController.memberButtonType.memberButton2.rawValue
        
        return button
    }()
    let teamMemberButton3: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "jihye")
      
     
        button.setImage(image, for: .normal)
        button.tag = JWSmainViewController.memberButtonType.memberButton3.rawValue
        
        return button
    }()
    
    let teamMemberButton4: UIButton = {
        let button = UIButton()
        let config  = UIImage.SymbolConfiguration(pointSize: 100)
        let image = UIImage(systemName: "person.fill",withConfiguration: config)
        
        button.setImage(image, for: .normal)
        
        button.tag = JWSmainViewController.memberButtonType.memberButton4.rawValue
        
        return button
    }()
     
    
    private func createMemberStack(button:UIButton, label:UILabel) -> UIStackView{
        let stackView = UIStackView(arrangedSubviews:  [button,label])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        
        return stackView
    }
    
    private let row1memberStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 80
        
        stackView.alignment = .center
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    private let row2memberStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 80
        
        stackView.alignment = .center
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        // 너무 내려가있는 거 같아서.. 90에서 70으로 수정해봤어요...
        stackView.spacing = 70
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    override init(frame: CGRect ){
        super.init(frame: frame)
        self.backgroundColor = .white
        setUpViews()
        setUpLayer()
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setUpViews(){
        let member1 = createMemberStack(button: teamMemberButton1, label: teamMBTI1)
        let member2 = createMemberStack(button: teamMemberButton2, label: teamMBTI2)
        let member3 = createMemberStack(button: teamMemberButton3, label: teamMBTI3)
       // let member4 = createMemberStack(button: teamMemberButton4, label: teamMBTI4)
        
        
        
        addSubview(mainStackView)
        
        titleStackView.addArrangedSubview(teamTitle)
        
        textStackView.addArrangedSubview(teamIntroduction)
        textStackView.addArrangedSubview(teamGoals)
        textStackView.addArrangedSubview(teamPromises)
        

        mainStackView.addArrangedSubview(titleStackView)
        mainStackView.addArrangedSubview(textStackView)
        mainStackView.addArrangedSubview(row1memberStackView)
        mainStackView.addArrangedSubview(row2memberStackView)
        
        
        row1memberStackView.addArrangedSubview(member1)
        row1memberStackView.addArrangedSubview(member2)
        row2memberStackView.addArrangedSubview(member3)
      //  row2memberStackView.addArrangedSubview(member4)
        
        
        
    }
    
    func setUpLayer(){
        
        
        NSLayoutConstraint.activate([
            
            
            
            
            mainStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
            mainStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            mainStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
         //   textStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 0)
            
            
        ])
    }
    
}


#Preview{
    mainView()
}
