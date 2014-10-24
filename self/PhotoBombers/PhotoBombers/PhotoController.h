//
//  PhotoController.h
//  PhotoBombers
//
//  Created by Weinan Qiu on 2014-10-21.
//  Copyright (c) 2014 Eland. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIImage;

@interface PhotoController : NSObject

+ (void)imageForPhoto:(NSDictionary *)photo size:(NSString *)size completion:(void(^)(UIImage *image))completion;

@end
