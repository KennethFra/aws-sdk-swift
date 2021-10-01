// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class LexRuntimeClient {
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "Lex Runtime"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: AWSClientRuntime.AWSClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String? = nil) throws {
        let config = try LexRuntimeClientConfiguration(region: region)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class LexRuntimeClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpointResolver: AWSClientRuntime.EndpointResolver
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver
        public var signingRegion: Swift.String?

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) throws {
            self.regionResolver = regionResolver ?? DefaultRegionResolver()
            let defaultRegion = self.regionResolver.resolveRegion()
            self.region = region ?? defaultRegion
            self.signingRegion = signingRegion ?? defaultRegion
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("LexRuntimeClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct LexRuntimeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "LexRuntimeClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension LexRuntimeClient: LexRuntimeClientProtocol {
    /// Removes session information for a specified bot, alias, and user ID.
    ///
    public func deleteSession(input: DeleteSessionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteSessionOutputResponse, DeleteSessionOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DeleteSessionInput, DeleteSessionOutputResponse, DeleteSessionOutputError>(id: "deleteSession")
        operation.initializeStep.intercept(position: .after, middleware: DeleteSessionInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: DeleteSessionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: DeleteSessionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DeleteSessionInput, DeleteSessionOutputResponse, DeleteSessionOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Returns session information for a specified bot, alias, and user
    ///       ID.
    public func getSession(input: GetSessionInput, completion: @escaping (ClientRuntime.SdkResult<GetSessionOutputResponse, GetSessionOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetSessionInput, GetSessionOutputResponse, GetSessionOutputError>(id: "getSession")
        operation.initializeStep.intercept(position: .after, middleware: GetSessionInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: GetSessionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: GetSessionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetSessionInput, GetSessionOutputResponse, GetSessionOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    ///  Sends user input (text or speech) to Amazon Lex. Clients use this API to
    ///       send text and audio requests to Amazon Lex at runtime. Amazon Lex interprets the
    ///       user input using the machine learning model that it built for the bot.
    ///          The PostContent operation supports audio input at 8kHz
    ///       and 16kHz. You can use 8kHz audio to achieve higher speech recognition
    ///       accuracy in telephone audio applications.
    ///           In response, Amazon Lex returns the next message to convey to the user.
    ///       Consider the following example messages:
    ///
    ///
    ///                 For a user input "I would like a pizza," Amazon Lex might return a
    ///           response with a message eliciting slot data (for example,
    ///             PizzaSize): "What size pizza would you like?".
    ///
    ///
    ///                 After the user provides all of the pizza order information, Amazon Lex
    ///           might return a response with a message to get user confirmation:
    ///           "Order the pizza?".
    ///
    ///
    ///                 After the user replies "Yes" to the confirmation prompt, Amazon Lex
    ///           might return a conclusion statement: "Thank you, your cheese pizza has
    ///           been ordered.".
    ///
    ///
    ///           Not all Amazon Lex messages require a response from the user. For example,
    ///       conclusion statements do not require a response. Some messages require
    ///       only a yes or no response. In addition to the message, Amazon Lex
    ///       provides additional context about the message in the response that you can
    ///       use to enhance client behavior, such as displaying the appropriate client
    ///       user interface. Consider the following examples:
    ///
    ///
    ///                 If the message is to elicit slot data, Amazon Lex returns the
    ///           following context information:
    ///
    ///
    ///
    ///                         x-amz-lex-dialog-state header set to
    ///                 ElicitSlot
    ///
    ///
    ///
    ///
    ///                         x-amz-lex-intent-name header set to the intent name
    ///               in the current context
    ///
    ///
    ///
    ///                         x-amz-lex-slot-to-elicit header set to the slot name
    ///               for which the message is eliciting information
    ///
    ///
    ///
    ///
    ///                         x-amz-lex-slots header set to a map of slots
    ///               configured for the intent with their current values
    ///
    ///
    ///
    ///
    ///                 If the message is a confirmation prompt, the
    ///             x-amz-lex-dialog-state header is set to
    ///             Confirmation and the
    ///             x-amz-lex-slot-to-elicit header is omitted.
    ///
    ///
    ///                 If the message is a clarification prompt configured for the
    ///           intent, indicating that the user intent is not understood, the
    ///             x-amz-dialog-state header is set to
    ///             ElicitIntent and the x-amz-slot-to-elicit
    ///           header is omitted.
    ///
    ///
    ///           In addition, Amazon Lex also returns your application-specific
    ///         sessionAttributes. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
    ///         Conversation Context.
    public func postContent(input: PostContentInput, completion: @escaping (ClientRuntime.SdkResult<PostContentOutputResponse, PostContentOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "postContent")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<PostContentInput, PostContentOutputResponse, PostContentOutputError>(id: "postContent")
        operation.initializeStep.intercept(position: .after, middleware: PostContentInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: PostContentInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: PostContentInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PostContentInput, PostContentOutputResponse, PostContentOutputError>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: PostContentInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: true)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Sends user input to Amazon Lex. Client applications can use this API to
    ///       send requests to Amazon Lex at runtime. Amazon Lex then interprets the user input
    ///       using the machine learning model it built for the bot.
    ///           In response, Amazon Lex returns the next message to convey to
    ///       the user an optional responseCard to display. Consider the
    ///       following example messages:
    ///
    ///
    ///                 For a user input "I would like a pizza", Amazon Lex might return a
    ///           response with a message eliciting slot data (for example, PizzaSize):
    ///           "What size pizza would you like?"
    ///
    ///
    ///                 After the user provides all of the pizza order information,
    ///           Amazon Lex might return a response with a message to obtain user
    ///           confirmation "Proceed with the pizza order?".
    ///
    ///
    ///                 After the user replies to a confirmation prompt with a "yes",
    ///           Amazon Lex might return a conclusion statement: "Thank you, your cheese
    ///           pizza has been ordered.".
    ///
    ///
    ///
    ///           Not all Amazon Lex messages require a user response. For example, a
    ///       conclusion statement does not require a response. Some messages require
    ///       only a "yes" or "no" user response. In addition to the
    ///         message, Amazon Lex provides additional context about the
    ///       message in the response that you might use to enhance client behavior, for
    ///       example, to display the appropriate client user interface. These are the
    ///         slotToElicit, dialogState,
    ///         intentName, and slots fields in the response.
    ///       Consider the following examples:
    ///
    ///
    ///
    ///                If the message is to elicit slot data, Amazon Lex returns the
    ///           following context information:
    ///
    ///
    ///
    ///                         dialogState set to ElicitSlot
    ///
    ///
    ///
    ///                         intentName set to the intent name in the current
    ///               context
    ///
    ///
    ///
    ///                         slotToElicit set to the slot name for which the
    ///                 message is eliciting information
    ///
    ///
    ///
    ///                         slots set to a map of slots, configured for the
    ///               intent, with currently known values
    ///
    ///
    ///
    ///
    ///                 If the message is a confirmation prompt, the
    ///             dialogState is set to ConfirmIntent and
    ///             SlotToElicit is set to null.
    ///
    ///
    ///                If the message is a clarification prompt (configured for the
    ///           intent) that indicates that user intent is not understood, the
    ///             dialogState is set to ElicitIntent and
    ///             slotToElicit is set to null.
    ///
    ///
    ///
    ///           In addition, Amazon Lex also returns your application-specific
    ///         sessionAttributes. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
    ///         Conversation Context.
    public func postText(input: PostTextInput, completion: @escaping (ClientRuntime.SdkResult<PostTextOutputResponse, PostTextOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "postText")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<PostTextInput, PostTextOutputResponse, PostTextOutputError>(id: "postText")
        operation.initializeStep.intercept(position: .after, middleware: PostTextInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: PostTextInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: PostTextInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PostTextInput, PostTextOutputResponse, PostTextOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: PostTextInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Creates a new session or modifies an existing session with an Amazon Lex
    ///       bot. Use this operation to enable your application to set the state of the
    ///       bot.
    ///          For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html">Managing
    ///         Sessions.
    public func putSession(input: PutSessionInput, completion: @escaping (ClientRuntime.SdkResult<PutSessionOutputResponse, PutSessionOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<PutSessionInput, PutSessionOutputResponse, PutSessionOutputError>(id: "putSession")
        operation.initializeStep.intercept(position: .after, middleware: PutSessionInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: PutSessionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: PutSessionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PutSessionInput, PutSessionOutputResponse, PutSessionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: PutSessionInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
