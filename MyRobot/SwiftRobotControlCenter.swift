//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//  All robot commands can be founded in GameViewController.h



class SwiftRobotControlCenter: RobotControlCenter {
    
    //  Level name setup
    override func viewDidLoad() {
        levelName = "L4H"
    //  Level name  L4H/L55H
        super.viewDidLoad()
    }
    
    var lineNumber = 0
     
    
    override func run() {

      makePiramid()
        
    }
    
    func makePiramid(){
        
        while frontIsClear {
            makeLine(amount: lineNumber)
            lineNumber += 1
            goToFirstCell()
            turnLeft()
            if frontIsClear {
                move()
            }
            if frontIsBlocked {
                break
            }
            turnLeft()
        }
        
    }

    func makeLine(amount: Int){
        for _ in 0 ..< amount {
            put()
            move()
        }
    }
    
    func goToFirstCell(){
        turn180()
        while frontIsClear {
            move()
        }
        
    }
    
    func turn180(){
        turnRight()
        turnRight()
    }
     
    func turnLeft(){
        for _ in 0 ..< 3 {
            turnRight()
        }
    }
    
    
   
    

    
}

