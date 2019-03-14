import Foundation


class GenericAccount {
    
    let bankNumber: Int
    let username: String
    let agency: String
    let account: String
    
    init(bankNumber: Int, username: String, agency: String, account: String) {
        
        self.bankNumber = bankNumber
        self.username = username
        self.agency = agency
        self.account = account
        
    }
    
}


class MuAccount : GenericAccount {
    
    let email: String
    var password: String
    var monthlyIncome: Int
    
    let points = 0
    var currentInvoice = 0.0
    var funds = 0.0
    
    var friendAccounts: [GenericAccount] = []
    
    init(bankNumber: Int, username: String, agency: String, account: String, email: String, password: String, monthlyIncome: Int) {
        
        self.email = email
        self.password = password
        self.monthlyIncome = monthlyIncome
        
        super.init(bankNumber: bankNumber, username: username, agency: agency, account: account)
        
    }
    
    func configureMuAccount(){
        
        for _ in 0 ..< 15 { print("") }
        
        print("Receive Salary               >")
        print("Cancel MuAccount             >")
        
    }
    
    func configureCard(){
        
        for _ in 0 ..< 15 { print("") }
        
        print("Invoice Maturity:               08/04      >")
        print("Ajust limit:                    $400,00    >")
        print("Information about your bank interets: 14%  >")
        print("Travel alert:                    ON")
    
    }
    
    func configureApp(){
        
        for _ in 0 ..< 15 { print("") }
        
        print("Localization history                                  ON")
        print("App protection")
        print("Ask for the user password when openning the app:      ON")
        
    }
    
    func recentlyBought(){
        
        for _ in 0 ..< 15 { print("") }
        
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

var myUser = MuAccount(bankNumber: 261, username: "Anderson", agency: "0002", account: "72849", email: "aaa.com",  password: "senha", monthlyIncome: 1100)


