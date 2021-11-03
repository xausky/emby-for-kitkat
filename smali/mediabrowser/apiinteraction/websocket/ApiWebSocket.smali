.class public Lmediabrowser/apiinteraction/websocket/ApiWebSocket;
.super Ljava/lang/Object;
.source "ApiWebSocket.java"

# interfaces
.implements Lmediabrowser/apiinteraction/websocket/ISocketListener;


# instance fields
.field private apiClient:Lmediabrowser/apiinteraction/ApiClient;

.field private apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

.field private isConnecting:Z

.field private jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;


# direct methods
.method public constructor <init>(Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/ApiEventListener;Lmediabrowser/apiinteraction/ApiClient;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->isConnecting:Z

    .line 32
    iput-object p1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    .line 33
    iput-object p2, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->logger:Lmediabrowser/model/logging/ILogger;

    .line 34
    iput-object p3, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    .line 35
    iput-object p4, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    return-void
.end method

.method private GetMessageType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 370
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/BasicWebSocketMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/BasicWebSocketMessage;

    .line 371
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/BasicWebSocketMessage;->getMessageType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private OnGeneralCommand(Ljava/lang/String;)V
    .locals 5

    .line 266
    new-instance v0, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;

    invoke-direct {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;-><init>()V

    .line 268
    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v2, Lmediabrowser/apiinteraction/websocket/GeneralCommandMessage;

    invoke-interface {v1, p1, v2}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/GeneralCommandMessage;

    .line 269
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/GeneralCommandMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/session/GeneralCommand;

    invoke-virtual {v0, p1}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->setCommand(Lmediabrowser/model/session/GeneralCommand;)V

    .line 271
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/session/GeneralCommand;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 273
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/session/GeneralCommand;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmediabrowser/model/session/GeneralCommandType;->valueOf(Ljava/lang/String;)Lmediabrowser/model/session/GeneralCommandType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->setKnownCommandType(Lmediabrowser/model/session/GeneralCommandType;)V

    .line 276
    :cond_0
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getKnownCommandType()Lmediabrowser/model/session/GeneralCommandType;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 278
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getKnownCommandType()Lmediabrowser/model/session/GeneralCommandType;

    move-result-object p1

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->DisplayContent:Lmediabrowser/model/session/GeneralCommandType;

    if-ne p1, v1, :cond_1

    .line 280
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "ItemId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 281
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "ItemName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ItemType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    new-instance v2, Lmediabrowser/model/session/BrowseRequest;

    invoke-direct {v2}, Lmediabrowser/model/session/BrowseRequest;-><init>()V

    .line 285
    invoke-virtual {v2, p1}, Lmediabrowser/model/session/BrowseRequest;->setItemId(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2, v1}, Lmediabrowser/model/session/BrowseRequest;->setItemName(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2, v0}, Lmediabrowser/model/session/BrowseRequest;->setItemType(Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1, v0, v2}, Lmediabrowser/apiinteraction/ApiEventListener;->onBrowseCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/BrowseRequest;)V

    return-void

    .line 292
    :cond_1
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getKnownCommandType()Lmediabrowser/model/session/GeneralCommandType;

    move-result-object p1

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->DisplayMessage:Lmediabrowser/model/session/GeneralCommandType;

    if-ne p1, v1, :cond_2

    .line 294
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "Header"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 295
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Text"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "TimeoutMs"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 299
    new-instance v4, Ltangible/RefObject;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v4, v2}, Ltangible/RefObject;-><init>(Ljava/lang/Object;)V

    .line 300
    invoke-static {v0, v4}, Lmediabrowser/model/extensions/LongHelper;->TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z

    .line 301
    iget-object v0, v4, Ltangible/RefObject;->argValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 303
    new-instance v0, Lmediabrowser/model/session/MessageCommand;

    invoke-direct {v0}, Lmediabrowser/model/session/MessageCommand;-><init>()V

    .line 305
    invoke-virtual {v0, p1}, Lmediabrowser/model/session/MessageCommand;->setHeader(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v1}, Lmediabrowser/model/session/MessageCommand;->setText(Ljava/lang/String;)V

    .line 307
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/session/MessageCommand;->setTimeoutMs(Ljava/lang/Long;)V

    .line 309
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1, v1, v0}, Lmediabrowser/apiinteraction/ApiEventListener;->onMessageCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/MessageCommand;)V

    return-void

    .line 312
    :cond_2
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getKnownCommandType()Lmediabrowser/model/session/GeneralCommandType;

    move-result-object p1

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SetVolume:Lmediabrowser/model/session/GeneralCommandType;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    .line 314
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "Volume"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 317
    new-instance v0, Ltangible/RefObject;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ltangible/RefObject;-><init>(Ljava/lang/Object;)V

    .line 318
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/IntHelper;->TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z

    move-result p1

    .line 319
    iget-object v0, v0, Ltangible/RefObject;->argValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_3

    .line 322
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1, v1, v0}, Lmediabrowser/apiinteraction/ApiEventListener;->onSetVolumeCommand(Lmediabrowser/apiinteraction/ApiClient;I)V

    :cond_3
    return-void

    .line 327
    :cond_4
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getKnownCommandType()Lmediabrowser/model/session/GeneralCommandType;

    move-result-object p1

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SetAudioStreamIndex:Lmediabrowser/model/session/GeneralCommandType;

    if-ne p1, v1, :cond_6

    .line 329
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "Index"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 332
    new-instance v0, Ltangible/RefObject;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ltangible/RefObject;-><init>(Ljava/lang/Object;)V

    .line 333
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/IntHelper;->TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z

    move-result p1

    .line 334
    iget-object v0, v0, Ltangible/RefObject;->argValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_5

    .line 337
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1, v1, v0}, Lmediabrowser/apiinteraction/ApiEventListener;->onSetAudioStreamIndexCommand(Lmediabrowser/apiinteraction/ApiClient;I)V

    :cond_5
    return-void

    .line 342
    :cond_6
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getKnownCommandType()Lmediabrowser/model/session/GeneralCommandType;

    move-result-object p1

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SetSubtitleStreamIndex:Lmediabrowser/model/session/GeneralCommandType;

    if-ne p1, v1, :cond_8

    .line 344
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "Index"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 347
    new-instance v0, Ltangible/RefObject;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ltangible/RefObject;-><init>(Ljava/lang/Object;)V

    .line 348
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/IntHelper;->TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z

    move-result p1

    .line 349
    iget-object v0, v0, Ltangible/RefObject;->argValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_7

    .line 352
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1, v1, v0}, Lmediabrowser/apiinteraction/ApiEventListener;->onSetSubtitleStreamIndexCommand(Lmediabrowser/apiinteraction/ApiClient;I)V

    :cond_7
    return-void

    .line 357
    :cond_8
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getKnownCommandType()Lmediabrowser/model/session/GeneralCommandType;

    move-result-object p1

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SendString:Lmediabrowser/model/session/GeneralCommandType;

    if-ne p1, v1, :cond_9

    .line 359
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "String"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onSendStringCommand(Lmediabrowser/apiinteraction/ApiClient;Ljava/lang/String;)V

    return-void

    .line 365
    :cond_9
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/GeneralCommandEventArgs;->getCommand()Lmediabrowser/model/session/GeneralCommand;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lmediabrowser/apiinteraction/ApiEventListener;->onGeneralCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/GeneralCommand;)V

    return-void
