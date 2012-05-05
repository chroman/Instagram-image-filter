//
//  UIImage+Cngram.m
//  Cngram
//
//  Created by Chen Changneng on 12-4-24.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UIImage+Cngram.h"
#import "UIImage+Filter.h"

@implementation UIImage (Cngram)

- (UIImage*)scaleToSize:(CGSize)size  
{  
    UIGraphicsBeginImageContext(size);
    CGContextRef contex = UIGraphicsGetCurrentContext();
    
    // back ground
    [[UIColor blackColor] setFill];
    CGContextFillRect(contex, CGRectMake(0, 0, size.width, size.height));
    
    // draw image
    CGFloat scale = MIN(size.width / self.size.width, size.height / self.size.height);
    CGFloat height = self.size.height * scale;
    CGFloat width = self.size.width * scale;
    [self drawInRect:CGRectMake(size.width / 2 - width / 2, size.height / 2 - height / 2, width, height)];
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return scaledImage;  
}  


- (UIImage *) e00 {
    return self;
}

- (UIImage *) e01 {
    Curve curve = {
        {25,25,26,26,27,27,28,28,29,30,30,31,31,32,32,33,34,34,35,35,36,36,37,37,38,39,39,40,40,41,41,42,43,43,44,45,46,46,47,48,49,49,50,51,52,52,53,54,55,55,56,57,58,58,59,60,61,61,62,63,64,64,65,66,67,67,68,69,70,70,71,72,73,73,74,75,76,76,77,78,79,79,80,81,82,83,83,84,85,86,87,87,88,89,90,91,92,92,93,94,95,96,96,97,98,99,100,100,101,102,103,104,105,105,106,107,108,109,109,110,111,112,113,113,114,115,116,117,118,118,119,120,121,122,122,123,124,125,126,126,127,128,129,130,131,131,132,133,134,135,136,137,138,138,139,140,141,142,143,144,145,145,146,147,148,149,149,150,151,152,153,153,154,155,156,157,158,158,159,160,161,162,163,164,165,165,166,167,168,169,170,171,172,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,187,188,189,190,191,191,192,193,194,195,195,196,197,198,199,200,200,201,202,203,204,205,206,207,207,208,209,210,211,212,213,214,214,215,216,217,218,218,219,220,221,222,222,223,224,225,226},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,5,5,6,6,7,7,8,9,9,10,10,11,11,12,13,13,14,15,16,17,18,19,20,20,21,22,23,24,25,26,27,28,29,30,32,33,34,36,37,38,40,41,42,44,45,46,48,49,51,52,54,56,57,59,61,62,64,65,67,69,70,72,74,75,77,79,81,83,85,87,89,90,92,94,96,98,100,102,104,106,108,110,112,114,116,118,121,123,125,127,129,131,133,135,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,168,171,172,174,176,178,180,181,183,185,187,189,190,192,194,196,198,200,201,203,204,206,207,209,210,212,213,215,216,218,219,221,222,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,241,241,242,242,243,243,244,244,245,245,246,246,247,247,248,248,249,249,249,249,250,250,250,250,251,251,251,251,252,252,252,252,253,253,253,253,253,253,253,253,254,254,254,254,254,254,254,254},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,5,5,6,6,7,7,8,9,9,10,10,11,11,12,13,13,14,15,16,17,18,19,20,20,21,22,23,24,25,26,27,28,29,30,32,33,34,36,37,38,40,41,42,44,45,46,48,49,51,52,54,56,57,59,61,62,64,65,67,69,70,72,74,75,77,79,81,83,85,87,89,90,92,94,96,98,100,102,104,106,108,110,112,114,116,118,121,123,125,127,129,131,133,135,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,168,171,172,174,176,178,180,181,183,185,187,189,190,192,194,196,198,200,201,203,204,206,207,209,210,212,213,215,216,218,219,221,222,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,241,241,242,242,243,243,244,244,245,245,246,246,247,247,248,248,249,249,249,249,250,250,250,250,251,251,251,251,252,252,252,252,253,253,253,253,253,253,253,253,254,254,254,254,254,254,254,254}
    };
    return [[[self applyCurve:curve]
             overlay:[UIImage imageNamed:@"circle01_1.png"] ratio:0.8]
            multiply:[UIImage imageNamed:@"border01.png"] ratio:1];
}

