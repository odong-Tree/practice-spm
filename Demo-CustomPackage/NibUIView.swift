//
//  File.swift
//  Demo-CustomPackage
//
//  Created by odong on 2022/11/23.
//

import UIKit

protocol NibUI: AnyObject {
    var containerView: UIView! { get set }
    
    var nibName: String? { get set }
    
    var title: String? { get set }
    
    var bundle: Bundle? { get set }
    
//    init(frame: CGRect)
    
    func commonInit()
    
    func commonInit_Default()
    
    func commonInit_internal()
    
    func commonInit_public()
}

extension NibUI {
    var nibName: String? {
        get { "Default Value" }
        set {
            
            print("Change Value")
            self.nibName = newValue
        }
    }
    
    public var title: String? {
        get { self.title }
        set { self.title = newValue }
    }
    
    func commonInit_Default() {
        print("commonInit_Default")
    }

}

extension NibUI where Self: UIView {
    func aaa() {
        print("aaa_UIView")
    }
}

extension NibUI where Self: UICollectionViewCell {
    func aaa() {
        print("aaa_CollectionViewCell")
    }
}

extension NibUI where Self: UITableViewCell {
    func aaa() {
        print("aaa_TableViewCell")
    }
}

open class Odongnamu: UIView, NibUI {
    
    public weak var containerView: UIView!
    
//    open var nibName: String? = nil
    
    open var bundle: Bundle? = nil
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        aaa()
        
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit() {
        print("commonInit")
    }
    
    func commonInit_internal() {
        print("commonInit_internal")
    }
    
    public func commonInit_public() {
        print("commonInit_public")
    }
    
}

class NewClass: UINib {
    
}
