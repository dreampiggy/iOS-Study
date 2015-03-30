// Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//typealias you = String
//
//var fuck:you = "🙀"
//
//println(fuck)
//
//assert(!fuck.isEmpty, "fuck you not nil!")//fuck must not empty
//
//var a:Int? = 5//? optional
//
//var b = "hello"
//
//var c = String(a!) + b//! optional true
//
//for iCount in 1023..<1024{
//    println(a)
//}


//*******************oprator******************//
//struct Pointer {
//    var x = 0,y = 0
//}
//
//func + (left: Pointer,right: Pointer) -> Pointer{
//    return Pointer(x:left.x + right.x,y:left.y + right.y)
//}
//func += (inout left:Pointer,right:Pointer){
//    left = left + right
//}
//
//prefix func - (cPointer: Pointer) -> Pointer{
//    return Pointer(x: -cPointer.x,y: -cPointer.y)
//}
//
//var myPointer:Pointer = Pointer(x:2,y:3)
//myPointer = myPointer + (-myPointer)
//myPointer += Pointer(x:999,y:999)
//
//prefix operator +++ {}
//prefix func +++ (inout cPointer:Pointer) -> Pointer{
//    return cPointer + cPointer + Pointer(x:1,y:1)
//}
//+++myPointer


//****************Array******************//

//var emptyArray = [String]()
//
//var myArray = ["fuck","you"]
//
//myArray.append("lala")
//
//myArray.insert("??", atIndex: 0)
////myArray += "fuck!"//Not allowed after Xcode 6.1
//myArray.isEmpty
//myArray[0] = "dudu"
//myArray.count
//myArray.removeAtIndex(0)
//myArray
//myArray.removeLast()
//myArray
//myArray.removeAll(keepCapacity: true)

//***************Dictionary*************//

//var emptyDictionary = Dictionary<String,String>()
//emptyDictionary["fuck"] = "you"
//var myDictionary = [
//    "lalala": "haha",
//    "fuck" : "you",
//    "swift" : "0.0"
//]
//emptyDictionary.updateValue("really?", forKey: "yes!")
//emptyDictionary
//emptyDictionary.removeValueForKey("fuck")
//emptyDictionary
//myDictionary.keys
//myDictionary.removeAll(keepCapacity: true)

//*************Struct******************//
//struct BookInfo{
//    var BookName:String
//    var BookNumber:Int
//    var BookPrice:Double
//}
//
//var BookGuide:BookInfo
//BookGuide = BookInfo(BookName: "guide", BookNumber: 111, BookPrice: 999)

//****************Enum******************//
//enum MyEnum{
//    case top
//    case bottom
//    case left
//    case right
//}
//
//enum MyEnumRaw:Int{
//    case A,B,C = 5,D//Auto increase
//}
//MyEnumRaw.A.rawValue
//MyEnumRaw.B.rawValue

//***************Control**************//
//var loginError = true
//if(loginError){
//    println("fuck!")
//}
//else{
//    println("Good Boy")
//}
//var choice = (3,4)
//switch (choice){
//case (1,1):
//    println("choice 0")
//case (2,2):
//    println("choice 1")
//case (3,var x)://first one is better~ this called value bindings
//    println(x)
//case (3,4):
//    fallthrough//let next case to continue
//case (3,5):
//    println(3,5)
//case let (x,y) where x == y:
//    println("haha,x == y and ont 1,1 2,2 3,3")
//default:
//    println("No choice?")
//}
//
//let numberDictionary = ["fuck":"you","fuck again":"you"]
//var counter:Int = 0
//for (name,value) in numberDictionary{
//    println("\(name) \(value)")
//}
//for aDictionary in numberDictionary{
//    println(aDictionary.0)
//}
//
//
//for var index = 0;index < 10;++index{
//    println(index)
//}
//
//for i in 1...101{
//    if(i % 2) == 1{
//        println(i)
//    }
//}
//var judge = true
//while(judge){
//    println("judge")
//    break
//}
//
//var i = 1
//do{
//    i++
//    if(i>100){
//        break
//    }
//}
//while true
//outLoop : for(var i = 0;i<10;++i){
//    println("fuck")
//    inLoop: for(var j = 0;j<10;++j){
//        println("in")
//        if(i == 1){
//            break outLoop
//        }
//    }
//}