- (UIImage *) e02 {
    Curve curve = {
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,2,2,3,3,3,4,4,4,5,5,6,6,7,8,9,10,10,11,12,13,14,14,15,16,17,18,19,20,21,22,24,25,26,27,29,30,31,32,34,35,36,37,39,40,42,43,45,47,48,50,52,53,55,56,58,60,61,63,65,67,69,71,73,75,78,80,82,84,86,89,91,93,95,97,100,102,105,107,110,113,115,118,121,123,126,128,131,134,136,139,142,145,148,151,154,157,160,163,166,169,172,175,178,181,184,187,191,193,196,199,201,204,207,209,212,215,217,220,223,225,228,231,234,234,234,234,235,235,235,236,236,236,237,237,237,238,238,238,239,239,239,239,240,240,240,241,241,241,242,242,242,243,243,243,244,244,244,244,244,244,245,245,245,245,245,246,246,246,246,246,247,247,247,247,247,247,248,248,248,248,248,249,249,249,249,249,250,250,250,250,250,250,250,250,251,251,251,251,251,251,251,251,252,252,252,252,252,252,252,252,253,253,253,253,253,253,253,253,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,2,2,3,3,3,4,4,4,5,5,6,6,7,8,9,10,10,11,12,13,14,14,15,16,17,18,19,20,21,22,24,25,26,27,29,30,31,32,34,35,36,37,39,40,42,43,45,47,48,50,52,53,55,56,58,60,61,63,65,67,69,71,73,75,78,80,82,84,86,89,91,93,95,97,100,102,105,107,110,113,115,118,121,123,126,128,131,134,136,139,142,145,148,151,154,157,160,163,166,169,172,175,178,181,184,187,191,193,196,199,201,204,207,209,212,215,217,220,223,225,228,231,234,234,234,234,235,235,235,236,236,236,237,237,237,238,238,238,239,239,239,239,240,240,240,241,241,241,242,242,242,243,243,243,244,244,244,244,244,244,245,245,245,245,245,246,246,246,246,246,247,247,247,247,247,247,248,248,248,248,248,249,249,249,249,249,250,250,250,250,250,250,250,250,251,251,251,251,251,251,251,251,252,252,252,252,252,252,252,252,253,253,253,253,253,253,253,253,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,2,2,3,3,3,4,4,4,5,5,6,6,7,8,9,10,10,11,12,13,14,14,15,16,17,18,19,20,21,22,24,25,26,27,29,30,31,32,34,35,36,37,39,40,42,43,45,47,48,50,52,53,55,56,58,60,61,63,65,67,69,71,73,75,78,80,82,84,86,89,91,93,95,97,100,102,105,107,110,113,115,118,121,123,126,128,131,134,136,139,142,145,148,151,154,157,160,163,166,169,172,175,178,181,184,187,191,193,196,199,201,204,207,209,212,215,217,220,223,225,228,231,234,234,234,234,235,235,235,236,236,236,237,237,237,238,238,238,239,239,239,239,240,240,240,241,241,241,242,242,242,243,243,243,244,244,244,244,244,244,245,245,245,245,245,246,246,246,246,246,247,247,247,247,247,247,248,248,248,248,248,249,249,249,249,249,250,250,250,250,250,250,250,250,251,251,251,251,251,251,251,251,252,252,252,252,252,252,252,252,253,253,253,253,253,253,253,253,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254}
    };

    return [[[[self applyCurve:curve]
             overlay:[UIImage imageNamed:@"circle02_1.png"] ratio:1.25]
            multiply:[UIImage imageNamed:@"circle02_0.png"] ratio:0.2]
                mask:[UIImage imageNamed:@"border02_0.png"]];
}

- (UIImage *) e03 {
    Curve curve = {
        {12,12,13,14,14,15,16,16,17,18,18,19,20,20,21,22,23,24,26,28,30,31,33,35,37,38,40,42,44,45,47,49,51,52,53,54,56,57,58,59,61,62,63,64,66,67,68,69,71,71,72,73,74,74,75,76,77,77,78,79,80,80,81,82,83,83,84,85,85,86,87,87,88,89,89,90,91,91,92,93,94,94,95,95,96,96,97,97,98,99,99,100,100,101,101,102,103,103,105,106,107,108,110,111,112,113,114,116,117,118,119,120,122,123,125,126,128,129,131,132,134,135,137,138,140,141,143,144,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,180,180,181,182,183,184,184,185,186,187,188,188,189,190,191,192,193,193,194,194,195,196,196,197,198,198,199,199,200,201,201,202,203,203,203,203,205,205,206,206,207,207,208,208,209,209,210,210,211,211,212,213,213,214,215,215,216,217,217,218,219,219,220,221,222,222,223,224,225,226,226,227,228,229,230,230,231,232,233,234,235,235,236,237,237,238,239,239,240,241,241,242,243,243,244,245},
        {0,0,0,0,0,0,1,1,1,1,1,2,2,2,2,2,3,4,5,6,7,8,10,11,12,13,14,16,17,18,19,20,22,23,24,26,27,29,30,32,33,34,36,37,39,40,42,43,45,46,47,48,49,50,51,52,54,55,56,57,58,59,60,61,63,64,65,66,68,69,70,71,73,74,75,76,78,79,80,81,83,84,85,86,88,89,90,91,93,94,95,96,98,99,100,101,103,103,106,108,110,111,113,115,117,118,120,122,124,125,127,129,131,132,134,136,137,139,141,142,144,146,147,149,151,152,154,156,158,159,160,161,162,163,164,165,167,168,169,170,171,172,173,174,176,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,191,192,193,193,194,195,195,196,197,197,198,199,199,200,201,202,202,203,203,203,203,205,205,206,206,207,207,208,208,209,209,210,210,211,211,212,212,213,213,214,214,215,215,216,216,217,217,218,218,219,219,220,220,221,221,222,223,223,224,224,225,225,226,227,227,228,229,229,230,231,231,232,233,233,234,235,235,236,237,238,238,239,240,240,241,242,242,243,244,244,245,246,246,247,248},
        {18,19,21,23,25,26,28,30,32,33,35,37,39,40,42,44,46,47,48,50,51,52,54,55,57,58,59,61,62,63,65,66,68,69,70,71,73,74,75,76,78,79,80,81,83,84,85,86,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,103,105,106,107,108,109,111,112,113,114,115,117,118,119,120,121,123,124,125,126,127,128,130,131,132,133,134,136,137,138,139,140,142,143,145,147,149,151,152,154,156,158,160,161,163,165,167,169,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,188,188,189,190,191,192,193,194,195,195,196,197,198,199,200,201,202,202,203,203,205,206,206,207,208,209,210,210,211,212,213,214,215,215,215,216,216,217,217,218,218,218,219,219,220,220,221,221,222,222,222,223,223,223,224,224,225,225,225,226,226,226,227,227,228,228,228,229,229,229,230,230,231,231,231,232,232,232,233,233,234,234,235,235,236,236,237,237,238,238,239,239,240,240,241,241,242,242,242,243,243,244,244,245,245,245,246,246,247,247,248,248,249,249,249,250,250,250,251,251,252,252,252,253,253,253,254,254}
    };
    
    return [[[[self applyCurve:curve]
              overlay:[UIImage imageNamed:@"circle03_1.png"] ratio:1]
             multiply:[UIImage imageNamed:@"circle03_0.png"] ratio:0.4]
            lighten:[UIImage imageNamed:@"border03.png"] ratio:1];
}

