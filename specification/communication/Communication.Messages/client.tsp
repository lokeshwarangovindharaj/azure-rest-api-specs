// client.tsp
import "@azure-tools/typespec-client-generator-core";
import "@typespec/versioning";

import "./main.tsp";

using Azure.ClientGenerator.Core;
using TypeSpec.Versioning;

@useDependency(Azure.Communication.MessagesService.Versions.c2024_02_01)
namespace ClientForAcsMessages;

@client({
  name: "NotificationMessagesClient",
  service: Azure.Communication.MessagesService,
})
interface NotificationMessagesClient
  extends Azure.Communication.MessagesService.NotificationMessagesOperations {
  @access(Access.internal, "csharp")
  @projectedName("csharp", "downloadMediaInternal")
  downloadMedia is Azure.Communication.MessagesService.StreamOperations.getMedia;
}

@client({
  name: "MessageTemplateClient",
  service: Azure.Communication.MessagesService,
})
interface MessageTemplateClient
  extends Azure.Communication.MessagesService.TemplateOperations {}

@@access(Azure.Communication.MessagesService.MessageDataStream,
  Access.internal
);

@@projectedName(Azure.Communication.MessagesService.MessageTemplate.values,
  "python",
  "templateValues"
);
