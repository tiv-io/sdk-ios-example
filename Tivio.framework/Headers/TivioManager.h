//
//  TivioManager.h
//  Tivio
//
//  Created by Ladislav Navratil on 16.01.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TivioPlayerWrapper;

@interface Tivio : NSObject

- (id)initWithSecret:(NSString*) secret deviceCapabilities: (NSArray *) capabilities;

+ (TivioPlayerWrapper*)getPlayerWrapper;

@end

NS_ASSUME_NONNULL_END
