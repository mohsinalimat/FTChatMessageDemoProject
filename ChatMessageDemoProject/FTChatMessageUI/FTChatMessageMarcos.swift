//
//  FTChatMessageMarcos.swift
//  ChatMessageDemoProject
//
//  Created by liufengting on 16/2/28.
//  Copyright © 2016年 liufengting. All rights reserved.
//

import UIKit

let FTChatMessageCellReuseIndentifier = "FTChatMessageCellReuseIndentifier"

let FTScreenWidth = UIScreen.mainScreen().bounds.size.width
let FTScreenHeight = UIScreen.mainScreen().bounds.size.height

let FTDefaultMargin : CGFloat = 5.0
let FTDefaultIconToMessageMargin : CGFloat = 10.0
let FTDefaultTextMargin : CGFloat = 8.0
let FTDefaultLineSpacing : CGFloat = 2.0

let FTDefaultSectionHeight : CGFloat = 40.0
let FTDefaultIconSize : CGFloat = 30.0

let FTDefaultMessageRoundCorner : CGFloat = 8

let FTDefaultFontSize : UIFont = UIFont.systemFontOfSize(16)

let FTDefaultOutgoingColor : UIColor = UIColor(red: 1/255, green: 123/255, blue: 225/255, alpha: 1)
let FTDefaultIncomingColor : UIColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)

/**
 *  FTMarcors
 */
struct FTMarcors {
//    static let default_margin : CGFloat = 5.0
//    static let default_icon_size : CGFloat = 30.0
    


}





/**
 FTChatMessageType
 
 - Text:     Text message
 - Image:    Image message
 - Audio:    Audio message
 - Video:    Video message
 - Location: Location message
 */
enum FTChatMessageType {
    case Text
    case Image
    case Audio
    case Video
    case Location
}



class FTChatMessagePublicMethods{
    class func getHeightWithWidth(width:CGFloat,text:NSString,font:UIFont)->CGFloat{
        let paragraphStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = FTDefaultLineSpacing
        let rect = text.boundingRectWithSize(CGSizeMake(width,CGFloat(MAXFLOAT)), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName:font,NSParagraphStyleAttributeName: paragraphStyle], context: nil)
        return rect.size.height
    }
    class func getWidthWithHeight(height:CGFloat,text:NSString,font:UIFont)->CGFloat{
        let paragraphStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = FTDefaultLineSpacing
        let rect = text.boundingRectWithSize(CGSizeMake(CGFloat(MAXFLOAT),height), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName:font,NSParagraphStyleAttributeName: paragraphStyle], context: nil)
        return rect.size.width
    }
    
    
}







