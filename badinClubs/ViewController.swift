//
//  ViewController.swift
//  badinClubs
//
//  Created by BHSRam9 on 10/6/16.
//  Copyright © 2016 BHSRam9. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var clubs = ["👫Ambassador Program", "🏆AMP Club", "🙇Anthony Munoz Leadership Committee", "🎨Badin Studio (art)", "🗣Choir", "📝Creative Writing Club", "🍽Culinary Club", "🇫🇷French Club", "📱INTERalliance", "🕵JSA", "🇪🇸Spanish Club", "🎉Spirit Club"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource=self
        tableView.delegate=self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clubs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell ()
        cell.textLabel?.text = clubs [indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveSegue", sender: "w")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

