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
        [self commonInit];
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

- (void)commonInit {
    self.baseView = [[UIScrollView alloc] init];
    self.baseView.delegate = self;
    self.baseView.bounces = NO;
    self.baseView.bouncesZoom = NO;
    self.baseView.showsVerticalScrollIndicator = NO;
    self.baseView.showsHorizontalScrollIndicator = NO;
    self.baseView.maximumZoomScale = 6;
    self.baseView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.baseView];
    
    NSLayoutConstraint *baseViewLeftLC = [self.baseView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor];
    NSLayoutConstraint *baseViewRightLC = [self.baseView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor];
    NSLayoutConstraint *baseViewBottomLC = [self.baseView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor];
    NSLayoutConstraint *baseViewTopLC = [self.baseView.topAnchor constraintEqualToAnchor:self.topAnchor];
    
    [NSLayoutConstraint activateConstraints:@[baseViewLeftLC, baseViewRightLC, baseViewBottomLC, baseViewTopLC]];
    
    self.imageView = [[UIImageView alloc] init];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.baseView addSubview:self.imageView];
    
    NSLayoutConstraint *imageViewLeftLC = [self.imageView.leadingAnchor constraintEqualToAnchor:self.baseView.leadingAnchor];
    NSLayoutConstraint *imageViewRightLC = [self.imageView.trailingAnchor constraintEqualToAnchor:self.baseView.trailingAnchor];
    NSLayoutConstraint *imageViewBottomLC = [self.imageView.bottomAnchor constraintEqualToAnchor:self.baseView.bottomAnchor];
    NSLayoutConstraint *imageViewTopLC = [self.imageView.topAnchor constraintEqualToAnchor:self.baseView.topAnchor];
    NSLayoutConstraint *imageViewHeightLC = [self.imageView.heightAnchor constraintEqualToAnchor:self.baseView.heightAnchor];
    NSLayoutConstraint *imageViewWidthLC = [self.imageView.widthAnchor constraintEqualToAnchor:self.baseView.widthAnchor];
    
    [NSLayoutConstraint activateConstraints:@[imageViewLeftLC, imageViewRightLC, imageViewBottomLC, imageViewTopLC, imageViewHeightLC, imageViewWidthLC]];
    
    [self.baseView layoutIfNeeded];
    [self.imageView layoutIfNeeded];
}

@end


@implementation TCZoomingImageView(scrollviewDelegate)

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}


@end
