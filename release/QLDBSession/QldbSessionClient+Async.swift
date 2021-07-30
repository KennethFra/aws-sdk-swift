// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension QldbSessionClient {
    /// <p>Sends a command to an Amazon QLDB ledger.</p>
    ///          <note>
    ///             <p>Instead of interacting directly with this API, we recommend using the QLDB driver
    ///             or the QLDB shell to execute data transactions on a ledger.</p>
    ///             <ul>
    ///                <li>
    ///                   <p>If you are working with an AWS SDK, use the QLDB driver. The driver provides
    ///                   a high-level abstraction layer above this <i>QLDB Session</i> data
    ///                   plane and manages <code>SendCommand</code> API calls for you. For information and
    ///                   a list of supported programming languages, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html">Getting started
    ///                      with the driver</a> in the <i>Amazon QLDB Developer
    ///                   Guide</i>.</p>
    ///                </li>
    ///                <li>
    ///                   <p>If you are working with the AWS Command Line Interface (AWS CLI), use the
    ///                   QLDB shell. The shell is a command line interface that uses the QLDB driver to
    ///                   interact with a ledger. For information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html">Accessing Amazon QLDB using the
    ///                      QLDB shell</a>.</p>
    ///                </li>
    ///             </ul>
    ///          </note>
    func sendCommand(input: SendCommandInput) async throws -> SendCommandOutputResponse
    {
        typealias sendCommandContinuation = CheckedContinuation<SendCommandOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: sendCommandContinuation) in
            sendCommand(input: input) { result in
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
