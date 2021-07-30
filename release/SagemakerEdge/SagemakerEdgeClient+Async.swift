// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension SagemakerEdgeClient {
    /// <p>Use to check if a device is registered with SageMaker Edge Manager.</p>
    func getDeviceRegistration(input: GetDeviceRegistrationInput) async throws -> GetDeviceRegistrationOutputResponse
    {
        typealias getDeviceRegistrationContinuation = CheckedContinuation<GetDeviceRegistrationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDeviceRegistrationContinuation) in
            getDeviceRegistration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Use to get the current status of devices registered on SageMaker Edge Manager.</p>
    func sendHeartbeat(input: SendHeartbeatInput) async throws -> SendHeartbeatOutputResponse
    {
        typealias sendHeartbeatContinuation = CheckedContinuation<SendHeartbeatOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: sendHeartbeatContinuation) in
            sendHeartbeat(input: input) { result in
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
