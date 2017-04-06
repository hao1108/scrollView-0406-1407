//
//  ViewController.swift
//  scrollView_0406_1407
//
//  Created by 黃毓皓 on 2017/4/6.
//  Copyright © 2017年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myscrollview: UIScrollView!
    
    var imageViews:[UIImageView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViews.append(UIImageView(image: UIImage(named: "1.jpg")))
        imageViews.append(UIImageView(image: UIImage(named: "2.jpg")))
        imageViews.append(UIImageView(image: UIImage(named: "3.jpg")))
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //取得目前scrollview大小
        let rect = myscrollview.bounds
        
        var size = CGSize()
        var left:UIImageView? = nil
        
        for imageView in imageViews{
            imageView.contentMode = .scaleAspectFit
            
            if left == nil{
            imageView.frame = rect
            }
            else{
                imageView.frame = left!.frame.offsetBy(dx: left!.frame.size.width, dy: 0)
            }
            left = imageView
            size = CGSize(width: size.width + imageView.frame.size.width, height: rect.size.height)
            myscrollview.addSubview(imageView)
        }
        myscrollview.contentSize = size
        
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

