import SQLite

public struct SwiftWordNet {
    public private(set) var text = "Hello, World!"

    public init() {
        
    }
    
    func test(db: Connection){
        do{
            for r in try db.prepare("select * from synset where synset=\"ใในใ\""){
                print(r)
            }
        }catch{
            
        }
    }
    
}
