import "@typespec/http";
import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-providerhub";
import "@azure-tools/typespec-azure-resource-manager";
import "./asset.tsp";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.Versioning;
using Azure.ResourceManager;
using Azure.ResourceManager.Private;
using Azure.ResourceManager.Foundations;

#suppress "@azure-tools/typespec-azure-resource-manager/missing-operations-endpoint"
@armProviderNamespace
@service({
  title: "Microsoft.DeviceRegistry management service",
})
@versioned(Versions)
@doc("Microsoft.DeviceRegistry Resource Provider management API.")
namespace Microsoft.DeviceRegistry;

/** Api versions */
enum Versions {
  /** 2023-11-01-preview preview version */
  @useDependency(Azure.ResourceManager.Versions.v1_0_Preview_1)
  `2023-11-01-preview`,
}
