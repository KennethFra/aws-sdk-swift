// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The transactional data APIs for Amazon QLDB Instead of interacting directly with this API, we recommend using the QLDB driver or the QLDB shell to execute data transactions on a ledger.
///
/// * If you are working with an AWS SDK, use the QLDB driver. The driver provides a high-level abstraction layer above this QLDB Session data plane and manages SendCommand API calls for you. For information and a list of supported programming languages, see [Getting started with the driver](https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html) in the Amazon QLDB Developer Guide.
///
/// * If you are working with the AWS Command Line Interface (AWS CLI), use the QLDB shell. The shell is a command line interface that uses the QLDB driver to interact with a ledger. For information, see [Accessing Amazon QLDB using the QLDB shell](https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).
public protocol QldbSessionClientProtocol {
    /// Sends a command to an Amazon QLDB ledger. Instead of interacting directly with this API, we recommend using the QLDB driver or the QLDB shell to execute data transactions on a ledger.
    ///
    /// * If you are working with an AWS SDK, use the QLDB driver. The driver provides a high-level abstraction layer above this QLDB Session data plane and manages SendCommand API calls for you. For information and a list of supported programming languages, see [Getting started with the driver](https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html) in the Amazon QLDB Developer Guide.
    ///
    /// * If you are working with the AWS Command Line Interface (AWS CLI), use the QLDB shell. The shell is a command line interface that uses the QLDB driver to interact with a ledger. For information, see [Accessing Amazon QLDB using the QLDB shell](https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).
    func sendCommand(input: SendCommandInput) async throws -> SendCommandOutputResponse
}

public enum QldbSessionClientTypes {}