-(UIImage *) e04 {
    Curve curve = {
        {12,12,13,14,14,15,16,16,17,18,18,19,20,20,21,22,23,24,26,28,30,31,33,35,37,38,40,42,44,45,47,49,51,52,53,54,56,57,58,59,61,62,63,64,66,67,68,69,71,71,72,73,74,74,75,76,77,77,78,79,80,80,81,82,83,83,84,85,85,86,87,87,88,89,89,90,91,91,92,93,94,94,95,95,96,96,97,97,98,99,99,100,100,101,101,102,103,104,105,106,107,108,110,111,112,113,114,116,117,118,119,120,122,123,125,126,128,129,131,132,134,135,137,138,140,141,143,144,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,180,180,181,182,183,184,184,185,186,187,188,188,189,190,191,192,193,193,194,194,195,196,196,197,198,198,199,199,200,201,201,202,203,203,204,204,205,205,206,206,207,207,208,208,209,209,210,210,211,211,212,213,213,214,215,215,216,217,217,218,219,219,220,221,222,222,223,224,225,226,226,227,228,229,230,230,231,232,233,234,235,235,236,237,237,238,239,239,240,241,241,242,243,243,244,245},
        {0,0,0,0,0,0,1,1,1,1,1,2,2,2,2,2,3,4,5,6,7,8,10,11,12,13,14,16,17,18,19,20,22,23,24,26,27,29,30,32,33,34,36,37,39,40,42,43,45,46,47,48,49,50,51,52,54,55,56,57,58,59,60,61,63,64,65,66,68,69,70,71,73,74,75,76,78,79,80,81,83,84,85,86,88,89,90,91,93,94,95,96,98,99,100,101,103,104,106,108,110,111,113,115,117,118,120,122,124,125,127,129,131,132,134,136,137,139,141,142,144,146,147,149,151,152,154,156,158,159,160,161,162,163,164,165,167,168,169,170,171,172,173,174,176,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,191,192,193,193,194,195,195,196,197,197,198,199,199,200,201,202,202,203,203,204,204,205,205,206,206,207,207,208,208,209,209,210,210,211,211,212,212,213,213,214,214,215,215,216,216,217,217,218,218,219,219,220,220,221,221,222,223,223,224,224,225,225,226,227,227,228,229,229,230,231,231,232,233,233,234,235,235,236,237,238,238,239,240,240,241,242,242,243,244,244,245,246,246,247,248},
        {18,19,21,23,25,26,28,30,32,33,35,37,39,40,42,44,46,47,48,50,51,52,54,55,57,58,59,61,62,63,65,66,68,69,70,71,73,74,75,76,78,79,80,81,83,84,85,86,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,111,112,113,114,115,117,118,119,120,121,123,124,125,126,127,128,130,131,132,133,134,136,137,138,139,140,142,143,145,147,149,151,152,154,156,158,160,161,163,165,167,169,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,188,188,189,190,191,192,193,194,195,195,196,197,198,199,200,201,202,202,203,204,205,206,206,207,208,209,210,210,211,212,213,214,215,215,215,216,216,217,217,218,218,218,219,219,220,220,221,221,222,222,222,223,223,223,224,224,225,225,225,226,226,226,227,227,228,228,228,229,229,229,230,230,231,231,231,232,232,232,233,233,234,234,235,235,236,236,237,237,238,238,239,239,240,240,241,241,242,242,242,243,243,244,244,245,245,245,246,246,247,247,248,248,249,249,249,250,250,250,251,251,252,252,252,253,253,253,254,254}
    };
    
    return [[[[[[[self applyCurve:curve]
                 linearDodge:[UIImage imageNamed:@"grain04_0.png"] ratio:1]
                linearDodge:[UIImage imageNamed:@"grain04_0.png"] ratio:1]
               overlay:[UIImage imageNamed:@"grain04_1.png"] ratio:0.8]
              overlay:[UIImage imageNamed:@"circle04_1.png"] ratio:1]
             multiply:[UIImage imageNamed:@"circle04_0.png"] ratio:0.6]
            multiply:[UIImage imageNamed:@"border04.png"] ratio:1];
}

