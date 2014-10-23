//
//  selectBoxes.m
//  Frog Life
//
//  Created by Joshua Matthews on 6/1/14.
//  Copyright (c) 2014 Joshua Matthews. All rights reserved.
//

#import "selectBoxes.h"

@interface selectBoxes ()
@property (nonatomic, strong) UIImageView *mainImageView;
@property (nonatomic, strong) UIImageView *notificationImageView;
@property (nonatomic, strong) UILabel *notificationLabel;
@property (nonatomic, copy) NSString *notificationString;
@end

@implementation selectBoxes

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = frame;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame setMainImage:(UIImage *)mainImage
{
    if (self = [super initWithFrame:frame])
    {
        self.frame = frame;
        [self setMainImage:mainImage];
    }
    return self;
}

- (void)setMainImage:(UIImage *)mainImage {
    if (mainImage != nil){
        self.mainImageView = [[UIImageView alloc] initWithImage:mainImage];
    [self.mainImageView setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [self addSubview:self.mainImageView];
    } else {
        NSLog(@"main image was nil");
    }
}

- (void)notificationImage:(UIImage*)notificationImage
                 withSize:(CGSize)imageSize
      andContentNumberSetTo:(NSUInteger)contentNumber {
    
    self.notificationImageView = [[UIImageView alloc] initWithImage:notificationImage];
    [self.notificationImageView setFrame:CGRectMake(self.frame.size.width - (imageSize.width / 2), 0 - (imageSize.height / 2), imageSize.width, imageSize.height)];
    self.notificationLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, imageSize.width, imageSize.height)];
    [self setContentNumber:contentNumber];
    
    [self addSubview:self.notificationImageView];
    [self addSubview:self.notificationLabel];
}

- (void)setContentNumber:(NSUInteger)contentNumber {
    self.notificationString = [NSString stringWithFormat:@"%lu",(unsigned long)contentNumber];
    self.notificationLabel.text = self.notificationString;
    self.notificationLabel.textAlignment = NSTextAlignmentCenter;
    if (contentNumber < 10)
        self.notificationLabel.font = [UIFont fontWithName:@"Courier" size:13];
    else
        self.notificationLabel.font = [UIFont fontWithName:@"Courier" size:10];
    self.notificationLabel.center = CGPointMake(self.notificationImageView.center.x, self.notificationImageView.center.y);
}

- (void)setColorForContentNumber:(UIColor*)color {
    if (self.notificationLabel != nil){
        self.notificationLabel.textColor = color;
    }
}

- (void)hideNotificationImage {
    self.notificationImageView.hidden = YES;
    self.notificationLabel.hidden = YES;
}

- (void)unhideNotificationImage {
    self.notificationImageView.hidden = NO;
    self.notificationLabel.hidden = NO;
}

- (void)removeNotificationImage {
    if (self.notificationImageView != nil)
        [self.notificationImageView removeFromSuperview];
}

@end
