//
//  CATCommonKit.h
//  Pods
//
//  Created by Shihuaixing on 2020/9/15.
//

/**
 Synthsize a weak or strong reference.
 
 Example:
    @weakify(self)
    [self doSomething^{
        @strongify(self)
        if (!self) return;
        ...
    }];

 */
#ifndef weakify
    #if DEBUG
        #if __has_feature(objc_arc)
        #define weakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
        #else
        #define weakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
        #endif
    #else
        #if __has_feature(objc_arc)
        #define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
        #else
        #define weakify(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
        #endif
    #endif
#endif

#ifndef strongify
    #if DEBUG
        #if __has_feature(objc_arc)
        #define strongify(object) autoreleasepool{} __typeof__(object) object = weak##_##object;
        #else
        #define strongify(object) autoreleasepool{} __typeof__(object) object = block##_##object;
        #endif
    #else
        #if __has_feature(objc_arc)
        #define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
        #else
        #define strongify(object) try{} @finally{} __typeof__(object) object = block##_##object;
        #endif
    #endif
#endif


#ifndef CATCommonKit_h
#define CATCommonKit_h

#import <CATCommonKit/NSAttributedString+CATSize.h>
#import <CATCommonKit/NSAttributedString+CATText.h>
#import <CATCommonKit/NSString+CATSize.h>
#import <CATCommonKit/UIView+CATSize.h>
#import <CATCommonKit/UIColor+CATDecimal.h>

#import <CATCommonKit/NSDate+CAT.h>

#import <CATCommonKit/CATDateUtils.h>
#import <CATCommonKit/CATFileUtils.h>
#import <CATCommonKit/CATImageUtils.h>

#endif /* CATCommonKit_h */
