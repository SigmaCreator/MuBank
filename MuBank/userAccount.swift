import Foundation

enum purchaseKind : String {
    
    case Restaurant = "🍽"
    case Supermarket = "🛒"
    case ClothShop = "👗"
    case Bakery = "🥖"
    case GroceryStore = "🥦"
    case ComicStore = "📚"
    case TechStore = "📱"
    case Hotel = "🏨"
    
}

struct Purchase {
    
    let name: String
    let value: Double
    let date: String
    let kind: purchaseKind
    
}



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
    var purchases: [Purchase] = []
    
    init(bankNumber: Int, username: String, agency: String, account: String, email: String, password: String, monthlyIncome: Int) {
        
        self.email = email
        self.password = password
        self.monthlyIncome = monthlyIncome
        
        super.init(bankNumber: bankNumber, username: username, agency: agency, account: account)
        
    }
    
    func configureApp(){
        
        print("===================================================")
        print("|| Location history                     ON       ||")
        print("|| Travel alert:                        ON       ||")
        print("||                                               ||")
        print("|| App protection                       ON       ||")
        print("||  Ask for the password when openning the app:  ||")
        print("||                                               ||")
        print("|| Invoice Maturity:                 08/04     > ||")
        print("|| Ajust limit:                      $400,00   > ||")
        print("|| Information about your bank interets: 14%   > ||")
        print("||                                               ||")
        print("||                                               ||")
        print("||          Press enter to return                ||")
        print("===================================================")
        
        let _ = readLine()
    }
    
    func recentlyBought(){
        
        print("===================================================")
        
        print("||         ^                                     ||")
        print("||        / \\      /\\                            ||")
        print("||     __/   \\__/\\/  \\____________               ||")
        
        print("||                                               ||")
        print("||   *                                           ||")
        
        
        purchases.forEach {
            
            print("||   |                                           ||")
            print("||  [\($0.kind.rawValue)]  *  $\($0.value) : \($0.name) - \($0.date)")
            print("||   |                                           ||")
            

            
        }
        
        print("||          Press enter to return                ||")
        print("===================================================")
        
        let _ = readLine()

        
    }
    
    
}

var myUser = MuAccount(bankNumber: 261, username: "Anderson", agency: "0002", account: "72849", email: "aaa.com",  password: "senha", monthlyIncome: 1100)


