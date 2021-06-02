//
//  ViewController.swift
//  DaysinaMonth
//
//  Created by Daniel Washington Ignacio on 02/06/21.
//


/*
 Create a function that takes the month and year (as integers) and returns the number of days in that month.

 Examples

 days(2, 2018) ➞ 28

 days(4, 654) ➞ 30

 days(2, 200) ➞ 28

 days(2, 1000) ➞ 28
 Notes

 Don't forget about leap years!
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.days(2, 2018))
        print(self.days(4, 654))
        print(self.days(2, 200))
        print(self.days(2, 1000))
    }
    
    func days(_ month: Int, _ year: Int) -> Int {
        if year % 4 == 0{
            if year % 100 == 0 {
                if year % 400 == 0{
                    switch month {
                    case 1,3,5,7,8,10,12:
                        return 31
                    case 2:
                        return 29
                    default:
                        return 30
                    }
                }
            }
        }
        
        switch month {
        case 1,3,5,7,8,10,12:
            return 31
        case 2:
            return 28
        default:
            return 30
        }
    }


}

