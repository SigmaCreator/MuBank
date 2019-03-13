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
        
        print("===================================================")
        print("||                Your MuAccount                 ||")
        print("||                 Agency: \(myUser.agency)                  ||")
        print("||                Account: \(myUser.account)                 ||")
        print("||             Bank: Mu Payments S.A.            ||")
        print("===================================================")
        
        print("Press enter to return") ; let _ = readLine()
        
        
    default:
        
        print("404")
        
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
        print("===================================================")
        
    } else {
        
        print("===================================================")
        print("||             ✅ Transfer complete! ✅          ||")
        print("|| * Transfered amount: \(amount)                ||")
        print("|| * Recipient Name: \(accountName)              ||")
        print("|| * Account Number: \(accountNumber)            ||")
        print("|| * Bank: \(bankNumber)                         ||")
        print("===================================================")
        
        myUser.funds -= amount
        
    }
    
    
    
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
        print("===================================================")
        
    } else {
        
        print("===================================================")
        print("||              Transfer complete!               ||")
        print("|| * Transfered amount: \(amount)                ||")
        print("|| * Recipient Name: \(account.username)         ||")
        print("|| * Account Number: \(account.account)          ||")
        print("|| * Bank: \(account.bankNumber)                 ||")
        print("===================================================")
    
        myUser.funds -= amount
    
    }
    
}

func transfer() {
    
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
    print("===================================================")
    
    let response = Int(readLine() ?? "-1")
    
    switch(response) {
        
    case 1:
        
        print("===================================================")
        print("||                                               ||")
        print("||                 ((()))())                     ||")
        print("||                 |       |                     ||")
        print("||               👂|👁   👁|👂                   ||")
        print("||                 |   👃  |                     ||")
        print("||          👋     \\   👄  /       🤙           ||")
        print("===================================================")
        
    case 2:
        
        sendToAnotherAccount()
        
    default:
        
        let index = (response ?? 3) - 3
        
        if (0 ..< myUser.friendAccounts.count).contains(index) {
            
            sendToFriendAccount(myUser.friendAccounts[index])
            
        }
        
    }
    
    print("Press enter to return") ; let _ = readLine()
    
}

func adjustLimit() {
    
    myUser.configureCard()
}

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
            print("===================================================")
            
        } else {
            
            myUser.funds -= amount
            
            print("===================================================")
            print("||                                               ||")
            print("||             ✅ Payment complete! ✅           ||")
            print("||                                               ||")
            print("===================================================")
            
        }

    default:
        
        return
        
    }
    
}

func pay() {

    print("===================================================")
    print("||                                               ||")
    print("||             Choose payment option             ||")
    print("||                                               ||")
    print("|| (1) * [Pay credit card invoice]               ||")
    print("|| (2) * [Pay other invoice]                     ||")
    print("||                                               ||")
    print("===================================================")
    
    let response = Int(readLine() ?? "-1")
    
    switch(response) {
    case 1:
        
        payCardInvoice()
        
    case 2:
        
        payOtherInvoice()
        
    default: break
    
    }
    
    print("Press enter to return") ; let _ = readLine()
    
}
