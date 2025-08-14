import Foundation
import UIKit


class MemberView: UIView {
    
    private let topbarView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    
    private let MemberImageView: UIImageView = {
        var imageView = UIImageView()
        
        
        if let image = UIImage(named: "wooseok") {
            imageView.image = image
            
        } else {
            imageView.backgroundColor = .lightGray
        }
        
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        
        imageView.layer.cornerRadius = 10
        return imageView
        
    }()
    
    private var memberInfoLabelView: UITextView = {
        let textView = UITextView()
        
        
        
        return textView
    }()
    
    let infoStacakView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
        
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "장우석"
        label.font = UIFont(name: "OTHakgyoansimYeohaengR", size: 20)
        
        
        return label
    }()
    
    let mbtiLabel: UILabel = {
        let label = UILabel()
        label.text = "MBTI: INFJ"
        label.font = UIFont(name: "NanumHumanOTFRegular", size: 18)
        
        return label
    }()
    
    let memberInfotext: UILabel = {
        let textbox = UILabel()
        
        textbox.text = "자신의 장점과 협업스타일"
        textbox.textAlignment = .left
        textbox.font = UIFont(name:"NanumHumanOTFBold", size: 20)
        textbox.numberOfLines = 0
        
        return textbox
    }()
    private let githubButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Git: https://github.com/oww10", for: .normal)
        button.titleLabel?.font = UIFont(name: "NanumHumanRegular",size: 18)
        button.tag = 0
        return button
    }()
    
    private let blogButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Blog: https://velog.io/@oow/posts", for: .normal)
        button.titleLabel?.font = UIFont(name: "NanumHumanRegular",size: 18)
        
        button.tag = 1
        return button
    }()
    private let urlStrings = [
        "https://github.com/oww10",
        "https://velog.io/@oow/posts"
    ]
    private func setupActions() {
        githubButton.addTarget(self, action: #selector(openURLInBrowser), for: .touchUpInside)
        blogButton.addTarget(self, action: #selector(openURLInBrowser), for: .touchUpInside)
    }
    @objc private func openURLInBrowser(_ sender: UIButton) {
        let urlString = urlStrings[sender.tag]
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
    
    
    let advantageLabel: UILabel = {
        let label = UILabel()
        label.text = "저는 새로운 기술을 배우는 것에 대한 두려움이 없으며, 팀원들과의 소통을 통해 문제를 해결하는 것을 중요하게 생각합니다. 문제 발생 시에는 적극적으로 의견을 제시하고 해결책을 찾아나가는 협업 스타일을 가지고 있습니다."
        label.font = .systemFont(ofSize: 16)
        label.textColor = .darkGray
        label.textAlignment = .left
        label.numberOfLines = 0
        
        return label
    }()
    
    private let textContainerView: UIView = {
        let view = UIView()
        
        
        return view
    }()
    
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
        setupLayout()
        setupActions()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView(){
        addSubview(topbarView)
        addSubview(MemberImageView)
        addSubview(textContainerView)
        addSubview(infoStacakView)
        
        
        textContainerView.addSubview(memberInfotext)
        textContainerView.addSubview(memberInfoLabelView)
        textContainerView.addSubview(advantageLabel)
        
        infoStacakView.addArrangedSubview(nameLabel)
        infoStacakView.addArrangedSubview(mbtiLabel)
        infoStacakView.addArrangedSubview(githubButton)
        infoStacakView.addArrangedSubview(blogButton)
        
    }
    
    
    private func setupLayout(){
        MemberImageView.translatesAutoresizingMaskIntoConstraints = false
        memberInfoLabelView.translatesAutoresizingMaskIntoConstraints = false
        textContainerView.translatesAutoresizingMaskIntoConstraints = false
        topbarView.translatesAutoresizingMaskIntoConstraints = false
        memberInfotext.translatesAutoresizingMaskIntoConstraints = false
        advantageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            topbarView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            topbarView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topbarView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topbarView.heightAnchor.constraint(equalToConstant: 0),
            
            
            MemberImageView.topAnchor.constraint(equalTo: topbarView.bottomAnchor, constant: 20),
            MemberImageView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            MemberImageView.widthAnchor.constraint(equalToConstant: 300),
            MemberImageView.heightAnchor.constraint(equalToConstant: 300),
            
            infoStacakView.topAnchor.constraint(equalTo: MemberImageView.bottomAnchor,constant: 20),
            infoStacakView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            
            textContainerView.topAnchor.constraint(equalTo: MemberImageView.bottomAnchor, constant: 30),

            
            
            
            memberInfotext.topAnchor.constraint(equalTo: infoStacakView.bottomAnchor,constant: 30),
            memberInfotext.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),

            memberInfotext.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            
            advantageLabel.topAnchor.constraint(equalTo: memberInfotext.bottomAnchor, constant: 10),
            advantageLabel.leadingAnchor.constraint(equalTo: memberInfotext.leadingAnchor, constant: 0),
            advantageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30)
            
            
        ])
        
    }
    
    
}


#Preview {
    MemberView()
}
