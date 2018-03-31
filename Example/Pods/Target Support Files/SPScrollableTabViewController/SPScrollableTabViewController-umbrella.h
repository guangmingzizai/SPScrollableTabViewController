#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "SPCoverProtocol.h"
#import "SPPageProtocol.h"
#import "SPTabProtocol.h"
#import "SPPageContentView.h"
#import "SPPageTagView.h"
#import "SPTagBarScrollView.h"
#import "SPCoverTabBarViewController.h"
#import "SPPageViewController.h"
#import "SPTabViewController.h"

FOUNDATION_EXPORT double SPScrollableTabViewControllerVersionNumber;
FOUNDATION_EXPORT const unsigned char SPScrollableTabViewControllerVersionString[];

