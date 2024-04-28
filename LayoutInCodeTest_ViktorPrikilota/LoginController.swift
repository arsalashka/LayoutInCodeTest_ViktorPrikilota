//
//  ViewController.swift
//  LayoutInCodeTest_ViktorPrikilota
//
//  Created by Arsalan on 26.04.2024.
//

import UIKit
import SnapKit

private enum Constants: String {
    case loginLabelText = "LOGIN /"
    case signupButtonTitle = "Sign Up"
    case usernameViewPlaceholder = "Username"
    case passwordViewPlaceholder = "Password"
    case loginButtonTitle = "Login"
}

final class LoginController: UIViewController {
    private let containerView = UIView()
    private let loginLabel = UILabel()
    private let signupButton = UIButton()
    private let usernameView = TextBlockView()
    private let passwordView = TextBlockView()
    private let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupContainerView()
        setupLoginLabel()
        setupSignupButton()
        setupUsernameView()
        setupPasswordView()
        setupLoginButton()
    }
    
    //  MARK: - Setup Methods
    
    private func setupContainerView() {
        view.addSubview(containerView)
        
        containerView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(45)
            make.center.equalToSuperview()
        }
    }
    
    private func setupLoginLabel() {
        view.addSubview(loginLabel)
        
        loginLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        loginLabel.textColor = UIColor.CustomColors.labelTextColor
        loginLabel.text = Constants.loginLabelText.rawValue
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(containerView.snp.top)
            make.leading.equalTo(containerView.snp.leading)
        }
    }
    
    private func setupSignupButton() {
        view.addSubview(signupButton)
        
        signupButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        signupButton.setTitle(Constants.signupButtonTitle.rawValue, for: .normal)
        signupButton.setTitleColor(.systemGray, for: .normal)
        
        signupButton.snp.makeConstraints { make in
            make.leading.equalTo(loginLabel.snp.trailing).offset(10)
            make.bottomMargin.equalTo(loginLabel.snp.bottom).inset(4)
        }
        signupButton.addTarget(self, action: #selector(signupButtonPressed), for: .touchUpInside)
    }
    
    private func setupUsernameView() {
        view.addSubview(usernameView)
        usernameView.setPlaceHolder(with: Constants.usernameViewPlaceholder.rawValue)
        
        usernameView.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(34)
            make.horizontalEdges.equalTo(containerView.snp.horizontalEdges)
        }
    }
    
    private func setupPasswordView() {
        view.addSubview(passwordView)
        passwordView.setPlaceHolder(with: Constants.passwordViewPlaceholder.rawValue)
        
        passwordView.snp.makeConstraints { make in
            make.top.equalTo(usernameView.snp.bottom).offset(58)
            make.horizontalEdges.equalTo(containerView.snp.horizontalEdges)
        }
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.setTitle(Constants.loginButtonTitle.rawValue, for: .normal)
        loginButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        loginButton.backgroundColor = UIColor.CustomColors.buttonBackgroundColor
        loginButton.layer.cornerRadius = 18
        
        loginButton.snp.makeConstraints { make in
            make.width.equalTo(142)
            make.height.equalTo(44)
            make.top.equalTo(passwordView.snp.bottom).offset(64)
            make.trailing.equalTo(containerView)
            make.bottom.equalTo(containerView)
        }
    }
    
    //  MARK: - Action Methods

    @objc private func signupButtonPressed() {
        let signupVC = SignupController()
        
        signupVC.modalPresentationStyle = .fullScreen
        present(signupVC, animated: true)
    }
}
