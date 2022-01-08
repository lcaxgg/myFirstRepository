//
//  main.m
//  ObjC-training
//
//  Created by OPSolutions on 1/8/22.
//

#import <Foundation/Foundation.h>
#import "Header.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        //WORKING WITH BOOLEANS//
        
        bool cbool; //c bool
        BOOL abool; //apple BOOL

        cbool = true;
        abool = YES;
        NSLog(@"\n\ncbool: %d \nabool: %d", cbool, abool);
        
        cbool = false;
        abool = NO;
        NSLog(@"\n\ncbool: %d \nabool: %d", cbool, abool);
        
        cbool = 25;
        abool = 25;
        NSLog(@"\n\ncbool: %d \nabool: %d", cbool, abool);
        
        if (cbool) {
            NSLog(@"\n\ncbool is true");
        }
        
        if (abool){
            NSLog(@"\n\nabool is true");
        }
        
        //the method for checking different
        //is in the header file
        
        //wrong practice of checking if two arguments
        //is different from each other
        if (different(1, 2) == YES){
            NSLog(@"\n\nDifferent!");
        }else {
            NSLog(@"\n\nNot Different.");
        }
        
        //correct practice of checking if two arguments
        //is different from each other
        if (different(1, 2)){
            NSLog(@"\n\nDifferent!");
        }else {
            NSLog(@"\n\nNot Different.");
        }
        
        
        
        
        
    }
    return 0;
    
    

    
}
