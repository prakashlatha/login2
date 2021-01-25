
import UIKit
class textField: UITextField
{
    init(frame: CGRect = .zero, textsize : CGFloat = 20 ,textColor: UIColor = .black,cornerradius:CGFloat = 5 ,placeholder:String = "default") {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = self.font?.withSize(textsize)
        self.placeholder = placeholder
        self.textColor = textColor
        self.layer.cornerRadius = cornerradius
        if placeholder == "password"
        {
        self.isSecureTextEntry = true
        }
        else{
            self.isSecureTextEntry = false
        }
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 7, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = UITextField.ViewMode.always
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
