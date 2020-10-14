/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */
package software.amazon.smithy.aws.swift.codegen
import software.amazon.smithy.codegen.core.SymbolDependency
import software.amazon.smithy.codegen.core.SymbolDependencyContainer

enum class AWSSwiftDependency(val type: String, val namespace: String, val version: String, val url: String) : SymbolDependencyContainer {
    AWS_CLIENT_RUNTIME("", "AWSClientRuntime", "0.1.0", "/Users/edupp/Documents/git_repos/git_aws_codegen/aws-sdk-swift/AWSClientRuntime");

    override fun getDependencies(): List<SymbolDependency> {
        val dependency = SymbolDependency.builder()
                .dependencyType(type)
                .packageName(namespace)
                .version(version)
                .putProperty("url", url)
                .build()
        return listOf(dependency)
    }
}