//**************Function*******************//
//
//func eatLunch(Food:String,Price:Double) -> (Result:Bool,Site:String){
//    if(!Food.isEmpty && Price < 100){
//        return (true,"meiyuan")
//    }
//    else{
//        return (false,"sushe")
//    }
//}
//
//eatLunch("Si chuan Food!!", 99)
//
//func objectCFunc(externelParam localParam:String) -> Bool{
//    println(localParam)
//    return true
//}
//objectCFunc(externelParam: "fuck")
//
//func justTestHashParam(#myname:String,stable:Bool = true) ->Bool{
//    println(myname)
//    return stable
//}
//
//justTestHashParam(myname: "hello")
//
//func addDouble(numbers:Double ...) -> Bool{
//    println("\(numbers[0])")
//    return true
//}
//
//addDouble(1.11,2.22,3.33)
//
////in out ,like reference in C++
//func addString(inout name:String) -> (){
//    //() is seems to void and no return
//    name = "fuck"
//}
//var myname = "lizhuoli"
//addString(&myname)
//println(myname)
//
//
////function is also a var
//var addSome:(String) ->Bool = objectCFunc
////attention inout can't use in function as a var
//addSome("function")


//*****************Closure********************//

//let name = ["lizhuoli3","lizhuoli2","lizhuoli1"]
//func compareName(s1:String,s2:String) -> Bool{
//    return s1 < s2
//}
//var sortArrayByFunc = name.sorted(compareName)
//var sortArrayByClosure = name.sorted({
//    (s1:String,s2:String) -> Bool in
//    return s1 < s2
//})
////closure
////by simple
//sortArrayByClosure = sorted(name,{
//    $0 < $1
//})
//
//func functionOne(functionTwo:()->()) -> Bool{
//    functionTwo()
//    println("WTF!")
//    return true
//}
//
//functionOne({
//    println("Seems like JavaScript!")
//})
//Attention! Closure is sent by reference.So if you use the same closure to some vars,they will use the same one


//*****************SubScript****************//
//
//class SubString{
//    var str:String = ""
//    init(str:String){
//        self.str = str
//    }
//    
//    subscript(start:Int,end:Int) ->String?{
//        if start > end {
//            return nil
//        }
//        return (str as String).substringWithRange(Range(start: advance(str.startIndex, start) , end: advance(str.startIndex, end)))
//    }
//    
//    subscript(index:Int) ->String?{
//        if(index < 0 || index > countElements(str)){
//            return nil
//        }
//        else{
//            return String(Array(str)[index])
//        }
//    }
//}
//
//var str = SubString(str: "I'm lizhuoli")
//println(str[0,1])
//println(str[100])

//*****************Expression***************//
//self.xxx
//self.init()
//self[xxx]
//Like this


//super.xxx
//super.init()
//super[xxx]
//like super

//var poNum = Int.max
//poNum = .min
//use this to get the same type as it init


//****************OOP********************//
//****************Class******************//
//class FriendPerson{
//    var name:String!
//}
//class HighCostClass{
//    
//}
//class Person{
//    var name:String = ""
//    var age:Int = 0
//    var sex:String = ""
//    lazy var fuckLazy:HighCostClass = HighCostClass()//Which member will cost many resource.Lazy make it initial later when first in use
//    let myfriend:FriendPerson = FriendPerson()
//    class var human:Bool {return true}
//    
//    init(){
//        
//    }
//    //initial
//    init(name newName:String,age newAge:Int,sex newSex:String){
//        self.name = newName
//        self.age = newAge
//        self.sex = newSex
//    }
//    //destory
//    deinit{
//    }
//    
//    internal func say(){
//        println("I'm \(name) && age\(age) && sex:\(sex)")
//    }
//    
//    internal func setName(name newName:String) {
//        self.name = newName
//    }
//    
//    internal func getName() ->String{
//        return name
//    }
//    
//    class func getHuman() ->Bool{
//        return human
//    }
//}
//var person1 = Person(name: "lizhuoli", age: 20, sex: "boy")
//var person2 = Person()
//Person.getHuman()
//person1.say()
//person1.getName()
//person2.setName(name: "look!")
//println(person2.getName())
//println(Person.human)
//
////Crazy? let can be changed when it is a class.Because itselft is a class that can't change but its member can be changed
//person2.myfriend.name = "???"


