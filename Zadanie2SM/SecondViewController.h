//
//  SecondViewController.h
//  Zadanie2SM
//
//  Created by Szymon Kozłowski on 18/10/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SecondViewController;

@protocol SecondViewController <NSObject>

- (void) addItemViewController:(SecondViewController *) controller didFinishEnteringItem: (NSString *) item;

@end

@interface SecondViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameTextField;

@property NSString *surname;

@property (nonatomic, weak) id <SecondViewController> delegate;

- (IBAction)passBackItem;

@end

NS_ASSUME_NONNULL_END