-(UIImage *) e05 {
    Curve curve = {
        {62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,62,63,64,64,65,66,66,67,68,68,69,70,70,71,72,73,74,75,76,78,79,80,82,83,84,86,87,88,90,91,92,94,95,96,97,98,99,100,101,103,104,105,106,107,108,109,110,112,113,114,116,117,118,120,121,123,124,125,127,128,129,131,132,134,135,136,137,139,140,141,143,144,145,147,148,149,151,152,153,155,156,157,158,159,160,161,162,164,165,166,167,168,169,170,171,173,173,174,174,175,176,176,177,178,178,179,179,180,181,181,182,183,183,184,184,185,185,186,186,187,188,188,189,189,190,190,191,192,192,193,193,194,194,195,195,196,196,197,197,198,198,199,199,200,200,200,201,201,201,202,202,203,203,203,204,204,204,205,205,206,206,206,207,207,207,208,208,209,209,209,210,210,210,211,211,212,212,212,213,213,213,214,214,215,215,215,216,216,216,217,217},
        {1,1,2,2,3,4,4,5,6,6,7,7,8,9,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,29,30,31,32,33,35,36,37,38,39,41,42,43,44,45,47,48,49,51,52,53,55,56,58,59,60,62,63,64,66,67,69,70,72,73,75,76,78,79,81,83,84,86,87,89,90,92,94,95,97,99,101,102,104,106,108,109,111,113,115,116,118,120,122,123,124,126,127,129,130,132,133,134,136,137,139,140,142,143,145,146,148,150,151,153,155,156,158,160,161,163,165,166,168,170,172,173,175,176,178,179,181,182,184,185,187,188,190,191,193,194,196,196,197,198,198,199,200,200,201,202,202,203,204,204,205,206,207,207,208,208,209,210,210,211,212,212,213,213,214,215,215,216,217,217,218,218,219,220,220,221,222,222,223,223,224,225,225,226,227,227,228,228,229,229,230,230,231,231,232,232,233,233,234,234,235,235,235,236,236,237,237,238,238,238,239,239,240,240,241,241,242,242,242,242,243,243,243,244,244,244,245,245,245,246,246,246,247,247,248,248,249,249,250,250,251,251,252,252,253,253,254,254},
        {104,104,105,105,106,106,107,107,108,109,109,110,110,111,111,112,113,113,114,115,115,116,117,117,118,119,119,120,121,121,122,123,124,124,125,126,127,127,128,129,130,130,131,132,133,133,134,135,136,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,168,169,170,171,172,173,174,175,177,178,179,180,181,182,183,184,186,186,187,188,189,190,190,191,192,193,194,194,195,196,197,198,199,199,200,200,201,201,202,202,203,204,204,205,205,206,206,207,208,208,209,209,210,210,211,211,212,212,213,213,214,214,215,215,216,216,216,217,217,218,218,219,219,219,220,220,221,221,222,222,223,223,223,224,224,225,225,226,226,226,227,227,228,228,229,229,230,230,230,231,231,231,232,232,233,233,233,234,234,234,235,235,236,236,236,237,237,237,238,238,239,239,239,240,240,240,241,241,242,242,242,242,243,243,243,243,244,244,244,244,245,245,245,245,246,246,246,246,247,247,247,247,248,248,248,248,249,249,249,249,250,250,250,250,251,251,251,252,252,252,253,253,253,254,254,254}
    };

    return [[[[[self applyCurve:curve]
               overlay:[UIImage imageNamed:@"grain05.png"] ratio:0.4]
              overlay:[UIImage imageNamed:@"circle05_1.png"] ratio:1]
             multiply:[UIImage imageNamed:@"circle05_0.png"] ratio:0.4]
            lighten:[UIImage imageNamed:@"border05.png"] ratio:1];
}

-(UIImage *) e06 {    
    return [[self ink]
            lighten:[UIImage imageNamed:@"border06.png"] ratio:1];
}

