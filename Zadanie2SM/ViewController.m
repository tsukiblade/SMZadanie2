//
//  ViewController.m
//  Zadanie2SM
//
//  Created by Szymon Kozłowski on 18/10/2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.surname = self.surnameTextField.text;
        //controller.modifiedSurnameTextField.text = self.surnameTextField.text;
        controller.delegate = self;
    }
}

- (IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *yourSurname = self.surnameTextField.text;
    NSString *myName = @"Szymon";
    //NSString *mySurname = @"Kozlowski";
    NSString *message;
    
    if ([yourName length] == 0) {
     yourName = @"World";
    }
    
    if ([yourSurname length] == 0)
    {
        yourSurname = @"";
    }
    
    if ([yourName isEqualToString:myName]) {
    message = [NSString stringWithFormat:@"Hello %@! We have the same name :)", yourName];
    } else {
        message = [NSString stringWithFormat:@"Hello %@ %@!", yourName, yourSurname];
    }
    
    self.messageLabel.text = message;
}

- (void) addItemViewController:(SecondViewController *)controller didFinishEnteringItem:(NSString *)item {
    NSLog(@"This was returned from SecondViewController %@", item);
    self.surnameTextField.text = item;
}

@end
