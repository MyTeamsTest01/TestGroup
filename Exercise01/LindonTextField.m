//
//  LindonTextField.m
//  Exercise01
//
//  Created by mc on 16/7/13.
//  Copyright © 2016年 mc. All rights reserved.
//

#import "LindonTextField.h"

@implementation LindonTextField

- (CGRect)textRectForBounds:(CGRect)bounds {
    
    return CGRectInset(bounds, 50, 0);
}


- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset(bounds, 50, 0);
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