-(UIImage *) e07 {
    Curve curve = {
        {25,25,25,26,26,27,27,28,28,28,29,29,30,30,31,31,32,32,33,34,35,35,36,37,38,38,39,40,41,41,42,43,44,44,45,46,47,47,48,49,50,50,51,52,53,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,77,78,79,81,82,83,85,86,87,89,90,91,93,94,95,96,98,99,100,102,103,104,106,107,108,110,111,112,114,115,116,118,119,120,122,123,125,126,127,129,130,131,133,134,136,137,138,139,140,141,143,144,145,146,147,149,150,151,152,153,155,156,157,158,160,161,162,163,165,166,167,168,170,171,172,173,175,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,190,191,192,193,194,194,195,196,197,198,198,199,200,201,202,203,203,204,205,205,206,207,207,208,209,209,210,211,211,212,213,214,214,215,215,216,217,217,218,219,219,220,220,221,222,222,223,224,224,224,225,225,226,226,227,227,227,228,228,229,229,230,230,231,231,231,232,232,233,233,234,234,234,235,235,236,236,237,237,238,238,238,239,239,240,240,241,241,241,242,242,243,243,244,244},
        {12,12,13,13,14,14,15,15,16,17,17,18,18,19,19,20,21,21,22,22,23,24,24,25,26,26,27,27,28,29,29,30,31,31,32,33,34,35,36,37,38,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,62,63,65,66,68,69,71,72,74,75,77,78,80,81,83,84,86,87,89,90,92,93,95,96,98,100,101,103,104,106,107,109,111,112,114,116,118,120,122,124,126,127,129,131,133,135,137,139,141,142,143,145,146,147,149,150,152,153,154,156,157,158,160,161,163,164,165,167,168,170,171,173,174,175,177,178,180,181,183,184,186,186,187,188,189,190,191,192,193,193,194,195,196,197,198,199,200,200,201,202,203,204,204,205,206,207,208,208,209,210,211,212,213,213,214,214,215,215,216,216,217,218,218,219,219,220,220,221,222,222,223,223,224,224,225,225,226,227,227,228,228,229,229,230,231,231,231,232,232,233,233,234,234,234,235,235,236,236,237,237,238,238,238,238,239,239,239,240,240,240,241,241,241,242,242,242,243,243,243,243,244,244,244,245,245,245,246,246,246,247,247,247},
        {6,6,6,7,7,8,8,9,9,9,10,10,11,11,12,12,13,13,14,14,15,16,16,17,18,18,19,19,20,21,21,22,23,23,24,25,26,27,27,28,29,30,31,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,56,57,58,60,61,63,64,65,67,68,69,71,72,74,75,77,78,80,82,83,85,87,88,90,91,93,95,96,98,100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,133,135,136,138,140,141,143,145,146,148,149,151,153,154,156,158,159,161,162,164,165,167,168,170,172,173,175,176,178,179,181,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,199,200,201,202,203,203,204,205,206,207,207,208,209,210,211,212,212,213,214,214,215,216,216,217,218,218,219,220,220,221,222,223,223,224,224,225,225,226,226,227,228,228,229,229,230,230,231,232,232,232,233,233,234,234,235,235,235,236,236,237,237,238,238,239,239,239,240,240,240,241,241,242,242,242,243,243,243,244,244,245,245,245,246,246,246,247,247,248,248,248,249,249,249,250,250}
    };
    return [[[[[[self applyCurve:curve]
                 overlay:[UIImage imageNamed:@"grain07.png"] ratio:0.2]
              overlay:[UIImage imageNamed:@"circle07_1.png"] ratio:1]
             overlay:[UIImage imageNamed:@"circle07_1.png"] ratio:1 channel:3]
               multiply:[UIImage imageNamed:@"circle07_0.png"] ratio:0.2]
              multiply:[UIImage imageNamed:@"border07.png"] ratio:1];
}

-(UIImage *) e08 {
    Curve curve = {
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,5,5,6,7,7,8,9,9,10,10,11,12,12,13,14,14,15,16,17,18,19,20,21,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,37,38,39,40,41,42,43,44,46,47,49,50,52,53,55,56,58,60,61,63,64,66,67,69,71,72,74,76,78,80,81,83,85,87,89,90,92,94,96,98,100,101,103,105,107,109,110,112,114,116,118,119,121,123,125,127,129,130,132,134,136,138,140,142,144,145,147,149,151,153,155,157,159,160,162,164,166,168,169,171,173,175,177,178,180,182,184,186,188,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,203,203,203,204,204,204,205,205,205,206,206,206,207,207,207,208,208,208,209,209,210,210,211,211,211,212,212,213,213,214,214,215,215,215,215,216,216,216,217,217,217,218,218,218,219,219,219,220,220,220,221,221,222,222,223,223,223,224,224,225,225,226,226,227,227,228,228,229,229,230,230,231,231,232,232,233,233,234,234},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,3,3,4,4,4,5,5,6,6,7,7,8,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,29,30,32,33,34,36,37,38,40,41,42,44,45,47,49,51,53,55,57,59,60,62,64,66,68,70,72,74,76,78,80,82,84,87,89,91,93,95,98,100,102,104,106,109,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,141,143,145,147,149,151,153,155,157,159,161,163,165,167,169,171,172,174,175,177,178,180,181,183,185,186,188,189,191,192,194,196,196,197,198,199,200,201,202,203,203,204,205,206,207,208,209,210,210,211,211,212,212,213,213,214,215,215,216,216,217,217,218,219,219,219,220,220,221,221,222,222,222,223,223,224,224,225,225,226,226,227,227,228,228,229,229,230,230,231,231,232,232,233,233,234,234,234,235,235,236,236,237,237,237,238,238,239,239,240,240,241,241,242,242,243,243,244,244,245,246,246,247,247,248,248,249,250,250,250,250,251,251,251,252,252,252,253,253,253,254,254,254},
        {35,35,35,35,35,35,35,35,34,34,34,34,34,34,34,34,33,33,34,35,35,36,37,37,38,39,39,40,41,41,42,43,44,45,47,48,50,51,53,54,56,58,59,61,62,64,65,67,69,70,72,74,76,77,79,81,83,84,86,88,90,91,93,95,97,98,100,102,104,105,107,109,111,112,114,116,118,119,121,123,125,126,128,129,131,132,134,135,137,139,140,142,143,145,146,148,150,151,153,154,156,157,159,160,162,164,165,167,168,170,171,173,175,176,177,178,179,180,181,182,184,185,186,187,188,189,190,191,193,193,194,195,195,196,197,197,198,199,199,200,201,201,202,203,204,204,205,206,207,208,208,209,210,211,212,212,213,214,215,216,217,217,218,218,219,219,220,220,221,221,222,222,223,223,224,224,225,225,225,225,226,226,226,227,227,227,228,228,228,229,229,229,230,230,231,231,232,232,233,233,234,234,235,235,236,236,237,237,238,238,238,239,239,239,240,240,241,241,241,242,242,242,243,243,244,244,244,245,245,246,246,247,247,247,248,248,249,249,250,250,251,251,251,251,252,252,252,252,253,253,253,253,254,254,254,254}
    };
    return [[[[self applyCurve:curve]
                overlay:[UIImage imageNamed:@"grain08.png"] ratio:0.5]
               multiply:[UIImage imageNamed:@"circle08.png"] ratio:1]
              multiply:[UIImage imageNamed:@"border08.png"] ratio:1];
}

