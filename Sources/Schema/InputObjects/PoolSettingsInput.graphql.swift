// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct PoolSettingsInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    type: GraphQLEnum<PoolType>,
    usageType: GraphQLEnum<UsageType>,
    locationType: GraphQLEnum<LocationType>,
    poolShape: GraphQLEnum<PoolShape>,
    coordinates: CoordinatesInput
  ) {
    __data = InputDict([
      "type": type,
      "usageType": usageType,
      "locationType": locationType,
      "poolShape": poolShape,
      "coordinates": coordinates
    ])
  }

  public var type: GraphQLEnum<PoolType> {
    get { __data["type"] }
    set { __data["type"] = newValue }
  }

  public var usageType: GraphQLEnum<UsageType> {
    get { __data["usageType"] }
    set { __data["usageType"] = newValue }
  }

  public var locationType: GraphQLEnum<LocationType> {
    get { __data["locationType"] }
    set { __data["locationType"] = newValue }
  }

  public var poolShape: GraphQLEnum<PoolShape> {
    get { __data["poolShape"] }
    set { __data["poolShape"] = newValue }
  }

  public var coordinates: CoordinatesInput {
    get { __data["coordinates"] }
    set { __data["coordinates"] = newValue }
  }
}
