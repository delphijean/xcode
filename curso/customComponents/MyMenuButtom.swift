import UIKit

class MyMenuButtom: UIButton {
    
    override func draw(_ rect: CGRect) {
        /*layer.borderWidth = 1
        layer.backgroundColor = UIColor.clear.cgColor
        layer.borderColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 5*/
        let width : CGFloat = 1.0
        let border = CALayer()
        border.backgroundColor = UIColor.white.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: frame.size.width, height: width)
        self.layer.addSublayer(border)
        
        clipsToBounds = true
    }
    
    /*override func buttonRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
    override func draw(_ rect: CGRect) {
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 25
        clipsToBounds = true
    }
    */
}

