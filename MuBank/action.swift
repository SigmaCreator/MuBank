
import Foundation

// A-OK!
func deposit() {
    
    var terminate = false
    
    while !terminate  {
    
        print("===================================================")
        print("||                                               ||")
        print("||             Choose deposit method             ||")
        print("||                                               ||")
        print("|| (1) * [Invoicing]                             ||")
        print("|| (2) * [Bank transfer]                         ||")
        print("||                                               ||")
        print("||             Press enter to return             ||")
        print("===================================================")
        
        let response = Int(readLine() ?? "-1")
        
        switch response {
            
        case 1:
            
            print("===================================================")
            print("|| Enter deposit amount:                         ||")
            
            let amount = Double(readLine() ?? "-1") ?? 0.0
                
            print("|| Amount: \(amount)                             ||")
            print("|| Invoice bar code: 32549328464390348052324     ||")
            
            myUser.funds += amount
            
            print("||                                               ||")
            print("||             Press enter to return             ||")
            print("===================================================")
            
            let _ = readLine()
            
            
        case 2:
            
            print("===================================================")
            print("||               Your MuAccount                  ||")
            print("||                Agency: \(myUser.agency)                   ||")
            print("||               Account: \(myUser.account)                  ||")
            print("||            Bank: Mu Payments S.A.             ||")
            print("||                                               ||")
            print("||             Press enter to return             ||")
            print("===================================================")
            
            let _ = readLine()
            
            
        default: terminate = true
            
        }
        
    }
    
}

// Transfer Stuff
func printRegisteredAccounts() {
    
    var i = 3
    
    myUser.friendAccounts.forEach {
        
        print("||    \(i) * \($0.username)    ||") ; i += 1
        
    }
    
}

// Transfer Stuff
func sendToAnotherAccount() {
    
    print("===================================================")
    print("|| Enter recipient account information:          ||")
    print("|| Name:                                         ||")
    let accountName = readLine() ?? "No name"
    print("|| Account Number:                               ||")
    let accountNumber = readLine() ?? "No number"
    print("|| Bank Number:                                  ||")
    let bankNumber = readLine() ?? "No number"
    print("|| Enter desired amount:                         ||")
    let amount = Double(readLine() ?? "0.0") ?? 0.0
    
    if myUser.funds < amount {
        
        print("===================================================")
        print("||           ❌ Transfer denied! ❌              ||")
        print("||                                               ||")
        print("||             Not enough funds 😭               ||")
        print("||                                               ||")
        print("||            Press enter to return              ||")
        print("===================================================")
        
    } else {
        
        print("===================================================")
        print("||             ✅ Transfer complete! ✅          ||")
        print("|| * Transfered amount: \(amount)                ||")
        print("|| * Recipient Name: \(accountName)              ||")
        print("|| * Account Number: \(accountNumber)            ||")
        print("|| * Bank: \(bankNumber)                         ||")
        print("||                                               ||")
        print("||             Press enter to return             ||")
        print("===================================================")
        
        myUser.funds -= amount
        
    }
    
    let _ = readLine()
    
    
    
}

// Transfer Stuff
func sendToFriendAccount(_ account: GenericAccount) {
    
    print("===================================================")
    print("|| Enter desired amount:                         ||")
    let amount = Double(readLine() ?? "0.0") ?? 0.0
    
    if myUser.funds < amount {
        
        print("===================================================")
        print("||           ❌ Transfer denied! ❌              ||")
        print("||                                               ||")
        print("||             Not enough funds 😭               ||")
        print("||                                               ||")
        print("||             Press enter to return             ||")
        print("===================================================")
        
    } else {
        
        print("===================================================")
        print("||              Transfer complete!               ||")
        print("|| * Transfered amount: \(amount)                ||")
        print("|| * Recipient Name: \(account.username)         ||")
        print("|| * Account Number: \(account.account)          ||")
        print("|| * Bank: \(account.bankNumber)                 ||")
        print("||                                               ||")
        print("||             Press enter to return             ||")
        print("===================================================")
    
        myUser.funds -= amount
    
    }
    
    let _ = readLine()
    
}

