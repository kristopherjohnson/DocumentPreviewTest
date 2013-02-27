This project is intended to demonstrate that there is a bug in Apple's UIDocumentationInteractionController implementation, or that the documentation is incorrect.

The bug is described in detail here:

- <http://www.openradar.me/radar?id=2785401>
- <https://devforums.apple.com/thread/181223>
- <http://stackoverflow.com/questions/13057919/probable-bug-on-ipad-for-uidocumentinteractioncontroller-presentpreviewanimated>

Briefly, according to the documentation for [documentIntersectionControllerViewControllerForPreview:](http://developer.apple.com/library/ios/#documentation/uikit/reference/UIDocumentInteractionControllerDelegate_protocol/Reference/Reference.html):
 
> If you return a navigation controller from this method, the document interaction controller is pushed onto the navigation stack using the standard navigation controller animations. If you return any other type of view controller, the document interaction controller is displayed modally, in which case, the view controller you return must be capable of presenting a modal view controller.

This works as described when run on iPhone, but when run on the iPad, the preview is always displayed modally rather than being pushed onto the navigation stack.
