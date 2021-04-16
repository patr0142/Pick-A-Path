//
//  ViewController.swift
//  Pick-A-Path
//
//  Created by Katelyn Patrick on 2020-11-19.
//  Copyright © 2020 Katelyn Patrick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //  outlets
    
    @IBOutlet weak var
    PageAText: UITextView!
    
    @IBOutlet weak var OptionB: UIBarButtonItem!
    
    @IBOutlet weak var OptionA: UIBarButtonItem!
    
   
    @IBOutlet weak var pageANumber: UINavigationItem!
    
    //actions
    
    @IBAction func OptionAClick(_ sender: Any) {
        performSegue(withIdentifier: "showPageB", sender: "buttonA")
    }
    
    @IBAction func OptionBClick(_ sender: Any) {
        performSegue(withIdentifier: "showPageB", sender: "buttonB")
    }
    
    // page objects
    
    var page1: Page? = Page()
    var page2: Page? = Page()
    var page3: Page? = Page()
    var page4: Page? = Page()
    var page5: Page? = Page()
    var page6: Page? = Page()
    var page7: Page? = Page()

    var currentPage: Page? = Page()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // display the page numbers
        page1?.pageNumber = 1
        page2?.pageNumber = 2
        page3?.pageNumber = 3
        page4?.pageNumber = 4
        page5?.pageNumber = 5
        page6?.pageNumber = 6
        page7?.pageNumber = 7
        
        // Story content
        page1?.pageText = "You awaken to the sounds of an intruder coming from downstairs. You reach for the lamp on your bedside table and attempt to turn it on... Nothing. You are left in darkness. What is the next thing you do?: Option A: Find a weapon to defend yourself? Option B: Hide under your bed in hopes they don't find you?"
        page2?.pageText = "With only the dim moonlight shining through the crack in your curtians, you stumble to the closet and find an old golf club. With golf club in hand you consider your next move. Do you: Option A: Hide and wait for the intruder and have the element of surprise? Option B: Confront the intruder."
        page3?.pageText = "Quietly crawling out from under your sheets and squeezeing throught the narrow opening under your bed. You notice your phone on the floor next to your nightstand as you hear what sounds like footsteps approaching  Do you: Option A: Stay still and quiet? Maybe the intruder will leave. Option B: Use your cellphone to call 911? At the risk that the intruder may hear you."
        page4?.pageText = "You make your way across the room towards your bedroom door. You position yourself behind the door, weapon raised as you hear the creaking from the stairs and footsteps advancing towards your room, you see a figure reach in and press the light switch, the room illuminates. It's at that moment you realize the intruder is really your mother and you forgot to plug your lamp in. "
        page5?.pageText = "You run from your room and decend the stairs, unsure of who your are about to encounter. You turn the corner at the bottom and head towards the kitchen, you hear clanging and can see a shadowy figure lingering near the island. Hands shaking and heart racing, You yell 'GET OUT!' and flick on the light. Dishes slam to the ground as your Cat leaps from counter and runs out of the room. Now you can understand why some people hate cats "
        page6?.pageText = "You cower in fear, all while trying control your breathing and stay as quiet and still as possible. You wake up hours later to a quiet house and no signs an intruder was ever there. Was it all a dream?"
        page7?.pageText = "You grab your cellphone and frantically dial 911, the operator picks up 'Hello, Where is your emergency?....Hello?.' The police track your phone, and show up at your door.. They break down the door and come across a scene in which nightmares are made of...your body is never found."
        
        // manually making the connections of the A-B tree
        page1?.pageChoiceA = page2
        page1?.pageChoiceB = page3
        page2?.pageChoiceA = page4
        page2?.pageChoiceB = page5
        page3?.pageChoiceA = page6
        page3?.pageChoiceB = page7

        
         currentPage = page1
    }
    
    // updates and displays the title and names for the page, text and buttons
    override func viewWillAppear(_ animated: Bool) {
        // display the page text 
        PageAText.text = page1?.pageText
        //display the button name
        OptionA.title = "Option A"
        OptionB.title = "Option B"
        // display the page number
        pageANumber.title = "Page " + (currentPage?.pageNumber.description)!
    }
    
    // handles the page change when button A or B is selected
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let SwitchView = segue.destination as? Page2ViewController
            
            if sender as! String == "buttonA" {
                 SwitchView?.currentPage = self.currentPage?.pageChoiceA
        
               
            } else if sender as! String == "buttonB" {
                 SwitchView?.currentPage = self.currentPage?.pageChoiceB
                
               
                
            }
}

}
