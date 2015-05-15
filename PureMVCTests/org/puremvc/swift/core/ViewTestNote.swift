//
//  ViewTestNote.swift
//  PureMVC SWIFT Standard
//
//  Copyright(c) 2015-2025 Saad Shams <saad.shams@puremvc.org>
//  Your reuse is governed by the Creative Commons Attribution 3.0 License
//

import PureMVC

/**
A Notification class used by ViewTest.

`@see org.puremvc.swift.multicore.core.view.ViewTest ViewTest`
*/
public class ViewTestNote: Notification, INotification {
    
    /**
    The name of this Notification.
    */
    public class var NAME: String { return "ViewTestNote" }
    
    /**
    Constructor.
    *
    :param: name Ignored and forced to NAME.
    :param: body the body of the Notification to be constructed.
    */
    public init(name: String, body: Any) {
        super.init(name: name, body: body, type: nil)
    }
    
    /**
    Factory method.
    
    This method creates new instances of the ViewTestNote class,
    automatically setting the note name so you don't have to. Use
    this as an alternative to the constructor.
    
    :param: name the name of the Notification to be constructed.
    :param: body the body of the Notification to be constructed.
    */
    public class func create (body: Any) -> INotification {
        return ViewTestNote(name: ViewTestNote.NAME, body: body)
    }
    
}