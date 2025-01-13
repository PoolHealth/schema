// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct ChemicalInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    poolID: ID,
    chlorine: GraphQLNullable<[ChlorineChemicalValueInput]> = nil,
    acid: GraphQLNullable<[AcidChemicalValueInput]> = nil,
    alkalinity: GraphQLNullable<[AlkalinityChemicalValueInput]> = nil
  ) {
    __data = InputDict([
      "poolID": poolID,
      "chlorine": chlorine,
      "acid": acid,
      "alkalinity": alkalinity
    ])
  }

  public var poolID: ID {
    get { __data["poolID"] }
    set { __data["poolID"] = newValue }
  }

  public var chlorine: GraphQLNullable<[ChlorineChemicalValueInput]> {
    get { __data["chlorine"] }
    set { __data["chlorine"] = newValue }
  }

  public var acid: GraphQLNullable<[AcidChemicalValueInput]> {
    get { __data["acid"] }
    set { __data["acid"] = newValue }
  }

  public var alkalinity: GraphQLNullable<[AlkalinityChemicalValueInput]> {
    get { __data["alkalinity"] }
    set { __data["alkalinity"] = newValue }
  }
}
