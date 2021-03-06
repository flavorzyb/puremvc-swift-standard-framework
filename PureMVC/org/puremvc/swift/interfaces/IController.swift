//
//  IController.swift
//  PureMVC SWIFT Standard
//
//  Copyright(c) 2015-2025 Saad Shams <saad.shams@puremvc.org>
//  Your reuse is governed by the Creative Commons Attribution 3.0 License
//

/**
The interface definition for a PureMVC Controller.

In PureMVC, an `IController` implementor
follows the 'Command and Controller' strategy, and
assumes these responsibilities:

* Remembering which `ICommand`s are intended to handle which `INotifications`.
* Registering itself as an `IObserver` with the `View` for each `INotification` that it has an `ICommand` mapping for.
* Creating a new instance of the proper `ICommand` to handle a given `INotification` when notified by the `View`.
* Calling the `ICommand`'s `execute` method, passing in the `INotification`.

`@see org.puremvc.swift.interfaces INotification`

`@see org.puremvc.swift.interfaces ICommand`
*/
public protocol IController {
    
    /**
    Register a particular `ICommand` class as the handler
    for a particular `INotification`.
    
    - parameter notificationName: the name of the `INotification`
    - parameter closure: reference that returns `ICommand`
    */
    func registerCommand(_ notificationName: String, closure: @escaping () -> ICommand)
    
    /**
    Execute the `ICommand` previously registered as the
    handler for `INotification`s with the given notification name.
    
    - parameter notification: the `INotification` to execute the associated `ICommand` for
    */
    func executeCommand(_ notification: INotification)
    
    /**
    Remove a previously registered `ICommand` to `INotification` mapping.
    
    - parameter notificationName: the name of the `INotification` to remove the `ICommand` mapping for
    */
    func removeCommand(_ notificationName: String)
    
    /**
    Check if a Command is registered for a given Notification
    
    - parameter notificationName:
    - returns: whether a Command is currently registered for the given `notificationName`.
    */
    func hasCommand(_ notificationName: String) -> Bool
    
}
