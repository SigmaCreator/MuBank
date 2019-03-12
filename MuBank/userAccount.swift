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
        
        for _ in 0..<15{
            print(" ")
        }
        
        print("Invoice Maturity:               08/04      >")
        print("Ajust limit:                    $400,00    >")
        print("Information about your bank interets: 14%  >")
        print("Travel alert:                    ON")
    
    }
    
    func configureApp(){
        
        for _ in 0..<15 {
            print(" ")
        }
        
        print("Localization history                                  ON")
        print("App protection")
        print("Ask for the user password when openning the app:      ON")
    }
    
    func recentlyBought(){
        
        for _ in 0..<15 {
            print(" ")
        }
        
        print("         ^")
        print("        / \\ ")
        print("     __/   \\__/ ")
        
        
        print("Restaurant:           MAR 13")
        print("  PizzaHut")
        print("  $21,50   \n")
        
        print("Supermarket:          FEV 18")
        print("  Walmart")
        print("  #118,92")
        
    }
    
    
}


func upperMenu(){
    
    print(     "---------------")
    print(     "|  -|||- _ | -_|")
    print(     "| _-|- -|| _-|-|")
    print(     "| ||- -_-| -| _|")
    print(     "| ----| || - | |")
    print(     "---------------")
    
    print("Bank \(myUser.bankNumber) -  Mu payments S.A.")
    print("          Agency: \(myUser.agency)    ")
    print("         Account: \(myUser.account)    ")
}

var myUser = MuUser(usarname: "Anderson", email: "aaa.com", bankNumber: 323, agency: 1111, account: 72849, monthlyIncome: 1100, password: "senha")