.end method

.method private OpenInternal()V
    .locals 5

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->isConnecting:Z

    .line 53
    invoke-direct {p0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->getWebSocketServerAddress()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to web socket url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    iget-object v2, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->logger:Lmediabrowser/model/logging/ILogger;

    invoke-direct {v0, v2, v1, p0}, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;-><init>(Lmediabrowser/model/logging/ILogger;Ljava/net/URI;Lmediabrowser/apiinteraction/websocket/ISocketListener;)V

    iput-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    .line 61
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->connect()V

    return-void
.end method

.method private SendMessageInternal(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->IsWebSocketOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->send(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 116
    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private getWebSocketServerAddress()Ljava/lang/String;
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    const-string v3, "ws"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/embywebsocket?api_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Close()V
    .locals 1

    .line 88
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->close()V

    return-void
.end method

.method public CloseWebSocket()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->IsWebSocketOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->close()V

    :cond_0
    return-void
.end method

.method public EnsureWebSocket()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->IsWebSocketOpenOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->OpenInternal()V

    :cond_0
    return-void
.end method

.method public IsWebSocketOpen()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->IsWebSocketOpen()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsWebSocketOpenOrConnecting()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 133
    iget-boolean v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->isConnecting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->socketClient:Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/websocket/JavaWebSocketClient;->IsWebSocketOpenOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public OpenWebSocket()V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->EnsureWebSocket()V

    return-void
.end method

.method public SendWebSocketMessage(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending web socket message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance v0, Lmediabrowser/apiinteraction/websocket/ObjectWebSocketMessage;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/websocket/ObjectWebSocketMessage;-><init>()V

    .line 101
    invoke-virtual {v0, p1}, Lmediabrowser/model/net/WebSocketMessage;->setMessageType(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p2}, Lmediabrowser/model/net/WebSocketMessage;->setData(Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    invoke-interface {p1, v0}, Lmediabrowser/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->SendMessageInternal(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public SendWebSocketMessage(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    const-string v0, ""

    .line 93
    invoke-virtual {p0, p1, v0, p2}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->SendWebSocketMessage(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public StartReceivingSessionUpdates(I)V
    .locals 3

    const-string v0, "SessionsStart"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->SendWebSocketMessage(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public StopReceivingSessionUpdates()V
    .locals 3

    const-string v0, "SessionsStop"

    const-string v1, ""

    .line 146
    new-instance v2, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->SendWebSocketMessage(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public onClose()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->isConnecting:Z

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 5

    .line 151
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->GetMessageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v2, "Received web socket message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "LibraryChanged"

    .line 155
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/LibraryChangeMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/LibraryChangeMessage;

    .line 158
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/LibraryChangeMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/entities/LibraryUpdateInfo;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onLibraryChanged(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/entities/LibraryUpdateInfo;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "RestartRequired"

    .line 161
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "ServerRestarting"

    .line 165
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v1, "ServerShuttingDown"

    .line 169
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string v1, "UserDeleted"

    .line 173
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string v1, "ScheduledTaskEnded"

    .line 177
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const-string v1, "PackageInstalling"

    .line 181
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string v1, "PackageInstallationFailed"

    .line 185
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const-string v1, "PackageInstallationCompleted"

    .line 189
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string v1, "PackageInstallationCancelled"

    .line 193
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const-string v1, "UserUpdated"

    .line 197
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 199
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/UserDtoMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/UserDtoMessage;

    .line 200
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/UserDtoMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onUserUpdated(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/dto/UserDto;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "UserConfigurationUpdated"

    .line 202
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 204
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/UserDtoMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/UserDtoMessage;

    .line 205
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/UserDtoMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onUserConfigurationUpdated(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/dto/UserDto;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "PluginUninstalled"

    .line 207
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const-string v1, "Play"

    .line 211
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 213
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/PlayRequestMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/PlayRequestMessage;

    .line 214
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/PlayRequestMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/session/PlayRequest;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onPlayCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/PlayRequest;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "Playstate"

    .line 216
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 218
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/PlaystateRequestMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/PlaystateRequestMessage;

    .line 219
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/PlaystateRequestMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/session/PlaystateRequest;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onPlaystateCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/PlaystateRequest;)V

    goto/16 :goto_0

    :cond_e
    const-string v1, "NotificationAdded"

    .line 221
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const-string v1, "NotificationUpdated"

    .line 225
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const-string v1, "NotificationsMarkedRead"

    .line 229
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const-string v1, "GeneralCommand"

    .line 233
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 235
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->OnGeneralCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v1, "Sessions"

    .line 237
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 239
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/SessionUpdatesEventMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/SessionUpdatesEventMessage;

    .line 240
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/SessionUpdatesEventMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/apiclient/SessionUpdatesEventArgs;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onSessionsUpdated(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/apiclient/SessionUpdatesEventArgs;)V

    goto/16 :goto_0

    :cond_13
    const-string v1, "UserDataChanged"

    .line 242
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 244
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/UserDataChangeMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/UserDataChangeMessage;

    .line 245
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/UserDataChangeMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/session/UserDataChangeInfo;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onUserDataChanged(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/UserDataChangeInfo;)V

    goto :goto_0

    :cond_14
    const-string v1, "SessionEnded"

    .line 247
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 249
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/SessionInfoMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/SessionInfoMessage;

    .line 250
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/SessionInfoMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/session/SessionInfoDto;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onSessionEnded(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/SessionInfoDto;)V

    goto :goto_0

    :cond_15
    const-string v1, "PlaybackStart"

    .line 252
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 254
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/SessionInfoMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/SessionInfoMessage;

    .line 255
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/SessionInfoMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/session/SessionInfoDto;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onPlaybackStart(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/SessionInfoDto;)V

    goto :goto_0

    :cond_16
    const-string v1, "PlaybackStopped"

    .line 257
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 259
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/apiinteraction/websocket/SessionInfoMessage;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/websocket/SessionInfoMessage;

    .line 260
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    iget-object v1, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/SessionInfoMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/session/SessionInfoDto;

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/ApiEventListener;->onPlaybackStopped(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/SessionInfoDto;)V

    :cond_17
    :goto_0
    return-void
.end method

.method public onOpen()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->isConnecting:Z

    return-void
.end method
