//
//  label.swift
//  part2
//
//  Created by prakash on 21/01/21.
//
//
//import UIKit
//
//class label: UILabel
//{
//    init(frame: CGRect = .zero, text: String = "Default",background: UIColor = .white, cornerradius: CGFloat = 8, bordercolor : UIColor = .white) {
//        super.init(frame: frame)
//        self.translatesAutoresizingMaskIntoConstraints = true
//        self.text = text;
//        //self.backgroundColor = background;
//        self.layer.cornerRadius = cornerradius;
//        //self.layer.borderColor = UIColor.white.cgColor;
//        self.backgroundColor = UIColor.white.withAlphaComponent(0.4)
//        //self.layer.borderWidth = 1.0
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

//
//  labelField.swift
//  part1
//
//  Created by prakash on 23/12/20.
//

import UIKit
class labelField: UILabel
{
    init( frame: CGRect = .zero,text:String = "default", textColor:UIColor = .white, textSize:CGFloat = 5)
    {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text;
        self.textColor = textColor;
        self.font = self.font.withSize(textSize)
        if self.text != " Welcome back!" && self.text != "new to activity fitness?"
        {
        self.font = UIFont.systemFont(ofSize: textSize, weight: .bold)
        }
        else
        {
            self.font = UIFont.systemFont(ofSize: textSize, weight: .light)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

