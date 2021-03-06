// Copyright (c) 2017 Christian Greth <greth.christian@googlemail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "CHGInputAccessoryViewItem.h"

@implementation CHGInputAccessoryViewItem

+ (id)fixedSpace:(CGFloat)width
{
    CHGInputAccessoryViewItem *fixedSpace = [[CHGInputAccessoryViewItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixedSpace.width = width;
    
    return fixedSpace;
}

+ (id)flexibleSpace
{
    CHGInputAccessoryViewItem *flexibleSpace = [[CHGInputAccessoryViewItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    return flexibleSpace;
}

+ (CHGInputAccessoryViewItem *)buttonWithImage:(UIImage *)image
{
    CHGInputAccessoryViewItem *button = [[CHGInputAccessoryViewItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:nil action:nil];
    
    return button;
}

+ (CHGInputAccessoryViewItem *)buttonWithTitle:(NSString *)title
{
    CHGInputAccessoryViewItem *button = [[CHGInputAccessoryViewItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:nil action:nil];
    
    return button;
}

+ (CHGInputAccessoryViewItem *)separatorWithColor:(UIColor *)color height:(CGFloat)height
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1.f, height)];
    view.backgroundColor = color;
    
    CHGInputAccessoryViewItem *separator = [[CHGInputAccessoryViewItem alloc] initWithCustomView:view];
    
    return separator;
}

- (CGFloat)preferredHeight
{
    return 0.f;
}

- (void)resizeToHeight:(CGFloat)height
{
    if (!self.customView) return;
    
    CGRect frame = self.customView.frame;
    frame.size.height = height;
    self.customView.frame = frame;
}

@end