func transfer() {
    
    var terminate = false
    
    while !terminate {
    
        print("===================================================")
        print("||                                               ||")
        print("||            Choose transfer method             ||")
        print("||                                               ||")
        print("|| (1) * [Read QR Code]                          ||")
        print("|| (2) * [Send to another account]               ||")
        print("||                                               ||")
        print("|| # Registered Accounts #                       ||")
        printRegisteredAccounts()
        print("||                                               ||")
        print("||             Press enter to return             ||")
        print("===================================================")
        
        let response = Int(readLine() ?? "-1")
        
        switch response  {
            
        case 1:
            
            print("===================================================")
            print("||                                               ||")
            print("||                 ((()))())                     ||")
            print("||                 |       |                     ||")
            print("||               👂|👁   👁|👂                   ||")
            print("||                 |   👃  |                     ||")
            print("||          👋     \\   👄  /       🤙           ||")
            print("===================================================")
            
            let _ = readLine()
            
        case 2:
            
            sendToAnotherAccount()
            
        default:
            
            let index = (response ?? 3) - 3
            
            if (0 ..< myUser.friendAccounts.count).contains(index) {
                
                sendToFriendAccount(myUser.friendAccounts[index])
                
            } else { terminate = true }
            
        }
        
    }
    
}

func adjustLimit() {
    
    var terminate = false
    
    let actualLimit = 350
    var moneyAvailable = 210
    var maxLimit = 400
    
    while !terminate {
    
        print("===================================================")
        print("||                Adjust limit                   ||")
        print("||                                               ||")
        print("||                                               ||")
        print("||                 $\(actualLimit),00                       ||")
        print("||             $\(moneyAvailable),50 available                 ||")
        print("||                                               ||")
        print("||                                               ||")
        traceAjust(newValor: maxLimit, actualLimit: actualLimit)
        print("||                                               ||")
        print("||                                               ||")
        print("||   (1) * [Ask for limit increase]              ||")
        print("||                                               ||")
        print("||             Press enter to return             ||")
        print("===================================================")
       
        let response = Int(readLine() ?? "-1")
        
        switch response {
                        
        case 1:
            print("Tell us your new max limit")
            maxLimit = Int(readLine() ?? "-1")!
            moneyAvailable += maxLimit  - 400
            
        default: terminate = true
            
        }
    }
    
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


func payCardInvoice() {
    
    print("===================================================")
    print("|| Current Invoice: \(myUser.currentInvoice)     ||")
    print("|| How much do you wish to pay?                  ||")
    
    let amount = Double(readLine() ?? "0.0") ?? 0.0
    
    if myUser.funds < amount {
        
        print("===================================================")
        print("||           ❌ Payment denied! ❌               ||")
        print("||                                               ||")
        print("||             Not enough funds 😭               ||")
        print("||                                               ||")
        print("===================================================")
        
    } else {
        
        myUser.funds -= amount
        myUser.currentInvoice -= amount
        
        print("===================================================")
        print("||             ✅ Payment complete! ✅           ||")
        print("||                                               ||")
        print("|| Current invoice: \(myUser.currentInvoice)     ||")
        print("||                                               ||")
        print("===================================================")
        
    }
    
}

func payOtherInvoice() {
    
    print("===================================================")
    print("|| Enter invoice number:                         ||")
    
    let _ = readLine()
    
    let amount = Double(Int.random(in: (10...100)))
    
    print("|| Pay invoice? $\(amount)                       ||")
    print("|| (1) Yes                                       ||")
    print("|| (2) No                                        ||")
    
    let response = Int(readLine() ?? "0,0")
    
    switch(response) {
        
    case 1:
        
        if myUser.funds < amount {
            
            print("===================================================")
            print("||           ❌ Payment denied! ❌               ||")
            print("||                                               ||")
            print("||             Not enough funds 😭               ||")
            print("||                                               ||")
            print("|| Press enter to return                         ||")
            print("===================================================")
            let _ = readLine()
            
            //pay()
        } else {
            
            myUser.funds -= amount
            
            print("===================================================")
            print("||                                               ||")
            print("||             ✅ Payment complete! ✅           ||")
            print("||                                               ||")
            print("|| Press enter to return                         ||")
            print("===================================================")
           // pay()
            let _ = readLine()
            
        }

    default:
        
        return
        
    }
    
}

func pay() {
    var flag = true
    while (flag == true){
    print("===================================================")
    print("||                                               ||")
    print("||             Choose payment option             ||")
    print("||                                               ||")
    print("|| (1) * [Pay credit card invoice]               ||")
    print("|| (2) * [Pay other invoice]                     ||")
    print("||                                               ||")
    print("||       Press enter to return                   ||") 
    print("===================================================")
    
    let response = Int(readLine() ?? "-1")
    

    switch(response) {
    case 1:
        
        payCardInvoice()
        
    case 2:
        
        payOtherInvoice()
        
    default: flag = false
    
    }
    
    
    }
}
