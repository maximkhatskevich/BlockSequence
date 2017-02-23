//
//  Aliases.swift
//  MKHOperationFlow
//
//  Created by Maxim Khatskevich on 11/12/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import Foundation

//===

public
typealias OperationWithInput<Input, Output> = (OperationFlow, Input) throws -> Output

public
typealias Operation<Output> = (OperationFlow) throws -> Output // no input

public
typealias FailureGeneric = (OperationFlow, Error) -> Void

public
typealias FailureSpecialized<CustomError: Error> = (OperationFlow, CustomError) -> Void

public
typealias Completion<Input> = (OperationFlow, Input) -> Void
