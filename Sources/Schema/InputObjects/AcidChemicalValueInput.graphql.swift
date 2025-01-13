// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AcidChemicalValueInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    type: GraphQLEnum<AcidChemical>,
    value: Double
  ) {
    __data = InputDict([
      "type": type,
      "value": value
    ])
  }

  public var type: GraphQLEnum<AcidChemical> {
    get { __data["type"] }
    set { __data["type"] = newValue }
  }

  public var value: Double {
    get { __data["value"] }
    set { __data["value"] = newValue }
  }
}
