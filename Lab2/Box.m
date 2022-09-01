//
//  Box.m
//  Lab2
//
//  Created by Yusuke K on 2022-08-31.
//

#import "Box.h"

@implementation Box {
    float _height;
    float _width;
    float _length;
}

- (instancetype)initWithHeight: (float) height width: (float) width length: (float) length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float) culcVolume {
    return _height * _width * _length;
}

@end
