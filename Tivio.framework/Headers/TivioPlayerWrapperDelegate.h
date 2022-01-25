//
//  TivioPlayerWrapperDelegate.h
//  Tivio
//
//  Created by Ladislav Navratil on 16.01.2022.
//

@class TivioPlayerSource;

@protocol TivioPlayerWrapperDelegate

- (void) setSource: (TivioPlayerSource*) source;
- (void) seekTo: (NSUInteger) miliseconds;

@end
