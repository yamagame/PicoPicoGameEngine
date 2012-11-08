/*-----------------------------------------------------------------------------------------------
	名前	PicoPicoGamesAppDelegate.h
	説明		        
	作成	2012.07.22 by H.Yamaguchi
	更新
-----------------------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------------------------
	インクルードファイル
-----------------------------------------------------------------------------------------------*/

#import <UIKit/UIKit.h>
#import "PPGameViewController.h"

/*-----------------------------------------------------------------------------------------------
	クラス
-----------------------------------------------------------------------------------------------*/

@class EAGLView;

@interface PicoPicoGamesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PPGameViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PPGameViewController *viewController;

@end

/*-----------------------------------------------------------------------------------------------
	このファイルはここまで
-----------------------------------------------------------------------------------------------*/
