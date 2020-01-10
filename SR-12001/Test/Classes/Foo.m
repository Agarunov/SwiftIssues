#import "Foo.h"

@implementation Foo

- (instancetype)init {
    self = [super init];
    if (self) {
        if (@available(iOS 9.0, *)) {
            /*
            Undefined symbols for architecture arm64:
              "___isOSVersionAtLeast", referenced from:
                  -[Foo init] in Foo.o
            ld: symbol(s) not found for architecture arm64
            clang-7: error: linker command failed with exit code 1 (use -v to see invocation)
             */
        }
    }
    return self;
}

@end
