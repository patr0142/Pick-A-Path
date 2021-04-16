//
//  Page2ViewController.swift
//  Pick-A-Path
//
//  Created by Katelyn Patrick on 2020-11-19.
//  Copyright © 2020 Katelyn Patrick. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {
    
    //outlets
    
    @IBOutlet weak var pageBOptionA: UIBarButtonItem!
    
    @IBOutlet weak var pageBOptionB: UIBarButtonItem!
    
    @IBOutlet weak var pageBText: UITextView!
    
    @IBOutlet weak var pageBNumber: UINavigationItem!
    
    //actions
    
    @IBAction func pageBOptionAClick(_ sender: Any) {
        
        performSegue(withIdentifier: "showPageC", sender: "buttonA")
    }
    @IBAction func pageBOptionBClick(_ sender: Any) {
        
        performSegue(withIdentifier: "showPageC", sender: "buttonB")
    }
      var currentPage: Page? = Page()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // update the page and display the page title, text and buttons 
override func viewWillAppear(_ animated: Bool) {
    //display the text
    pageBText.text = currentPage?.pageText
    //display the page number
    pageBNumber.title = "Page " + (currentPage?.pageNumber.description)!
    // display the button names
    pageBOptionA.title = "Option A"
    pageBOptionB.title = "Option B"
    
    }
    
     // handles the page change when button A or B is selected
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          
          let SwitchView = segue.destination as? Page3ViewController
          
          if sender as! String == "buttonA" {
              
              SwitchView?.currentPage = self.currentPage?.pageChoiceA
          }
          else if sender as! String == "buttonB" {
              
              SwitchView?.currentPage = self.currentPage?.pageChoiceB
          }
      }

}
