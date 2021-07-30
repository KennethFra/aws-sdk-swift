// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class ConnectParticipantClient {
    let client: SdkHttpClient
    let config: AWSClientConfiguration
    let serviceName = "ConnectParticipant"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: AWSClientConfiguration) {
        client = SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: String? = nil) throws {
        let unwrappedRegion = region ?? "us-east-1"
        let config = try ConnectParticipantClientConfiguration(region: unwrappedRegion)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class ConnectParticipantClientConfiguration: AWSClientConfiguration {

        public var clientLogMode: ClientLogMode
        public var decoder: ResponseDecoder?
        public var encoder: RequestEncoder?
        public var httpClientConfiguration: HttpClientConfiguration
        public var httpClientEngine: HttpClientEngine
        public var idempotencyTokenGenerator: IdempotencyTokenGenerator
        public var logger: LogAgent
        public var retrier: Retrier

        public var credentialsProvider: AWSCredentialsProvider
        public var endpointResolver: EndpointResolver
        public var region: String
        public var signingRegion: String

        public init(
            credentialsProvider: AWSCredentialsProvider? = nil,
            endpointResolver: EndpointResolver? = nil,
            region: String,
            signingRegion: String? = nil,
            runtimeConfig: SDKRuntimeConfiguration
        ) throws {
            self.region = region
            self.signingRegion = signingRegion ?? region
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = credProvider
            } else {
                self.credentialsProvider = try AWSCredentialsProvider.fromChain()
            }
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retrier = runtimeConfig.retrier
        }

        public convenience init(
            credentialsProvider: AWSCredentialsProvider? = nil,
            endpointResolver: EndpointResolver? = nil,
            region: String,
            signingRegion: String? = nil
        ) throws {
            let defaultRuntimeConfig = try DefaultSDKRuntimeConfiguration("ConnectParticipantClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct ConnectParticipantClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "ConnectParticipantClient"
    let logLevel: SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension ConnectParticipantClient: ConnectParticipantClientProtocol {
    /// <p>Allows you to confirm that the attachment has been uploaded using the pre-signed URL
    ///             provided in StartAttachmentUpload API. </p>
    public func completeAttachmentUpload(input: CompleteAttachmentUploadInput, completion: @escaping (SdkResult<CompleteAttachmentUploadOutputResponse, CompleteAttachmentUploadOutputError>) -> Void)
    {
        let urlPath = "/participant/complete-attachment-upload"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "completeAttachmentUpload")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "participant.connect.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<CompleteAttachmentUploadInput, CompleteAttachmentUploadOutputResponse, CompleteAttachmentUploadOutputError>(id: "completeAttachmentUpload")
        operation.addDefaultOperationMiddlewares()
        operation.initializeStep.intercept(position: .before, id: "IdempotencyTokenMiddleware") { (context, input, next) -> Result<OperationOutput<CompleteAttachmentUploadOutputResponse>, SdkError<CompleteAttachmentUploadOutputError>> in
            let idempotencyTokenGenerator = context.getIdempotencyTokenGenerator()
            var copiedInput = input
            if input.clientToken == nil {
                copiedInput.clientToken = idempotencyTokenGenerator.generateToken()
            }
            return next.handle(context: context, input: copiedInput)
        }
        operation.serializeStep.intercept(position: .before, middleware: CompleteAttachmentUploadInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: CompleteAttachmentUploadInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<CompleteAttachmentUploadInput, CompleteAttachmentUploadOutputResponse, CompleteAttachmentUploadOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: CompleteAttachmentUploadInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Creates the participant's connection. Note that ParticipantToken is used for invoking
    ///             this API instead of ConnectionToken.</p>
    ///         <p>The participant token is valid for the lifetime of the participant – until they are
    ///             part of a contact.</p>
    ///         <p>The response URL for <code>WEBSOCKET</code> Type has a connect expiry timeout of 100s.
    ///             Clients must manually connect to the returned websocket URL and subscribe to the desired
    ///             topic. </p>
    ///         <p>For chat, you need to publish the following on the established websocket
    ///             connection:</p>
    ///
    ///
    ///         <p>
    ///             <code>{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}</code>
    ///          </p>
    ///
    ///         <p>Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter,
    ///             clients need to call this API again to obtain a new websocket URL and perform the same
    ///             steps as before.</p>
    ///
    ///         <note>
    ///             <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                     authentication</a>.</p>
    ///         </note>
    public func createParticipantConnection(input: CreateParticipantConnectionInput, completion: @escaping (SdkResult<CreateParticipantConnectionOutputResponse, CreateParticipantConnectionOutputError>) -> Void)
    {
        let urlPath = "/participant/connection"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createParticipantConnection")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "participant.connect.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<CreateParticipantConnectionInput, CreateParticipantConnectionOutputResponse, CreateParticipantConnectionOutputError>(id: "createParticipantConnection")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: CreateParticipantConnectionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: CreateParticipantConnectionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<CreateParticipantConnectionInput, CreateParticipantConnectionOutputResponse, CreateParticipantConnectionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: CreateParticipantConnectionInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Disconnects a participant. Note that ConnectionToken is used for invoking this API
    ///             instead of ParticipantToken.</p>
    ///         <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                 authentication</a>.</p>
    public func disconnectParticipant(input: DisconnectParticipantInput, completion: @escaping (SdkResult<DisconnectParticipantOutputResponse, DisconnectParticipantOutputError>) -> Void)
    {
        let urlPath = "/participant/disconnect"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "disconnectParticipant")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "participant.connect.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DisconnectParticipantInput, DisconnectParticipantOutputResponse, DisconnectParticipantOutputError>(id: "disconnectParticipant")
        operation.addDefaultOperationMiddlewares()
        operation.initializeStep.intercept(position: .before, id: "IdempotencyTokenMiddleware") { (context, input, next) -> Result<OperationOutput<DisconnectParticipantOutputResponse>, SdkError<DisconnectParticipantOutputError>> in
            let idempotencyTokenGenerator = context.getIdempotencyTokenGenerator()
            var copiedInput = input
            if input.clientToken == nil {
                copiedInput.clientToken = idempotencyTokenGenerator.generateToken()
            }
            return next.handle(context: context, input: copiedInput)
        }
        operation.serializeStep.intercept(position: .before, middleware: DisconnectParticipantInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DisconnectParticipantInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DisconnectParticipantInput, DisconnectParticipantOutputResponse, DisconnectParticipantOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: DisconnectParticipantInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Provides a pre-signed URL for download of a completed attachment. This is an
    ///             asynchronous API for use with active contacts.</p>
    public func getAttachment(input: GetAttachmentInput, completion: @escaping (SdkResult<GetAttachmentOutputResponse, GetAttachmentOutputError>) -> Void)
    {
        let urlPath = "/participant/attachment"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getAttachment")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "participant.connect.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetAttachmentInput, GetAttachmentOutputResponse, GetAttachmentOutputError>(id: "getAttachment")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetAttachmentInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetAttachmentInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetAttachmentInput, GetAttachmentOutputResponse, GetAttachmentOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: GetAttachmentInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Retrieves a transcript of the session, including details about any attachments. Note
    ///             that ConnectionToken is used for invoking this API instead of ParticipantToken.</p>
    ///         <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                 authentication</a>.</p>
    public func getTranscript(input: GetTranscriptInput, completion: @escaping (SdkResult<GetTranscriptOutputResponse, GetTranscriptOutputError>) -> Void)
    {
        let urlPath = "/participant/transcript"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getTranscript")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "participant.connect.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetTranscriptInput, GetTranscriptOutputResponse, GetTranscriptOutputError>(id: "getTranscript")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetTranscriptInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetTranscriptInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetTranscriptInput, GetTranscriptOutputResponse, GetTranscriptOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: GetTranscriptInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Sends an event. Note that ConnectionToken is used for invoking this API instead of
    ///             ParticipantToken.</p>
    ///         <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                 authentication</a>.</p>
    public func sendEvent(input: SendEventInput, completion: @escaping (SdkResult<SendEventOutputResponse, SendEventOutputError>) -> Void)
    {
        let urlPath = "/participant/event"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "sendEvent")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "participant.connect.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<SendEventInput, SendEventOutputResponse, SendEventOutputError>(id: "sendEvent")
        operation.addDefaultOperationMiddlewares()
        operation.initializeStep.intercept(position: .before, id: "IdempotencyTokenMiddleware") { (context, input, next) -> Result<OperationOutput<SendEventOutputResponse>, SdkError<SendEventOutputError>> in
            let idempotencyTokenGenerator = context.getIdempotencyTokenGenerator()
            var copiedInput = input
            if input.clientToken == nil {
                copiedInput.clientToken = idempotencyTokenGenerator.generateToken()
            }
            return next.handle(context: context, input: copiedInput)
        }
        operation.serializeStep.intercept(position: .before, middleware: SendEventInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: SendEventInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<SendEventInput, SendEventOutputResponse, SendEventOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: SendEventInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Sends a message. Note that ConnectionToken is used for invoking this API instead of
    ///             ParticipantToken.</p>
    ///         <note>
    ///             <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                     authentication</a>.</p>
    ///         </note>
    public func sendMessage(input: SendMessageInput, completion: @escaping (SdkResult<SendMessageOutputResponse, SendMessageOutputError>) -> Void)
    {
        let urlPath = "/participant/message"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "sendMessage")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "participant.connect.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<SendMessageInput, SendMessageOutputResponse, SendMessageOutputError>(id: "sendMessage")
        operation.addDefaultOperationMiddlewares()
        operation.initializeStep.intercept(position: .before, id: "IdempotencyTokenMiddleware") { (context, input, next) -> Result<OperationOutput<SendMessageOutputResponse>, SdkError<SendMessageOutputError>> in
            let idempotencyTokenGenerator = context.getIdempotencyTokenGenerator()
            var copiedInput = input
            if input.clientToken == nil {
                copiedInput.clientToken = idempotencyTokenGenerator.generateToken()
            }
            return next.handle(context: context, input: copiedInput)
        }
        operation.serializeStep.intercept(position: .before, middleware: SendMessageInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: SendMessageInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<SendMessageInput, SendMessageOutputResponse, SendMessageOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: SendMessageInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Provides a pre-signed Amazon S3 URL in response for uploading the file directly to
    ///             S3.</p>
    public func startAttachmentUpload(input: StartAttachmentUploadInput, completion: @escaping (SdkResult<StartAttachmentUploadOutputResponse, StartAttachmentUploadOutputError>) -> Void)
    {
        let urlPath = "/participant/start-attachment-upload"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startAttachmentUpload")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "participant.connect.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<StartAttachmentUploadInput, StartAttachmentUploadOutputResponse, StartAttachmentUploadOutputError>(id: "startAttachmentUpload")
        operation.addDefaultOperationMiddlewares()
        operation.initializeStep.intercept(position: .before, id: "IdempotencyTokenMiddleware") { (context, input, next) -> Result<OperationOutput<StartAttachmentUploadOutputResponse>, SdkError<StartAttachmentUploadOutputError>> in
            let idempotencyTokenGenerator = context.getIdempotencyTokenGenerator()
            var copiedInput = input
            if input.clientToken == nil {
                copiedInput.clientToken = idempotencyTokenGenerator.generateToken()
            }
            return next.handle(context: context, input: copiedInput)
        }
        operation.serializeStep.intercept(position: .before, middleware: StartAttachmentUploadInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: StartAttachmentUploadInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<StartAttachmentUploadInput, StartAttachmentUploadOutputResponse, StartAttachmentUploadOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: StartAttachmentUploadInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
