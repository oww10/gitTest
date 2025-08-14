import Foundation
import UIKit


class JWSmainViewController:UIViewController{
    
    private let mainView1 = mainView()
    
    enum memberButtonType:Int{
        case memberButton1 = 1
        case memberButton2 = 2
        case memberButton3 = 3
        case memberButton4 = 4
    }
    
    @objc func handleButtonTapped(_ button: UIButton){
        let JWSMemberCard = JWSViewController()
        let DonghyunStoryboard = UIStoryboard(name: "DonghyunMain", bundle: nil)
        let MiniDetailStoryboard = UIStoryboard(name:"MiniDetailMain", bundle: nil)
        let DonghyunCard = DonghyunStoryboard.instantiateViewController(withIdentifier: "DonghyunViewController")
        let MiniDetailCard = MiniDetailStoryboard.instantiateViewController(withIdentifier: "MiniDetailViewController")
         
        if let type = memberButtonType(rawValue: button.tag){
            switch type{
            case .memberButton1:
                print("memberButton1 화면으로 전환")
                navigationController?.pushViewController(JWSMemberCard, animated: true)
            case .memberButton2:
                print("memberButton2 화면으로 전환")
                navigationController?.pushViewController(DonghyunCard, animated: true)
            case .memberButton3:
                print("memberButton3 화면으로 전환")
                navigationController?.pushViewController(MiniDetailCard, animated: true)
                
            case .memberButton4:
                print("memberButton4 화면으로 전환")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainView1)
        
        mainView1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainView1.topAnchor.constraint(equalTo: view.topAnchor),
            mainView1.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        mainView1.teamMemberButton1.addTarget(self, action: #selector(handleButtonTapped), for: .touchUpInside)
        mainView1.teamMemberButton2.addTarget(self, action: #selector(handleButtonTapped), for: .touchUpInside)
        mainView1.teamMemberButton3.addTarget(self, action: #selector(handleButtonTapped), for: .touchUpInside)
        mainView1.teamMemberButton4.addTarget(self, action: #selector(handleButtonTapped), for: .touchUpInside)
        
        
    }
}
