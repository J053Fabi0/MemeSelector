//
//  ViewController.swift
//  Selector
//
//  Created by Jose Fabio_ on 13/06/17.
//  Copyright © 2017 com.yoyomero.josefabio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let myDataArray: [String] = ["meme",
                                 "meme2",
                                 "meme3",
                                 "meme4",
                                 "meme5",
                                 "meme6",
                                 "meme7",
                                 "meme8",
                                 "meme9",
                                 "meme10",
                                 "meme11",
                                 "meme12",
                                 "meme13",
                                 "meme14"]
    
    var logoImages: [UIImage] = [UIImage.init(named: "meme")!,
                                 UIImage.init(named: "meme2")!,
                                 UIImage.init(named: "meme3")!,
                                 UIImage.init(named: "meme4")!,
                                 UIImage.init(named: "meme5")!,
                                 UIImage.init(named: "meme6")!,
                                 UIImage.init(named: "meme7")!,
                                 UIImage.init(named: "meme8")!,
                                 UIImage.init(named: "meme9")!,
                                 UIImage.init(named: "meme10")!,
                                 UIImage.init(named: "meme11")!,
                                 UIImage.init(named: "meme12")!,
                                 UIImage.init(named: "meme13")!,
                                 UIImage.init(named: "meme14")!]

    @IBOutlet var myPickerView: UIPickerView!
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myLabelTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPickerView!.delegate = self
        myPickerView!.dataSource = self

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return logoImages.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
    
    func setImageAndTitle() {
        self.myImageView.image = logoImages[myPickerView.selectedRow(inComponent: 0)]
        self.myLabelTitle.text = myDataArray[myPickerView.selectedRow(inComponent: 0)]
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: pickerView.bounds.width - 30, height: 60))
        
        let myImageView = UIImageView(frame: CGRect(x: 0, y: 5, width: 50, height: 50))
        
        myImageView.image = logoImages[row]
        
        let myLabel = UILabel(frame: CGRect(x: 60, y: 0, width: pickerView.bounds.width - 90, height: 60))
        
        myLabel.text = myDataArray[row]
        myLabel.textColor = UIColor.white
        
        myView.addSubview(myLabel)
        myView.addSubview(myImageView)
        
        setImageAndTitle()
        
        return myView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        setImageAndTitle()
    }

}

