// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class KinesisVideoSignalingClient {
    public static let clientName = "KinesisVideoSignalingClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "Kinesis Video Signaling"
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

    public convenience init(region: Swift.String) throws {
        let config = try KinesisVideoSignalingClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await KinesisVideoSignalingClientConfiguration()
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class KinesisVideoSignalingClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

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
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?

        public init(
            region: Swift.String,
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) throws {
            self.region = region
            self.signingRegion = signingRegion ?? region
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.frameworkMetadata = frameworkMetadata
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
            region: Swift.String,
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            signingRegion: Swift.String? = nil
        ) throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("KinesisVideoSignalingClient")
            try self.init(region: region, credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, frameworkMetadata: frameworkMetadata, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) async throws {
            let resolvedRegionResolver = regionResolver ?? DefaultRegionResolver()
            self.region = await resolvedRegionResolver.resolveRegion()
            self.regionResolver = resolvedRegionResolver
            self.signingRegion = signingRegion ?? region
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.frameworkMetadata = frameworkMetadata
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
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) async throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("KinesisVideoSignalingClient")
            try await self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, frameworkMetadata: frameworkMetadata, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct KinesisVideoSignalingClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "KinesisVideoSignalingClient"
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

extension KinesisVideoSignalingClient: KinesisVideoSignalingClientProtocol {
    /// Gets the Interactive Connectivity Establishment (ICE) server configuration information, including URIs, username, and password which can be used to configure the WebRTC connection. The ICE component uses this configuration information to setup the WebRTC connection, including authenticating with the Traversal Using Relays around NAT (TURN) relay server. TURN is a protocol that is used to improve the connectivity of peer-to-peer applications. By providing a cloud-based relay service, TURN ensures that a connection can be established even when one or more peers are incapable of a direct peer-to-peer connection. For more information, see [A REST API For Access To TURN Services](https://tools.ietf.org/html/draft-uberti-rtcweb-turn-rest-00). You can invoke this API to establish a fallback mechanism in case either of the peers is unable to establish a direct peer-to-peer connection over a signaling channel. You must specify either a signaling channel ARN or the client ID in order to invoke this API.
    public func getIceServerConfig(input: GetIceServerConfigInput) async throws -> GetIceServerConfigOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getIceServerConfig")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "kinesisvideo")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetIceServerConfigInput, GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(id: "getIceServerConfig")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetIceServerConfigInput, GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetIceServerConfigInput, GetIceServerConfigOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetIceServerConfigInput, GetIceServerConfigOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetIceServerConfigInput, GetIceServerConfigOutputResponse>())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// This API allows you to connect WebRTC-enabled devices with Alexa display devices. When invoked, it sends the Alexa Session Description Protocol (SDP) offer to the master peer. The offer is delivered as soon as the master is connected to the specified signaling channel. This API returns the SDP answer from the connected master. If the master is not connected to the signaling channel, redelivery requests are made until the message expires.
    public func sendAlexaOfferToMaster(input: SendAlexaOfferToMasterInput) async throws -> SendAlexaOfferToMasterOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "sendAlexaOfferToMaster")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "kinesisvideo")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(id: "sendAlexaOfferToMaster")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse>())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}
