import Foundation




struct MuUser {
    
    let usarname: String
    let email: String
    let bankNumber: Int
    let agency: Int
    let account: Int
    
    var monthlyIncome: Int
    var password: String
    
    var invoice: Double
    
    
    func configureMuAccount(){
        for _ in 0..<15{
            print("")
        }
        
        print("Receive Salary               >")
        print("Cancel MuAccount             >")
    }
    
    func configureCard(){
        
    }
    
    func configureApp(){
        
    }
    
    func recentlyBought(){
        
    }
    
    
}

var myUser = MuUser(usarname: "Anderson", email: "aaa.com", bankNumber: 323, agency: 1111, account: 72849, monthlyIncome: 1100, password: "senha", invoice: 10.2)


