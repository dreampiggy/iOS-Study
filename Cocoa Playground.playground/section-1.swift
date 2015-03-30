// Playground - noun: a place where people can play

import UIKit

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

//****************NSData************************//

//let dataString = "This is a important data"
//let utf8DataString = dataString.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
//
//let myURL = NSURL(string: "www.dreampiggy.com")
////These NSData can't read direct by other such as println file..
//let myDataForString = NSData(data: utf8DataString!)
//let myEncodeData = myDataForString.base64EncodedStringWithOptions(NSDataBase64EncodingOptions.Encoding64CharacterLineLength)
//println(myDataForString)
//println(myEncodeData)
//
////UTF-8 ways and base64 ways
//let myDecodeString = NSString(data: myDataForString, encoding:NSUTF8StringEncoding)
//let myDecodeData = NSString(data: myDataForString, encoding:NSUTF8StringEncoding)
//
//println(myDecodeString!)
//println(myDecodeData!)
//
//var pathArray:Array = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory,NSSearchPathDomainMask.UserDomainMask,true)
//var defaultPath = pathArray[0] as String
//println(defaultPath)
//
//let writeResult = myEncodeData.writeToFile(defaultPath + "/1.txt", atomically: true, encoding: NSUTF8StringEncoding, error: nil)
//println(writeResult)
//var myMutableData = NSMutableData(length: 10)
//println(myMutableData)

//*******************NSURL && File*******************//

//let myPath = NSBundle.mainBundle().pathForResource("1.txt", ofType: "txt")
//let myApplicationDirectory = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentationDirectory, NSSearchPathDomainMask.UserDomainMask, true)
//
//var webURL = NSURL(string: "http://www.dreampiggy.com")
//var webURLTwo = webURL?.URLByAppendingPathComponent("abc", isDirectory: true)
//println(webURLTwo!)
//var deletedURL = webURLTwo?.URLByDeletingLastPathComponent
//println(deletedURL!)
//
//let component = NSURLComponents(string: "")
//component?.scheme = "https"
//component?.user = "test"
//component?.password = "fuckyou"
//component?.port = 80
//component?.host = "www.dreampiggy.com"
//component?.query = "name=还是自带URLencode"
//component?.fragment = "img1"
//println((component?.URL)!)
//
//let manager = NSFileManager.defaultManager()
//
//let URLForDirectory = manager.URLsForDirectory(NSSearchPathDirectory.ApplicationSupportDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask)
//println(URLForDirectory)
//
//
//func createFolder(name:String,baseUrl:NSURL){
//    let manager = NSFileManager.defaultManager()
//    var error:NSErrorPointer = nil
//    let folder = baseUrl.URLByAppendingPathComponent(name, isDirectory: true)
//    println("folder: \(folder)")
//    let exist = manager.fileExistsAtPath(folder.path!)
//    if !exist{
//        let createSuccess = manager.createDirectoryAtURL(folder, withIntermediateDirectories: true, attributes: nil, error: error)
//        println("create folder success")
//    }
//    else{
//        println("fuck!")
//    }
//}
//
//func createFile(name:String,fileBaseUrl:NSURL,data:NSData){
//    let manager = NSFileManager.defaultManager()
//    var error:NSErrorPointer = nil
//    let file = fileBaseUrl.URLByAppendingPathComponent(name, isDirectory: false)
//    println("file: \(file)")
//    let exist = manager.fileExistsAtPath(file.path!)
//    if !exist{
//        let createSuccess = manager.createFileAtPath(file.path!, contents: data, attributes: nil)
//        println("create file success")
//    }
//    else{
//        println("fuck!")
//    }
//}


//let myPathURL = URLForDirectory[0] as NSURL
//createFolder("myFolder", myPathURL)
//createFile("myFile.txt", myPathURL, myDataForString)


//*****************NSBundle*****************//

//let mainBundle = NSBundle.mainBundle()
//let bundlePath = mainBundle.bundlePath
//let bundleURL = mainBundle.bundleURL
//
//let bundleRootFileURL = mainBundle.URLForResource("picture", withExtension: "jpg")
//let bundleRootFilePath = mainBundle.pathForResource("picture", ofType: "jpg")
//
////get a key-value in the info.plist~~
//let identifier = mainBundle.bundleIdentifier
//let info = mainBundle.infoDictionary
//let applicationIfBackgroundOnly: AnyObject? = mainBundle.objectForInfoDictionaryKey("CFBundleSupportedPlatforms")
////2 ways to get the k-v info.plist object
//println(info!["CFBundleName"]!)