-(UIImage *) e09 {
    Curve curve = {
        {0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,21,22,24,25,27,28,30,31,33,34,36,37,39,40,41,42,44,45,46,47,49,50,51,52,54,55,56,57,59,60,62,63,65,67,68,70,72,73,75,76,78,80,81,83,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,106,107,108,110,111,112,114,115,116,118,119,120,122,123,124,125,126,127,128,129,131,132,133,134,135,136,137,138,140,141,142,144,145,146,148,149,151,152,153,155,156,157,159,160,162,163,165,166,168,170,171,173,175,176,178,179,181,183,184,186,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,205,205,205,205,206,206,206,207,207,207,208,208,208,209,209,209,210,210,210,210,211,211,211,212,212,212,213,213,213,214,214,214,215,215,215,216,216,217,217,218,218,218,219,219,220,220,221,221,222,222,222,223,223,224,224,225,225,225,226,226,227,227,228,228,229,229,229,230,230,231,231,232,232,232,233,233,234,234,235,235,236,236,237,237,238,238,239,239,240,241,241,242,242,243,243,244},
        {22,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,40,41,43,44,46,47,49,50,52,53,55,56,58,59,61,62,63,64,66,67,68,70,71,72,74,75,76,78,79,80,82,83,85,86,88,89,91,92,94,96,97,99,100,102,103,105,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,127,128,129,131,132,134,135,136,138,139,140,142,143,145,146,147,148,149,150,151,152,154,155,156,157,158,159,160,161,163,164,165,167,168,169,171,172,174,175,176,178,179,180,182,183,185,186,187,188,189,190,192,193,194,195,196,198,199,200,201,202,204,204,205,206,206,207,208,208,209,210,210,211,212,212,213,214,215,215,215,215,216,216,216,217,217,217,218,218,218,219,219,219,220,220,220,220,221,221,221,222,222,222,223,223,223,224,224,224,225,225,225,226,226,227,227,228,228,228,229,229,230,230,231,231,232,232,232,233,233,234,234,235,235,235,236,236,237,237,238,238,239,239,239,240,240,241,241,242,242,242,243,243,244,244,245,245,246,246,247,247,248,248,249,249,250,251,251,252,252,253,253,254},
        {38,38,39,40,40,41,42,42,43,44,44,45,46,46,47,48,49,50,51,52,54,55,56,58,59,60,62,63,64,66,67,68,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,87,88,89,90,92,93,94,95,97,98,99,100,102,103,104,105,107,107,108,109,110,111,112,113,114,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,171,172,173,175,176,177,179,180,182,183,184,186,187,188,190,191,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,210,210,210,210,211,211,211,211,212,212,212,212,213,213,213,213,214,214,214,214,215,215,215,215,216,216,216,216,217,217,217,217,218,218,218,219,219,219,220,220,221,221,221,222,222,222,223,223,224,224,224,225,225,225,226,226,227,227,227,228,228,228,229,229,230,230,230,231,231,231,232,232,233,233,233,234,234,234,235,235,236,236,236,237,237,237,238,238,239,239,239,240,240,240,241,241}
    };

    return [[[[[self applyCurve:curve]
                overlay:[UIImage imageNamed:@"grain09.png"] ratio:1]
                overlay:[UIImage imageNamed:@"circle09_1.png"] ratio:1]
             multiply:[UIImage imageNamed:@"circle09_0.png"] ratio:0.5]
            lighten:[UIImage imageNamed:@"border09.png"] ratio:1];
}

-(UIImage *) e10 {
    return [[[[[self screen:[UIImage imageNamed:@"background10.png"] ratio:0.75]
               overlay:[UIImage imageNamed:@"grain10.png"] ratio:0.75]
              overlay:[UIImage imageNamed:@"circle10_1.png"] ratio:1]
             multiply:[UIImage imageNamed:@"circle10_0.png"] ratio:0.5]
            multiply:[UIImage imageNamed:@"border10.png"] ratio:1];
}

