//
//  Custom Font (ISSUE HERE).swift
//  CTFont Test
//
//  Created by Duraid Abdul on 2020-07-02.
//

import UIKit

func fourCharCode(from string : String) -> FourCharCode {
  return string.utf16.reduce(0, {$0 << 8 + FourCharCode($1)})
}

func createFont() -> CTFont {
    
    let systemFont = UIFont.systemFont(ofSize: 0)
    
    let _ctFont = CTFontCreateWithFontDescriptor(systemFont.fontDescriptor, 0, nil)
    
    let attributes = [
        kCTFontVariationAttribute: [NSNumber(value: fourCharCode(from: "wght")): 650.0]
                                          // value: 2003265652
    ] as [CFString : Any]
    
    let ctAttributes = CTFontDescriptorCreateWithAttributes(attributes as CFDictionary)
    
    let ctFont = CTFontCreateCopyWithAttributes(_ctFont, 20, nil, ctAttributes)

    return ctFont
}
