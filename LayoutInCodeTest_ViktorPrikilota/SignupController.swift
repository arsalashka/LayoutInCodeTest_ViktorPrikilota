//
//  SignupViewController.swift
//  LayoutInCodeTest_ViktorPrikilota
//
//  Created by Arsalan on 27.04.2024.
//

import UIKit
import SnapKit

private enum Constants: String {
    case signupLabelText = "SIGN UP /"
    case loginButtonTitle = "Login"
    case usernameViewPlaceHolder = "Username"
    case passwordViewPlaceHolder = "Password"
    case reenterPasswordViewPlaceHolder = "Re-enter Password"
    case signupButtonTitle = "Sign Up"
}

final class SignupController: UIViewController {
    private let containerView = UIView()
    private let signupLabel = UILabel()
    private let loginButton = UIButton()
    private let usernameView = TextBlockView()
    private let passwordView = TextBlockView()
    private let reenterPasswordView = TextBlockView()
    private let signupButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupContainerView()
        setupSignupLabel()
        setupLoginButton()
        setupUsernameView()
        setupPasswordView()
        setupReenterPasswordView()
        setupSignupButton()
    }
    
    //  MARK: - Setup Methods
    
    private func setupContainerView() {
        view.addSubview(containerView)
        
        containerView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(45)
            make.trailing.equalToSuperview().inset(45)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    private func setupSignupLabel() {
        view.addSubview(signupLabel)
        
        signupLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        signupLabel.textColor = UIColor.CustomColors.labelTextColor
        signupLabel.text = Constants.signupLabelText.rawValue
        
        signupLabel.snp.makeConstraints { make in
            make.top.equalTo(containerView.snp.top)
            make.leading.equalTo(containerView.snp.leading)
        }
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        loginButton.setTitle(Constants.loginButtonTitle.rawValue, for: .normal)
        loginButton.setTitleColor(.systemGray, for: .normal)
        
        loginButton.snp.makeConstraints { make in
            make.leading.equalTo(signupLabel.snp.trailing).offset(10)
            make.bottomMargin.equalTo(signupLabel.snp.bottom).inset(4)
        }
        
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
    }
    
    private func setupUsernameView() {
        view.addSubview(usernameView)
        usernameView.setPlaceHolder(with: Constants.usernameViewPlaceHolder.rawValue)
        
        usernameView.snp.makeConstraints { make in
            make.top.equalTo(signupLabel.snp.bottom).offset(34)
            make.horizontalEdges.equalTo(containerView.snp.horizontalEdges)
        }
    }
    
    private func setupPasswordView() {
        view.addSubview(passwordView)
        passwordView.setPlaceHolder(with: Constants.passwordViewPlaceHolder.rawValue)
        
        passwordView.snp.makeConstraints { make in
            make.top.equalTo(usernameView.snp.bottom).offset(58)
            make.horizontalEdges.equalTo(containerView.snp.horizontalEdges)
        }
    }
    
    private func setupReenterPasswordView() {
        view.addSubview(reenterPasswordView)
        reenterPasswordView.setPlaceHolder(with: Constants.reenterPasswordViewPlaceHolder.rawValue)
        
        reenterPasswordView.snp.makeConstraints { make in
            make.top.equalTo(passwordView.snp.bottom).offset(58)
            make.horizontalEdges.equalTo(containerView.snp.horizontalEdges)
        }
    }
    
    private func setupSignupButton() {
        view.addSubview(signupButton)
        
        signupButton.setTitle(Constants.signupButtonTitle.rawValue, for: .normal)
        signupButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        signupButton.backgroundColor = UIColor.CustomColors.buttonBackgroundColor
        signupButton.layer.cornerRadius = 18
        
        signupButton.snp.makeConstraints { make in
            make.width.equalTo(142)
            make.height.equalTo(44)
            make.top.equalTo(reenterPasswordView.snp.bottom).offset(64)
            make.trailing.equalTo(containerView)
            make.bottom.equalTo(containerView)
        }
    }
    
    //  MARK: - Action Methods
    
    @objc private func loginButtonPressed() {
        dismiss(animated: true)
    }
}
