

import UIKit
import SDWebImage
//This is IbDesignable class used for different view to add the function from storyboard
@IBDesignable
class StylishUIView: UIView {

  @IBInspectable var  cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable public var circleView: Bool = false {
        didSet {
            if circleView{
            layer.cornerRadius = self.frame.width / 2
                cornerRadius = layer.cornerRadius
            } else {
                layer.cornerRadius = 0.0
                cornerRadius = layer.cornerRadius
            }
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
   
    @IBInspectable
    var shadowRadius: CGFloat = -1.0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowColor: UIColor = .clear {
        didSet{
            //layer.masksToBounds = false
            layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 1.0 {
        didSet{
            //layer.masksToBounds = false
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0.0, height: 1.0) {
        didSet {
            //layer.masksToBounds = false
            layer.shadowOffset = shadowOffset
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //layer.masksToBounds = false
    }

}
//MARK:- for Button
@IBDesignable
class StylishUIButton: UIButton{
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable public var circleView: Bool = false {
        didSet {
            if circleView{
                layer.cornerRadius = self.frame.width / 2
                cornerRadius = layer.cornerRadius
            } else {
                layer.cornerRadius = 0.0
                cornerRadius = layer.cornerRadius
            }
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat = -1.0 {
        didSet {
            
            //layer.masksToBounds = false
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowColor: UIColor = .clear {
        didSet{
            //layer.masksToBounds = false
            layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 1.0 {
        didSet{
            //layer.masksToBounds = false
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0.0, height: 1.0) {
        didSet {
            //layer.masksToBounds = false
            layer.shadowOffset = shadowOffset
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //layer.masksToBounds = false
    }
    
}
