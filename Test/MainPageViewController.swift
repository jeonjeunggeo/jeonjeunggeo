//
//  MainPageViewController.swift
//  Test
//
//  Created by 전증거 on 2021/06/25.
//

import UIKit

class MainPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.changeTextColor()
        designbtn()
        
      

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var sublabel: UILabel!
    @IBOutlet weak var titlelabel: UILabel!
    
    @IBOutlet weak var numbergame: UIButton!
    @IBOutlet weak var wordgame: UIButton!
    @IBOutlet weak var colorgame: UIButton!
    
    @IBOutlet weak var custombtn: UIButton!
    @IBOutlet weak var rankbtn: UIButton!
    
    
    func designbtn(){
        numbergame.layer.cornerRadius = numbergame.frame.width / 2
        numbergame.layer.masksToBounds = true
        
        wordgame.layer.cornerRadius = wordgame.frame.width / 2
        wordgame.layer.masksToBounds = true

        colorgame.layer.cornerRadius = colorgame.frame.width / 2
        colorgame.layer.masksToBounds = true
        
        custombtn.layer.cornerRadius = custombtn.frame.width / 2
        custombtn.layer.masksToBounds = true
        
        rankbtn.layer.cornerRadius = rankbtn.frame.width / 2
        rankbtn.layer.masksToBounds = true
        
    }
    func changeTextColor() {
        
        guard let text = self.titlelabel.text else { return }
       
        guard let text = self.sublabel.text else { return }
        
        guard let font = UIFont(name: "Bradley Hand", size: 40) else { return}

        let attributeString = NSMutableAttributedString(string: text)

        attributeString.addAttribute(.foregroundColor, value: UIColor.red, range: (text as NSString).range(of: "왕"))

        attributeString.addAttribute(.font, value: font, range: (text as NSString).range(of: "클릭왕"))

        self.titlelabel.attributedText = attributeString
        
    
        
    }

}