-(UIImage *) e11 {
    Curve curve = {
        {97,97,97,97,98,98,98,99,99,99,100,100,100,101,101,101,102,102,102,103,103,104,104,105,105,105,106,106,107,107,108,108,109,109,110,110,111,111,112,112,113,113,114,114,115,115,116,116,117,117,118,118,119,119,120,120,121,122,122,123,123,124,124,125,126,126,127,127,128,128,129,129,130,130,131,131,132,132,133,133,134,134,134,135,135,136,136,137,137,137,138,138,139,139,140,140,141,141,141,141,142,142,142,143,143,143,144,144,144,145,145,145,146,146,147,147,148,148,149,149,150,150,151,151,152,152,153,153,154,154,154,154,154,154,155,155,155,155,155,156,156,156,156,156,157,157,157,158,158,158,159,159,160,160,160,161,161,161,162,162,163,163,163,163,163,163,164,164,164,164,164,165,165,165,165,165,166,166,166,166,166,166,167,167,167,167,167,168,168,168,168,168,169,169,169,169,169,169,169,169,170,170,170,170,170,170,170,170,171,171,171,171,171,171,171,171,172,172,172,172,172,172,172,172,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173,173},
        {37,37,37,38,38,39,39,40,40,40,41,41,42,42,43,43,44,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,76,77,78,79,81,82,83,85,86,87,89,90,91,93,94,95,97,98,99,100,101,102,104,105,106,107,108,110,111,112,113,114,116,117,118,119,121,122,123,125,126,127,129,130,131,133,134,135,137,138,139,140,141,142,143,144,146,147,148,149,150,151,152,153,155,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,170,171,172,173,173,174,175,176,176,177,178,179,179,180,181,182,182,183,184,185,185,186,187,188,188,189,190,191,191,192,193,194,194,194,195,195,196,196,197,197,197,198,198,199,199,200,200,201,201,202,202,203,203,204,204,205,205,206,206,207,207,208,208,209,209,209,209,210,210,210,211,211,211,212,212,212,213,213,213,214,214,214,214,214,214,215,215,215,215,215,216,216,216,216,216,217,217,217,217,217,217,218,218,218,218,218,219,219,219,219,219,220,220,220,220,220,220,221,221,221,221,221,222,222,222,222,222},
        {57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,58,59,60,60,61,62,63,63,64,65,66,66,67,68,69,70,72,74,76,78,80,82,84,85,87,89,91,93,95,97,99,101,103,105,107,109,112,114,116,118,120,123,125,127,129,131,134,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,166,167,169,170,172,173,175,176,177,179,180,182,183,185,186,188,189,190,191,192,193,195,196,197,198,199,201,202,203,204,205,207,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,222,223,224,225,225,226,227,228,228,229,230,231,231,232,233,234,234,235,235,236,236,237,237,238,238,239,239,240,240,241,241,242,242,242,243,243,243,244,244,245,245,245,246,246,246,247,247,248,248,248,248,248,248,249,249,249,249,249,250,250,250,250,250,251,251,251,251,251,251,251,251,252,252,252,252,252,252,252,252,253,253,253,253,253,253,253,253,254,254,254,254,254,254,254,254}
    };
    
    return [[self applyCurve:curve]
               mask:[UIImage imageNamed:@"border11.png"]];
}

-(UIImage *) e12 {
    Curve curve = {
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,10,10,10,11,11,12,12,12,13,13,13,14,14,15,15,16,17,17,18,19,19,20,21,21,22,23,23,24,25,26,26,27,28,29,30,31,32,33,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,57,58,59,60,62,63,64,65,67,68,69,70,72,73,74,75,77,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,131,132,133,134,135,137,138,139,140,141,143,144,145,146,147,148,150,151,152,153,154,156,157,158,159,160,162,163,165,167,168,170,172,173,175,177,178,180,182,183,185,187,189,191,193,195,197,199,201,203,205,207,209,211,213,215,217,219,221,223,225,227,229,231,233,235,238,240,242,244,246,248,250,252},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,9,9,9,10,10,10,11,11,11,12,12,13,13,14,14,15,15,16,17,17,18,18,19,19,20,21,21,22,22,23,24,24,25,26,26,27,27,28,29,29,30,31,31,32,33,34,35,35,36,37,38,39,39,40,41,42,43,44,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,66,67,68,69,70,72,73,74,75,76,78,79,80,82,83,84,86,87,89,90,91,93,94,95,97,98,100,101,103,104,106,107,109,110,112,113,115,116,118,119,121,122,124,125,127,129,131,132,134,136,138,139,141,143,145,146,148,150,152,153,155,157,159,161,163,165,167,169,171,173,175,177,179,181,183,184,185,187,188,189,191,192,194,195,196,198,199,200,202,203,205,206,208,209,211,212,214,215,217,219,220,222,223,225,226,228,230,231,233,234,236,237,239,240,242,244,245,247,248,250,251,253},
        {0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,10,10,10,11,11,11,12,12,13,13,13,14,14,15,15,16,16,16,17,17,18,18,19,19,20,20,20,21,21,22,22,23,23,23,24,24,25,25,26,26,27,27,28,28,29,29,30,30,31,31,32,32,33,33,34,34,35,35,36,36,37,37,38,38,39,40,40,41,41,42,42,43,44,44,45,45,46,46,47,47,48,49,49,50,50,51,51,52,53,54,55,56,57,58,60,61,62,63,64,66,67,68,69,70,72,73,74,76,77,79,80,82,83,84,86,87,89,90,92,93,95,96,98,99,101,102,104,105,107,109,110,112,113,115,116,118,120,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,168,170,172,174,176,178,180,182,185,186,187,189,190,191,193,194,196,197,198,200,201,202,204,205,207,208,209,211,212,214,215,217,218,219,221,222,224,225,227,228,230,231,233,234,236,237,239,240,242,244,245,247,248,250,251,253}
    };
    
    return [[self applyCurve:curve]
             multiply:[UIImage imageNamed:@"border12.png"] ratio:1];
}

