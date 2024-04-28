//
//  TextBlock.swift
//  LayoutInCodeTest_ViktorPrikilota
//
//  Created by Arsalan on 27.04.2024.
//

import UIKit
import SnapKit

final class TextBlockView: UIView {
    private let placeHolderLabel = UILabel()
    private let lineView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupPlaceHolderLabel()
        setupLineView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupPlaceHolderLabel() {
        addSubview(placeHolderLabel)
        
        placeHolderLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        placeHolderLabel.textColor = UIColor(rgb: 0x838383)
        
        placeHolderLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.horizontalEdges.equalToSuperview()
        }
    }
    
    private func setupLineView() {
        addSubview(lineView)
        
        lineView.backgroundColor =  UIColor(rgb: 0xDDDDDD)
      
        lineView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.top.equalTo(placeHolderLabel.snp.bottom).offset(6)
            make.height.equalTo(2)
            make.bottom.equalTo(self.snp.bottom)
        }
    }
    
    //  MARK: - Public Methods
    
    func setPlaceHolder(with text: String?) {
        guard let text = text else {
            fatalError("Could not pass placeHolderLabel.text")
        }
        placeHolderLabel.text = text
    }
}
