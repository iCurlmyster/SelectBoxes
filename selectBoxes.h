//
//  selectBoxes.h
//  Frog Life
//
//  Created by Joshua Matthews on 6/1/14.
//  Copyright (c) 2014 Joshua Matthews. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface selectBoxes : UIView
- (id)initWithFrame:(CGRect)frame;
- (id)initWithFrame:(CGRect)frame setMainImage:(UIImage*)mainImage;
- (void)setMainImage:(UIImage *)mainImage;// have to set to be able to use
- (void)notificationImage:(UIImage*)notificationImage
                 withSize:(CGSize)imageSize
      andContentNumberSetTo:(NSUInteger)contentNumber;
- (void)setContentNumber:(NSUInteger)contentNumber;
- (void)setColorForContentNumber:(UIColor*)color;
- (void)hideNotificationImage;
- (void)unhideNotificationImage;
- (void)removeNotificationImage;
@end
