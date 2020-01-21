//
//  ViewController.swift
//  MyCustomizeTableViewCell
//
//  Created by Saboor on 20/01/2020.
//  Copyright © 2020 Saboor. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var myTableView: UITableView!
    let myArray = ["a","b","c"]
    let myNameArray = ["A for apple","B for banana","C for cherry"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! myTableViewCell
        cell.myImage.image = UIImage(named: (myArray[indexPath.row] + ".png"))
        cell.myLabel.text = myNameArray[indexPath.row]
        return cell
    }
    
    
    
    
    
    
    

}

