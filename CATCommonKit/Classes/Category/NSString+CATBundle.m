//
//  NSString+CATBundle.m
//  CATCommonKit
//
//  Created by Shihuaixing on 2020/9/16.
//

#import "NSString+CATBundle.h"

@implementation NSString (CATBundle)

- (NSString *)cat_localizable {
    NSArray *bundlePaths = [[NSBundle bundleForClass:[self class]] pathsForResourcesOfType:@"bundle" inDirectory:nil];
    if (bundlePaths.count < 1) {
        return self;
    }
    NSString *resourcePath = bundlePaths.firstObject;
    NSBundle *resourceBundle = [NSBundle bundleWithPath:resourcePath];
    NSString *ret = [resourceBundle localizedStringForKey:self value:@"" table:nil];
    return ret;
}

@end
