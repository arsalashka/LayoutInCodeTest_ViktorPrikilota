//
//  ViewController.swift
//  LayoutInCodeTest_ViktorPrikilota
//
//  Created by Arsalan on 26.04.2024.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    private let containerView = UIView()
    private let loginLabel = UILabel()
    private let signupButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupContainerView()
        setupLoginLabel()
        setupSignupButton()
    }
    
    private func setupContainerView() {
        view.addSubview(containerView)
        
        containerView.backgroundColor = .lightGray
        
        containerView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(45)
            make.trailing.equalToSuperview().inset(45)
            make.top.equalToSuperview().inset(238)
            make.bottom.equalToSuperview().inset(269)
        }
    }
    
    private func setupLoginLabel() {
        view.addSubview(loginLabel)
        
        loginLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        loginLabel.text = "LOGIN /"
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(containerView.snp.top)
            make.leading.equalTo(containerView.snp.leading)
        }
    }
    
    private func setupSignupButton() {
        view.addSubview(signupButton)
        
//        signupButton.backgroundColor = .blue
        
        signupButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        signupButton.setTitle("Sign Up", for: .normal)
        signupButton.setTitleColor(.gray, for: .normal)
        
     
        signupButton.snp.makeConstraints { make in
            make.leading.equalTo(loginLabel.snp.trailing).offset(10)
            make.bottomMargin.equalTo(loginLabel.snp.bottom).inset(4)
        }
        
        signupButton.addAction(UIAction { [weak self] _ in
            let signupVC = UIViewController()
            
            signupVC.view.backgroundColor = .purple
            signupVC.modalPresentationStyle = .fullScreen
            
            self?.present(signupVC, animated: true)
        }, for: .touchUpInside)
    }
}
