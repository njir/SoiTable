//
//  DetailViewController.swift
//  SoiTable
//
//  Created by 진형탁 on 2017. 1. 26..
//  Copyright © 2017년 FailNicely. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var labelHello: UILabel!
    var selectedName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelHello.text = "Hello! " + selectedName!

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
