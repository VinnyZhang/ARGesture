//
//  ViewController.swift
//  ARGesture
//
//  Created by Zhang xiaosong on 2018/4/26.
//  Copyright © 2018年 Zhang xiaosong. All rights reserved.
//

import UIKit
import ARKit
import SceneKit

/// AR手势
class ViewController: UIViewController {
    
    var scnView = ARSCNView()//AR视图
    var sessionConfig: ARConfiguration? //会话配置
    var maskView = UIView() // 遮罩视图
    var tipLabel = UILabel()//提示标签
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self .layoutMySubItems()
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func layoutMySubItems()
    {
        scnView.frame = self.view.frame
        self.view.addSubview(scnView)
        scnView.delegate = self
        scnView.showsStatistics = true
        scnView.autoenablesDefaultLighting = true
        scnView.debugOptions = [ARSCNDebugOptions.showWorldOrigin,ARSCNDebugOptions.showFeaturePoints]
        
        maskView.frame = self.view.frame
        maskView.backgroundColor = UIColor.white
        maskView.alpha = 0.6
        self.view.addSubview(maskView)
        
        self.view.addSubview(tipLabel)
        tipLabel.frame = CGRect(x: 0, y: 40, width: self.view.frame.size.width, height: 50)
        tipLabel.textColor = UIColor.black
        tipLabel.numberOfLines = 0
        
    }


}


// MARK: - 代理方法
extension ViewController: ARSCNViewDelegate {
    
}

