import UIKit
class labelLine: UILabel
{
    init( frame: CGRect = .zero, lineColor: UIColor = .black,lineWidth: CGFloat = 3.0)
    {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderColor = lineColor.cgColor
        self.layer.borderWidth = lineWidth
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
