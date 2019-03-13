//
//  actions.swift
//  MuBank
//
//  Created by Rovane Moura on 13/03/19.
//  Copyright © 2019 MuBank. All rights reserved.
//

import Foundation

func deposit() {
    
    print("===================================================")
    print("||                                               ||")
    print("||             Choose deposit method             ||")
    print("||                                               ||")
    print("|| (1) * [Invoicing]                             ||")
    print("|| (2) * [Bank transfer]                         ||")
    print("||                                               ||")
    print("===================================================")
    
    let response = Int(readLine() ?? "-1")
    
    switch(response) {
        
    case 1:
        
        print(" * Enter deposit amount")
        
        if let amount = Double(readLine() ?? "-1") {
            
            print("Amount: \(amount) - Invoice bar code: 32549328464390348052324")
            myUser.funds += amount
            
        }
        
        print("Press enter to return") ; let _ = readLine()
        
        
    case 2:
        
        print("@ Your MuAccount @")
        print("Agency: \(myUser.agency)")
        print("Account: \(myUser.account)")
        print("Bank: Mu Payments S.A.")
        
        
    default:
        print("404")
        
    }
    
}

func transfer() {
    
    myUser.configureMuAccount()
}

func adjustLimit() {
    
    
    print("===================================================")
    print("||               Limit adjust                    ||")
    print("||                                               ||")
    print("||                                               ||")
    print("||                 $350,00                       ||")
    print("||               $210,50 available               ||")
    print("||                                               ||")
    print("||                                               ||")
    print("||    200                       350        400   ||")
    print("||   (----------------------------*          )   ||")
    print("||                                               ||")
    print("||                                               ||")
    print("||   1.      Ask for limit increase   >          ||")
    print("||                                               ||")
    print("||   0.              Return           >          ||")
    print("===================================================")
   
    let response = Int(readLine() ?? "-1")
    
    switch response {
    case 0:
        startScreen()
    case 1:
        increaseLimit()
    default:
        print("Default")
    }
}

func increaseLimit(){
    
    print("Tell us your new max limit")
    
    let actualLimit = 350
    let response = Int(readLine() ?? "-1")
    
    print("===================================================")
    print("||               Limit adjust                    ||")
    print("||                                               ||")
    print("||                                               ||")
    print("||                 $\(actualLimit),00                       ||")
    print("||               $210,50 available               ||")
    print("||                                               ||")
    print("||                                               ||")
    traceAjust(newValor: response, actualLimit: actualLimit)
    print("||                                               ||")
    print("||                                               ||")
    print("||   1.      Ask for limit increase   >          ||")
    print("||                                               ||")
    print("||   2.              Adjust           >          ||")
    print("===================================================")
}

func traceAjust(newValor: Int?, actualLimit: Int) {
 
    var firstLine: [Character] = []
    
    for _ in 0..<38{
        firstLine.append(" ")
    }
    
    let lineStart = "||   ("
    let lineEnd = ")    ||"
    
    
    var stickNum = (Double(actualLimit) / Double(newValor!)) * 38
    if stickNum > 37{
        stickNum = 37
    }
    
    for i in 0..<Int(stickNum){
        firstLine[i] = "-"
    }
    firstLine[Int(stickNum)-1] = "*"
    
    let line = lineStart + String(firstLine) + lineEnd

    var secondLine: [Character] = []
    var spaceSecondLine: [Character] = []
    
    for _ in 0..<Int(stickNum) - 3{
        secondLine.append(" ")
    }
    
    for _ in 0..<(34 - Int(stickNum)){
        spaceSecondLine.append(" ")
    }
    
    let limitValue = "\(actualLimit)"
    let secondLineStart = "||   200"
    let secondLineEnd = "\(newValor!)    ||"
    
    let upperLine = secondLineStart + String(secondLine) + limitValue + String(spaceSecondLine) + secondLineEnd
    
    print(upperLine)
    print(line)
    
    //6-44
    //51
}

//func changeLimit(){
//    print("Tell us your new limit")
//    
//    let response = Int(readLine() ?? "-1")
//    
//    print("===================================================")
//    print("||               Limit adjust                    ||")
//    print("||                                               ||")
//    print("||                                               ||")
//    print("||                 $\(response!),00                       ||")
//    print("||               $210,50 available               ||")
//    print("||                                               ||")
//    print("||                                               ||")
//   // traceAjust(newValor: response, actualLimit: actualLimit)
//    print("||                                               ||")
//    print("||                                               ||")
//    print("||   1.      Ask for limit increase   >          ||")
//    print("||                                               ||")
//    print("||   2.              Adjust           >          ||")
//    print("===================================================")
//    
//}


func pay() {
    myUser.configureApp()
}
