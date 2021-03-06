//
//  MainViewController.swift
//  Project
//
//  Created by csit267-13 on 12/10/15.
//  Copyright © 2015 CSIT_267. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate {

    

    var enemaImages: [UIImage] = []
    
    @IBOutlet weak var xrayLabel: UILabel!
    @IBOutlet weak var xrayImage: UIImageView!
    
    @IBAction func swipeRight(sender: AnyObject) {
        
        switch pageControl.currentPage {
            
        case 0:
            self.xrayImage.image = self.enemaImages[3]
            pageControl.currentPage=3
            xrayLabel.text="Posterior-Anterior View"
            
            
        case 3:
            self.xrayImage.image = self.enemaImages[2]
            pageControl.currentPage=2
            xrayLabel.text="RLD View"
            
        case 2:
            self.xrayImage.image = self.enemaImages[1]
            pageControl.currentPage=1
            xrayLabel.text="LLD View"
            
        case 1:
            self.xrayImage.image = self.enemaImages[0]
            pageControl.currentPage=0
            xrayLabel.text="AP View"
            
        default:
            self.xrayImage.image = self.enemaImages[0]
            pageControl.currentPage=0
            
        }
        
        
    
        
    }
    
    @IBAction func swipeLeft(sender: AnyObject) {
        switch pageControl.currentPage {
            
        case 0:
            self.xrayImage.image = self.enemaImages[1]
            pageControl.currentPage=1
            xrayLabel.text="LLD View"
            
            
        case 1:
            self.xrayImage.image = self.enemaImages[2]
            pageControl.currentPage=2
            xrayLabel.text="RLD View"
            
        case 2:
            self.xrayImage.image = self.enemaImages[3]
            pageControl.currentPage=3
            xrayLabel.text="PA View"
            
        case 3:
            self.xrayImage.image = self.enemaImages[0]
            pageControl.currentPage=0
            xrayLabel.text="AP View"
            
        default:
            self.xrayImage.image = self.enemaImages[0]
            pageControl.currentPage=0
            
        }
    }
    
    @IBOutlet weak var pageControl: UIPageControl!

    @IBAction func changePage(sender: AnyObject) {
        
        //
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        enemaImages = [
        UIImage(named: "AP.jpg")!,
        UIImage(named: "LLD.jpg")!,
        UIImage(named: "RLD.jpg")!,
        UIImage(named: "PA.jpg")!
        ]
        
       
        self.xrayImage.image = enemaImages[0]
        self.pageControl.currentPage=0
        xrayLabel.text="AP View"
    
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
   

    /*
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
    } */

}
