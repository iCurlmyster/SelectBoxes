SelectBoxes
===========

Simple Objective-C API that creates a box of whatever image you set and handles badge notifications and graphics for you when you set the number of notifications it has.


Drop these files in your project and import them into the file you are working in.

Create a `selectBoxes` object. After that you have the choice of `initWithFrame:` or `initWithFrame:setMainImage:`.
`setMainImage:` is for if you just did `initWithFrame:` and not the other init method.

Setting the badge notifiction is just invoking the `notificationImage:withSize:andContentNumberSetTo:` method.

To update the badge number invoke the `setContentNumber:` method.

You can set the background color of the badge with `setColorForContentNumber:`.

You can hide the notification whenever you want with `hideNotificationImage:`.

and then show it again with `unhideNotificationImage`.

and then remove the notification badge with `removeNotificationImage`.
