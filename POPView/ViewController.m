
/**
 *  使用说明：将PopTool中的文件导入项目中，并标注为-fno-objc-arc
 *
 *  实例中的DemoTableController为显示数据用的控制器
 *
 *  目前只支持竖屏的pop， 横屏暂未改良
 */
#import "ViewController.h"

#import "FPPopoverController.h"
#import "DemoTableController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)click:(UIButton *)sender {
    
    DemoTableController *controller = [[DemoTableController alloc] initWithStyle:UITableViewStylePlain];
    
    FPPopoverController *popover = [[FPPopoverController alloc] initWithViewController:controller];
    
    popover.tint = FPPopoverDefaultTint;
    
    popover.arrowDirection = FPPopoverArrowDirectionAny;
    
    [popover presentPopoverFromView:sender];

}

@end
