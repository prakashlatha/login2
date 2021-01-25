//
//  buttonField.swift
//  part2
//
//  Created by prakash on 24/01/21.
//

import UIKit
class buttonField: UIButton
{
    init(frame: CGRect, backgroundColor: UIColor = .black, text:String = "default", textSize: CGFloat = 5, textColor:UIColor = .white, cornerradius: CGFloat = 5,borderColor: UIColor = .black, borderWidth:CGFloat = 5) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false 
        self.layer.cornerRadius = cornerradius
        self.setTitle(text, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font =  UIFont(name: text, size: 20)
        self.setTitleColor(textColor, for: .normal)
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
