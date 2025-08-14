import UIKit


class JWSViewController: UIViewController {
    
    private let memberView = MemberView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(memberView)
        
        memberView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            memberView.topAnchor.constraint(equalTo: view.topAnchor),
            memberView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            memberView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            memberView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        
    }
    
    @objc private func backButtonTapped() {
        print("뒤로가기 작동중")
    }
    
}

