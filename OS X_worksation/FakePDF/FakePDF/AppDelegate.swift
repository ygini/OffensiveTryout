//
//  AppDelegate.swift
//  FakePDF
//
//  Created by Yoann Gini on 17/06/2016.
//  Copyright © 2016 Yoann Gini. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        
        if let cleanupScript = NSBundle.mainBundle().pathForResource("cleanup", ofType: "sh") {
            let task = NSTask.launchedTaskWithLaunchPath(cleanupScript, arguments: [NSBundle.mainBundle().bundlePath])
            task.waitUntilExit()
        }
        
        NSApp.terminate(self)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

