// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Amazon Personalize can consume real-time user event data, such as <i>stream</i> or <i>click</i> data, and use
///       it for model training either alone or combined with historical data. For more information see
///       <a href="https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html">Recording Events</a>.</p>
public protocol PersonalizeEventsClientProtocol {
    /// <p>Records user interaction event data. For more information see
    ///       <a href="https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html">Recording Events</a>.</p>
    func putEvents(input: PutEventsInput, completion: @escaping (SdkResult<PutEventsOutputResponse, PutEventsOutputError>) -> Void)
    /// <p>Adds one or more items to an Items dataset. For more information see
    ///       <a href="https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html">Importing Items Incrementally</a>.
    ///      </p>
    func putItems(input: PutItemsInput, completion: @escaping (SdkResult<PutItemsOutputResponse, PutItemsOutputError>) -> Void)
    /// <p>Adds one or more users to a Users dataset. For more information see
    ///       <a href="https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html">Importing Users Incrementally</a>.</p>
    func putUsers(input: PutUsersInput, completion: @escaping (SdkResult<PutUsersOutputResponse, PutUsersOutputError>) -> Void)
}