//class Calculator{
//    var a:Int
//    var b:Int
//    var result:Int!
//    var sum:Int{
//        return a+b
//    }
//    var sub:Int{
//        return a-b
//    }
//    //Real impletment is here
//    var subDetails:Int{
//        get{
//            return a-b
//        }
//    }
//    var mul:Int{
//        return a*b
//    }
//    var div:Int{
//        return a/b
//    }
//    var temp:Int!{
//        didSet{
//            self.result = temp
//        }
//    }
//    init(numberA newA:Int,numberB newB:Int){
//        self.a = newA
//        self.b = newB
//        self.temp = 0
//    }
//}
//
//var myCalculator = Calculator(numberA: 1, numberB: 2)
//println(myCalculator.sub)
//
//myCalculator.temp = 2
//println(myCalculator.result)
////look when temp set,result will be set

//class Test{
//    private struct sTotal{
//        static var total:String = ""
//    }
//    
//    class var total:String{
//        get{
//            return sTotal.total
//        }
//        set{
//            sTotal.total = newValue
//        }
//    }
//    init(){}
//}
//println(Test.total)
//Test.total = "..."

//Fuck! No static in class????Use class var????= =....

//******************Inheritance Polyorphism***********//
//
//class Living{
//    func grow(){
//        println("I'm growing~")
//    }
//}
//
//class Animail:Living{
//    //the child class can't override this method
//    final func move(){
//        
//    }
//}
//
//class Plant:Living{
//    var leaves:Array<Int>!
//}
//class Fruit:Plant{
//    var name:String = "Fruit"
//    func show(){
//        println("What's your name?\(name)")
//    }
//}
//
//class Peach:Fruit{
//    override var name:String{
//        get{
//            return super.name
//        }
//        set{
//            super.name = newValue
//        }
//    }
//    override func grow() {
//        println("I'm growing and I'm a peach~~~")
//    }
//    func setName(newName:String){
//        self.name = newName
//    }
//}
//
//class Apple:Fruit{
//    override var name:String{
//        get{
//            return super.name
//        }
//        set{
//            super.name = newValue
//        }
//    }
//    override func grow(){
//        println("I'm growing and I'm an ~~~")
//    }
//}
//var myPeach = Peach()
//var myApple = Apple()
//Fruit().show()
//myPeach.grow()
//myPeach.setName("peach~~~~~")
//myPeach.show()
//println("\n")
//var FruitList:Array<Fruit> = [myPeach,myApple]
//for fruit in FruitList{
//    fruit.grow()
//}

//*****************Extension****************//
//extension Int{
//    func getIntMaxAndMin() -> (Max:Int,Min:Int){
//        return (Max:Int.max,Min:Int.min)
//    }
//}
//var myInt = 5
//myInt.getIntMaxAndMin()

//*****************Protocol****************//
//Like interface in Java
//protocol Bird{
//    func song()
//}
//class Song{
//    var songName:String
//    func getSong() -> String {
//        return self.songName
//    }
//    init(name:String){
//        self.songName = name
//    }
//}
//class Parrot:Bird{
//    var mySong:Song//Combine is better sometimes than the protocol
//    func song(){
//        println("I'm parrot!")
//        println(mySong.songName)
//    }
//    init(name:String){
//        self.mySong = Song(name: name)
//    }
//}
//class Pigeon:Bird{
//    func song() {
//        println("I'm a pigeon!")
//    }
//}
//var myBird1:Bird = Parrot(name:"wo shi yi zhi xiao ying wo ~~~")
//var myBird2:Bird = Pigeon()
//myBird1.song()
//myBird2.song()

//*************Optional Chain****************//
//var optionalValue:String? = "lalala"//? to use for check
//if optionalValue != nil{
//    println(optionalValue)
//    println(countElements(optionalValue!))//! to tell the compiler that this value can not be nil
//}
//else{
//    println("fuck")
//}
//
//
//class optionalOne{
//    var name:String?
//    init(){
//        self.name = "lalala"
//    }
//}
//class optionalTwo{
//    var optionalValue:optionalOne? = optionalOne()
//}
//class optionalThree{
//    var optionalValue:optionalTwo? = optionalTwo()
//    func getValue() ->String?{
//        //ok......really crazy?
//        return optionalValue?.optionalValue?.name?
//    }
//}
//
//var myOption = optionalThree()
//println(myOption.getValue()!)
//
////In a word.? to pack a type with nil,! to unpack it(But if it not packed,the runtime will throw a error)

