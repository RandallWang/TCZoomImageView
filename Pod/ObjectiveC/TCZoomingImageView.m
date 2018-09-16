//
//  TCZoomingImageView.m
//  TCZoomingImageView
//
//  Created by Tianchi Wang on 2018/9/12.
//  Copyright © 2018 Tianchi Wang. All rights reserved.
//

#import "TCZoomingImageView.h"


@interface TCZoomingImageView()<UIScrollViewDelegate>

@property(nonatomic, strong)UIImageView *imageView;
@property(nonatomic, strong)UIScrollView *baseView;

@end


@implementation TCZoomingImageView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInitWithFrame:frame];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.imageView = [aDecoder decodeObjectForKey:@"imageView"];
        self.baseView = [aDecoder decodeObjectForKey:@"baseView"];
    }
    return self;
}


- (void)setUpImageView:(UIImage *)image {
    self.imageView.image = image;
}

- (void)commonInitWithFrame:(CGRect)frame {
    CGRect baseFrame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    self.baseView = [[UIScrollView alloc] initWithFrame:baseFrame];
    self.baseView.delegate = self;
    self.baseView.bounces = NO;
    self.baseView.bouncesZoom = NO;
    self.baseView.showsVerticalScrollIndicator = NO;
    self.baseView.showsHorizontalScrollIndicator = NO;
    self.baseView.maximumZoomScale = 6;
    [self addSubview:self.baseView];
    
    self.imageView = [[UIImageView alloc] initWithFrame:baseFrame];
    [self.baseView addSubview:self.imageView];
}

@end


@implementation TCZoomingImageView(scrollviewDelegate)

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}


@end
