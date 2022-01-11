//
//  main.m
//  ObjC-training
//
//  Created by OPSolutions on 1/8/22.
//

/*
 • Objective-C Program Structure
 
    - basically consists of the ff:
 
        * pre-processor commands
        * interface
        * implementation
        * method
        * variables
        * statements & expressions
        * comments
 */

#import <Foundation/Foundation.h>
    /*
     - this is a preprocessor command, which tells an
     objective-c compiler to include Foundation.h file
     before going to actual compilation
     */

#import "Header.h" // includes the implementation file, to access methods, functions etc.

int main(int argc, const char * argv[]) {  // main function where the execution begins
    @autoreleasepool { // manage an object lifecycle
        
        /*
         • Tokens in Ojective-C
         
         - either a keyword, an identifier, a constant
         a string literal, or a symbol.
         
         for example:
         */
        
        NSLog(@"\n\nHellow, World! \n"); // consists of 6 tokens
                                         // \n means nextline
        /*
         the individual tokens are:
                
              1. NSLog
              2. (
              3. @
              4. "\n\nHello, World! \n"
              5. )
              6. ;
         */
        
        /*
         • Semicolons ;
         - statement terminator
         - each individual statement must have a ;
         - indicates the end of one logical entity
         
         for example:
         
         NSlog(@"Hello, World! \n");
         return 0;
         */
        
        /*
         • Comments
         - like helping text
         - ignored by the compiler
         
         two types of comments:
         
         * in-line comments
         - starts with double front slash //
         
         * block comments
         - starts with / *
         - ends with * /
        
         note: there should be no space between / * and * /
         it just happened that there's a warning when im
         writing this with no space hehe :)
         */
        
        /*
         • Identifiers
         - name to identify variables, function or any other user-defined items
         - starts with:
            * A to Z
            * a to z
            * an underscore _ followed by zero or more letters, underscores and digits (0 to 9)
         
         - objective doesn't allow characters such as @, $, and % with identifiers
         
         example of acceptable identifiers:
            mohd
            myname50
            zara
            _temp
            abc
            j
            move_name
            a23b9
            a_123
            retVal
         */
        
        /*
         • Keywords
         - these are the reserve words may not be used as constant or variable or any identifier names
            auto      else                long        switch
            break     enum                register    typedef
            case      extern              return      union
            char      float               short       unsigned
            const     for                 signed      void
            continue  goto                sizeof      volatile
            default   if                  static      while
            do        int                 struct      _Packed
            double    protocol            interface   implementation
            NSObject  NSInteger           NSNumber    CGFloat
            property  nonatomic;          retain      strong
            weak      unsafe_unretained;  readwrite   readonly
         */
        
        /*
         • Whitespace in Objective-C
         - describes blanks, tabs, newline characters and comments
         - separates one part of a statement from another
         
         for example:
         
         int age;
         */
        
        /*
         • Data Types
         */
    }
    return 0; // termninates main () function and returns the value 0
}