//*********************Pattern****************//

//struct Student:Hashable {
//    var no:Int?
//    var name:Int?
//    var hashValue:Int{
//        return self.no!
//    }
//}
//func == (lhs: Student, rhs: Student) -> Bool{
//    return lhs.no == rhs.no
//}
//struct School {
//    var name:String?
//    var addr:String
//}
//
//var students:Dictionary<Student,School> = Dictionary(minimumCapacity: 2)
//println(students)
//
//
//
//func swapT<T>(inout a:T,inout b:T){
//    var temp = a
//    a = b
//    b = temp
//}
//var a:Double = 2.0
//var b:Double = 3.0
//var aString:String = "a"
//var bString:String = "b"
//swapT(&a, &b)
//println(a)
//swapT(&aString, &bString)
//println(bString)

//*****************With NS Cocoa Framework**************//
//import Foundation
//
//class swiftStyle: NSObject{
//    func totalTest(){
//        printResult()
//    }
//    
//    func printResult(){
//        
//        //下面是Objective-C语法下NSString的初始化方法之一
//        //        NSString *string = [[NSString alloc] initWithFormat:@"%@ %@",@"Hello", @"World"];
//        
//        var string = NSString(format:"%@ %@","hello","world")
//        string = string.lowercaseString
//        
//        // 调用stringByReplacingOccurrencesOfString方法替换字符中得world位swfit
//        string = string.stringByReplacingOccurrencesOfString("world",withString:"swift")
//        println(string)
//    }
//}
//var mySwift = swiftStyle()
//mySwift.printResult()
//
//let myString:NSString = "Apple,ObjectiveC,HAHA"
//let subString = myString.componentsSeparatedByString(",")
//for sub:AnyObject in subString{
//    println(sub)
//}
//let start:Int = 1
//let length:Int = 2
//var objRang = NSRange(location:start,length:length)
//let rangOfString = myString.rangeOfString("objectivec",options:NSStringCompareOptions.CaseInsensitiveSearch)//case insensitive
//println("\(myString.substringWithRange(rangOfString))")
//
//var myArray = [1,2,3,4,5,6,7]
//var myArrayObj = NSArray(array:myArray)
//let myIndex = NSIndexSet(indexesInRange: objRang)
//println(myArrayObj.objectsAtIndexes(myIndex))
//println(find(myArray,8))
//
//var mySetSwift = ["a","b","c","a","b","c","d"]
//var mySet = NSSet(array:mySetSwift)
//println(mySet)
//println(mySet.count)
//var myMutableSet = NSMutableSet(array: mySetSwift)
//myMutableSet.addObject("lalala")
//println(myMutableSet)


let dataString = "This is a important data"
let utf8DataString = dataString.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)

let myURL = NSURL(string: "http://www.dreampiggy.com")
//These NSData can't read direct by other such as println file..
let myDataForString = NSData(data: utf8DataString!)
let myEncodeData = myDataForString.base64EncodedStringWithOptions(NSDataBase64EncodingOptions.Encoding64CharacterLineLength)
let myDataForURL = NSData(contentsOfURL: myURL!)
println(myDataForString)
println(myEncodeData)

//UTF-8 ways and base64 ways
let myDecodeString = NSString(data: myDataForString, encoding:NSUTF8StringEncoding)
let myDecodeData = NSString(data: myDataForString, encoding:NSUTF8StringEncoding)

println(myDecodeString!)
println(myDecodeData!)

var pathArray:Array = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory,NSSearchPathDomainMask.UserDomainMask,true)
var defaultPath = pathArray[0] as String
println(defaultPath)

let writeResult = myEncodeData.writeToFile(defaultPath + "/1.txt", atomically: true, encoding: NSUTF8StringEncoding, error: nil)
println(writeResult)
var myMutableData = NSMutableData(length: 10)
println(myMutableData)


let myPath = NSBundle.mainBundle().pathForResource("1.txt", ofType: "txt")
let myApplicationDirectory = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentationDirectory, NSSearchPathDomainMask.UserDomainMask, true)