-(UIImage *) e13 {
    Curve curve = {
        {65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,66,66,66,66,66,66,66,66,66,66,66,66,66,66,66,66,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,87,88,89,90,92,93,94,95,97,98,99,100,102,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,133,134,134,135,135,136,136,137,137,138,138,139,139,140,140,141,142,143,144,145,146,148,149,150,151,152,154,155,156,157,158,160,161,162,163,165,166,167,168,170,171,172,173,175,176,177,178,180,181,182,183,184,185,186,187,189,190,191,192,193,194,195,196,198,198,199,200,201,202,203,204,205,205,206,207,208,209,210,211,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,212,213,213,213,213,213,213,213,213,213,213,213,213,213,213,213,213},
        {58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,76,77,78,79,80,81,82,83,85,86,87,88,89,90,91,92,94,95,97,99,100,102,104,105,107,109,110,112,114,115,117,119,121,121,121,122,122,122,123,123,124,124,124,125,125,125,126,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,152,153,154,155,156,157,158,159,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,240,240,240,240,240,240,240,240,240,240,240,240,240,240,240},
        {82,82,82,82,82,82,82,82,82,82,82,82,82,82,82,82,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,83,84,85,86,86,87,88,89,89,90,91,92,92,93,94,95,96,97,98,99,100,101,102,104,105,106,107,108,109,110,111,113,114,115,116,117,118,119,120,122,123,124,125,126,127,128,129,131,132,134,136,137,139,141,142,144,146,147,149,151,152,154,156,158,158,158,159,159,159,160,160,161,161,161,162,162,162,163,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,181,182,183,184,185,186,187,188,190,191,192,193,194,195,196,197,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,216,216,217,217,218,218,219,219,220,221,221,222,222,223,223,224,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225}
    };
    return [[[self applyCurve:curve]
            screen:[UIImage imageNamed:@"background13.png"] ratio:0.5]
            lighten:[UIImage imageNamed:@"border13.png"] ratio:1];
}

-(UIImage *) e14 {
    Curve curve = {
        {69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,69,70,70,71,71,72,72,72,73,73,74,74,75,75,76,76,77,77,78,78,79,79,80,80,81,81,82,82,83,83,84,84,85,85,86,86,87,87,88,88,89,89,90,90,91,91,92,92,92,93,93,93,94,94,95,95,95,96,96,96,97,97,98,98,98,99,99,100,100,101,101,101,102,102,103,103,104,104,105,105,105,105,106,106,106,107,107,107,108,108,108,109,109,109,110,110,110,110,111,111,111,111,112,112,112,112,113,113,113,113,114,114,114,114,115,115,115,115,116,116,116,116,117,117,117,117,118,118,118,118,118,118,119,119,119,119,119,120,120,120,120,120,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122,122},
        {36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,37,38,39,40,41,42,43,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,84,85,86,87,88,89,90,91,93,94,95,96,97,98,99,100,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,119,120,121,122,123,124,125,126,128,129,130,131,132,133,134,135,137,137,138,139,140,141,142,143,144,144,145,146,147,148,149,150,151,151,152,153,154,154,155,156,157,157,158,159,160,160,161,162,163,163,164,164,165,166,166,167,168,168,169,169,170,171,171,172,173,173,173,174,174,175,175,176,176,176,177,177,178,178,179,179,180,180,180,181,181,181,182,182,183,183,183,184,184,184,185,185,186,186,186,186,187,187,187,187,188,188,188,188,189,189,189,189,190,190,190,190,190,190,190,190,191,191,191,191,191,191,191,191,192,192,192,192,192,192,192,192,192,192,192,192,192,192,192,192},
        {43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,63,64,65,67,68,70,71,72,74,75,76,78,79,81,82,83,85,86,88,89,91,92,93,95,96,98,99,101,102,104,105,107,109,111,112,114,116,118,119,121,123,125,126,128,130,132,133,135,136,138,139,141,142,144,145,147,148,150,151,153,154,156,157,158,160,161,162,164,165,167,168,169,171,172,173,175,176,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,195,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,210,211,212,212,213,214,214,215,216,216,217,218,218,219,220,221,221,222,222,223,224,224,225,226,226,227,227,228,229,229,230,231,231,231,232,232,232,233,233,234,234,234,235,235,235,236,236,237,237,237,238,238,238,239,239,240,240,240,241,241,241,242,242,243,243,243,243,244,244,244,244,245,245,245,245,246,246,246,246,247,247,247,247,247,247,248,248,248,248,248,249,249,249,249,249,250,250,250,250,250,250,250,250,250,250,250,250,250,250,250,250,251,251,251,251,252,252,252,252,253,253,253,253,254,254,254,254}
    };
    
    return [[self applyCurve:curve]
               screen:[UIImage imageNamed:@"border14.png"] ratio:1];
}
@end











