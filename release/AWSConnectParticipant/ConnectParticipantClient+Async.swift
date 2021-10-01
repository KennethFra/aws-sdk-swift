// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ConnectParticipantClient {
    /// Allows you to confirm that the attachment has been uploaded using the pre-signed URL
    ///             provided in StartAttachmentUpload API.
    func completeAttachmentUpload(input: CompleteAttachmentUploadInput) async throws -> CompleteAttachmentUploadOutputResponse
    {
        typealias completeAttachmentUploadContinuation = CheckedContinuation<CompleteAttachmentUploadOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: completeAttachmentUploadContinuation) in
            completeAttachmentUpload(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates the participant's connection. Note that ParticipantToken is used for invoking
    ///             this API instead of ConnectionToken.
    ///         The participant token is valid for the lifetime of the participant – until they are
    ///             part of a contact.
    ///         The response URL for WEBSOCKET Type has a connect expiry timeout of 100s.
    ///             Clients must manually connect to the returned websocket URL and subscribe to the desired
    ///             topic.
    ///         For chat, you need to publish the following on the established websocket
    ///             connection:
    ///
    ///
    ///
    ///             {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}
    ///
    ///
    ///         Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter,
    ///             clients need to call this API again to obtain a new websocket URL and perform the same
    ///             steps as before.
    ///
    ///
    ///             The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                     authentication.
    ///
    func createParticipantConnection(input: CreateParticipantConnectionInput) async throws -> CreateParticipantConnectionOutputResponse
    {
        typealias createParticipantConnectionContinuation = CheckedContinuation<CreateParticipantConnectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createParticipantConnectionContinuation) in
            createParticipantConnection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disconnects a participant. Note that ConnectionToken is used for invoking this API
    ///             instead of ParticipantToken.
    ///         The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                 authentication.
    func disconnectParticipant(input: DisconnectParticipantInput) async throws -> DisconnectParticipantOutputResponse
    {
        typealias disconnectParticipantContinuation = CheckedContinuation<DisconnectParticipantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disconnectParticipantContinuation) in
            disconnectParticipant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides a pre-signed URL for download of a completed attachment. This is an
    ///             asynchronous API for use with active contacts.
    func getAttachment(input: GetAttachmentInput) async throws -> GetAttachmentOutputResponse
    {
        typealias getAttachmentContinuation = CheckedContinuation<GetAttachmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAttachmentContinuation) in
            getAttachment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a transcript of the session, including details about any attachments. Note
    ///             that ConnectionToken is used for invoking this API instead of ParticipantToken.
    ///         The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                 authentication.
    func getTranscript(input: GetTranscriptInput) async throws -> GetTranscriptOutputResponse
    {
        typealias getTranscriptContinuation = CheckedContinuation<GetTranscriptOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getTranscriptContinuation) in
            getTranscript(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Sends an event. Note that ConnectionToken is used for invoking this API instead of
    ///             ParticipantToken.
    ///         The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                 authentication.
    func sendEvent(input: SendEventInput) async throws -> SendEventOutputResponse
    {
        typealias sendEventContinuation = CheckedContinuation<SendEventOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: sendEventContinuation) in
            sendEvent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Sends a message. Note that ConnectionToken is used for invoking this API instead of
    ///             ParticipantToken.
    ///
    ///             The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    ///                     authentication.
    ///
    func sendMessage(input: SendMessageInput) async throws -> SendMessageOutputResponse
    {
        typealias sendMessageContinuation = CheckedContinuation<SendMessageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: sendMessageContinuation) in
            sendMessage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides a pre-signed Amazon S3 URL in response for uploading the file directly to
    ///             S3.
    func startAttachmentUpload(input: StartAttachmentUploadInput) async throws -> StartAttachmentUploadOutputResponse
    {
        typealias startAttachmentUploadContinuation = CheckedContinuation<StartAttachmentUploadOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startAttachmentUploadContinuation) in
            startAttachmentUpload(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
