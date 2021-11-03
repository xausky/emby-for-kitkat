.class public abstract Lmediabrowser/apiinteraction/BaseApiClient;
.super Ljava/lang/Object;
.source "BaseApiClient.java"


# instance fields
.field protected HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

.field protected Logger:Lmediabrowser/model/logging/ILogger;

.field private device:Lmediabrowser/apiinteraction/device/IDevice;

.field protected jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field private privateAccessToken:Ljava/lang/String;

.field private privateApplicationVersion:Ljava/lang/String;

.field private privateClientName:Ljava/lang/String;

.field private privateCurrentUserId:Ljava/lang/String;

.field private privateImageQuality:Ljava/lang/Integer;

.field private privateServerAddress:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateImageQuality:Ljava/lang/Integer;

    .line 282
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 99
    invoke-static {p3}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->setJsonSerializer(Lmediabrowser/model/serialization/IJsonSerializer;)V

    .line 105
    iput-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    .line 107
    invoke-direct {p0, p4}, Lmediabrowser/apiinteraction/BaseApiClient;->setAccessToken(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p3}, Lmediabrowser/apiinteraction/BaseApiClient;->setServerAddress(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serverAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "jsonSerializer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "logger"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateImageQuality:Ljava/lang/Integer;

    .line 282
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 75
    invoke-static {p3}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->setJsonSerializer(Lmediabrowser/model/serialization/IJsonSerializer;)V

    .line 81
    iput-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    .line 83
    invoke-virtual {p0, p4}, Lmediabrowser/apiinteraction/BaseApiClient;->setClientName(Ljava/lang/String;)V

    .line 84
    iput-object p5, p0, Lmediabrowser/apiinteraction/BaseApiClient;->device:Lmediabrowser/apiinteraction/device/IDevice;

    .line 85
    invoke-virtual {p0, p6}, Lmediabrowser/apiinteraction/BaseApiClient;->setApplicationVersion(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p3}, Lmediabrowser/apiinteraction/BaseApiClient;->setServerAddress(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serverAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "jsonSerializer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "logger"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ClearHttpRequestHeader(Ljava/lang/String;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpHeaders;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private GetImageTag(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 3

    .line 846
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 848
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 851
    :cond_1
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Screenshot:Lmediabrowser/model/entities/ImageType;

    if-ne v0, v1, :cond_3

    .line 853
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getScreenshotImageTags()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 856
    :cond_3
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Chapter:Lmediabrowser/model/entities/ImageType;

    if-ne v0, v1, :cond_5

    .line 858
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/ChapterInfoDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/ChapterInfoDto;->getImageTag()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 861
    :cond_5
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 671
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "Width"

    .line 676
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "Height"

    .line 677
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "MaxWidth"

    .line 678
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "MaxHeight"

    .line 679
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "PositionTicks"

    .line 680
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getPositionTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "Quality"

    .line 681
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getQuality()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getQuality()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getImageQuality()Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "Tag"

    .line 683
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CropWhitespace"

    .line 685
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getCropWhitespace()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "EnableImageEnhancers"

    .line 686
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getEnableImageEnhancers()Z

    move-result v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    .line 688
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getFormat()Lmediabrowser/model/drawing/ImageFormat;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Format"

    .line 690
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getFormat()Lmediabrowser/model/drawing/ImageFormat;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/drawing/ImageFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Accept"

    const-string v1, "webp"

    .line 692
    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_1
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getAddPlayedIndicator()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AddPlayedIndicator"

    const/4 v1, 0x1

    .line 697
    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    :cond_3
    const-string v0, "UnPlayedCount"

    .line 699
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getUnPlayedCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "PercentPlayed"

    .line 700
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getPercentPlayed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "BackgroundColor"

    .line 701
    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0, p1, p3}, Lmediabrowser/apiinteraction/BaseApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 668
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "queryParams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 663
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private OnServerLocationChanged()V
    .locals 0

    return-void
.end method

.method private setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateAccessToken:Ljava/lang/String;

    return-void
.end method

.method private setCurrentUserId(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateCurrentUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final AddDataFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0x3f

    .line 1152
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?format=json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&format=json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 1147
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ChangeServerLocation(Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->setServerAddress(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->SetAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->OnServerLocationChanged()V

    return-void
.end method

.method public ClearAuthenticationInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->setCurrentUserId(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->setAccessToken(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->ResetHttpHeaders()V

    return-void
.end method

.method protected final DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 1123
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getJsonSerializer()Lmediabrowser/model/serialization/IJsonSerializer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final GetApiUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 279
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;
    .locals 2

    .line 341
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const-string v0, "/"

    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 348
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "queryString"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetArtImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 1104
    sget-object v0, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 1107
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getHasArtImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentArtItemId()Ljava/lang/String;

    move-result-object v0

    .line 1109
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getHasArtImage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Art:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentArtImageTag()Ljava/lang/String;

    move-result-object p1

    .line 1111
    :goto_1
    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1113
    invoke-virtual {p2, p1}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0, v0, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 1101
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1096
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetArtistImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    .line 954
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Artists/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Images/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 961
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 956
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetBackdropImageUrls(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)[Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 984
    sget-object v0, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 989
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    .line 991
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropItemId()Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p1

    .line 1000
    :goto_1
    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1002
    new-array p1, v2, [Ljava/lang/String;

    return-object p1

    .line 1005
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1007
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1009
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Lmediabrowser/model/dto/ImageOptions;->setImageIndex(Ljava/lang/Integer;)V

    .line 1010
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0, v0, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v1

    .line 981
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 976
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetGameGenreImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    .line 914
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameGenres/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Images/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 921
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 916
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetGenreImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    .line 874
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Genres/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Images/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 881
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 876
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    .line 757
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Items/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Images/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 764
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 759
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 725
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageTag(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 722
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 717
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetImageUrl(Lmediabrowser/model/livetv/ChannelInfoDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 742
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 739
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 734
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final GetInstantMixUrl(Lmediabrowser/model/querying/SimilarItemsQuery;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 576
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "Limit"

    .line 583
    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "UserId"

    .line 584
    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Fields"

    .line 586
    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    .line 588
    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/InstantMix"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 590
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 574
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final GetItemByNameListUrl(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    .line 611
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "ParentId"

    .line 613
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UserId"

    .line 615
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "StartIndex"

    .line 616
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 618
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "SortBy"

    .line 620
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getSortBy()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "sortOrder"

    .line 622
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Enum;)V

    const-string v1, "IsPlayed"

    .line 624
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getIsPlayed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "Fields"

    .line 626
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Filters"

    .line 628
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "ImageTypes"

    .line 629
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getImageTypes()[Lmediabrowser/model/entities/ImageType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "recursive"

    .line 631
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getRecursive()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    const-string v1, "MediaTypes"

    .line 633
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getMediaTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "ExcludeItemTypes"

    .line 634
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getExcludeItemTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "IncludeItemTypes"

    .line 635
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getIncludeItemTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "NameLessThan"

    .line 637
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getNameLessThan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NameStartsWith"

    .line 638
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getNameStartsWith()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NameStartsWithOrGreater"

    .line 639
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getNameStartsWithOrGreater()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SearchTerm"

    .line 640
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getSearchTerm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EnableImages"

    .line 642
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getEnableImages()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ImageTypeLimit"

    .line 643
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getImageTypeLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "EnableImageTypes"

    .line 644
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "EnableTotalRecordCount"

    .line 645
    invoke-virtual {p2}, Lmediabrowser/model/querying/ItemsByNameQuery;->getEnableTotalRecordCount()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 647
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 608
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final GetItemListUrl(Lmediabrowser/model/querying/ItemQuery;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    .line 393
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "ParentId"

    .line 395
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "StartIndex"

    .line 397
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 399
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "SortBy"

    .line 401
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getSortBy()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "sortOrder"

    .line 403
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Enum;)V

    const-string v1, "SeriesStatuses"

    .line 405
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getSeriesStatuses()[Lmediabrowser/model/entities/SeriesStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Fields"

    .line 406
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Filters"

    .line 407
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "ImageTypes"

    .line 408
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getImageTypes()[Lmediabrowser/model/entities/ImageType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Is3D"

    .line 410
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIs3D()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "AirDays"

    .line 412
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getAirDays()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "VideoTypes"

    .line 413
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getVideoTypes()[Lmediabrowser/model/entities/VideoType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "MinOfficialRating"

    .line 415
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getMinOfficialRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MaxOfficialRating"

    .line 416
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getMaxOfficialRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recursive"

    .line 418
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getRecursive()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    const-string v1, "MinIndexNumber"

    .line 420
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getMinIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "MediaTypes"

    .line 422
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getMediaTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "Genres"

    .line 423
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getGenres()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GenreIds"

    .line 424
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getGenreIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "Ids"

    .line 425
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "StudioIds"

    .line 426
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getStudioIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "TagIds"

    .line 427
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getTagIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "ExcludeItemTypes"

    .line 428
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getExcludeItemTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "IncludeItemTypes"

    .line 429
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIncludeItemTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "ArtistIds"

    .line 430
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getArtistIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "AlbumArtistIds"

    .line 431
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getAlbumArtistIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "ContributingArtistIds"

    .line 432
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getContributingArtistIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "ListItemIds"

    .line 433
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getListItemIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "OfficialRatings"

    .line 434
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getOfficialRatings()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "IsPlayed"

    .line 436
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIsPlayed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsInBoxSet"

    .line 437
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIsInBoxSet()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "PersonIds"

    .line 439
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getPersonIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "PersonTypes"

    .line 440
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getPersonTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "Years"

    .line 442
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getYears()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "ParentIndexNumber"

    .line 444
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "IsHD"

    .line 445
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIsHD()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "Is4K"

    .line 446
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIs4K()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "HasParentalRating"

    .line 447
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getHasParentalRating()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "SearchTerm"

    .line 449
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getSearchTerm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MinCriticRating"

    .line 451
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getMinCriticRating()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "MinCommunityRating"

    .line 452
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getMinCommunityRating()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "MinPlayers"

    .line 454
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getMinPlayers()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "MaxPlayers"

    .line 455
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getMaxPlayers()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "NameStartsWithOrGreater"

    .line 456
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getNameStartsWithOrGreater()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NameStartsWith"

    .line 457
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getNameStartsWith()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NameLessThan"

    .line 458
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getNameLessThan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AlbumArtistStartsWithOrGreater"

    .line 459
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getAlbumArtistStartsWithOrGreater()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LocationTypes"

    .line 461
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getLocationTypes()[Lmediabrowser/model/entities/LocationType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "ExcludeLocationTypes"

    .line 462
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getExcludeLocationTypes()[Lmediabrowser/model/entities/LocationType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "IsMissing"

    .line 464
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIsMissing()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsUnaired"

    .line 465
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIsUnaired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsVirtualUnaired"

    .line 466
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIsVirtualUnaired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "EnableImages"

    .line 468
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getEnableImages()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ImageTypeLimit"

    .line 469
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getImageTypeLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "EnableImageTypes"

    .line 470
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "AiredDuringSeason"

    .line 472
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getAiredDuringSeason()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "CollapseBoxsetItems"

    .line 473
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getCollapseBoxSetItems()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "GroupItemsIntoCollections"

    .line 474
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getGroupItemsIntoCollections()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 476
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getEnableTotalRecordCount()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EnableTotalRecordCount"

    const-string v2, "false"

    .line 478
    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lmediabrowser/model/querying/ItemFilter;->IsResumable:Lmediabrowser/model/querying/ItemFilter;

    if-ne v1, v2, :cond_1

    const-string v1, "/resume"

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 482
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 390
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "query"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetLogoImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 1038
    sget-object v0, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 1041
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getHasLogo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentLogoItemId()Ljava/lang/String;

    move-result-object v0

    .line 1043
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getHasLogo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentLogoImageTag()Ljava/lang/String;

    move-result-object p1

    .line 1045
    :goto_1
    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1047
    invoke-virtual {p2, p1}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0, v0, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 1035
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1030
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetMusicGenreImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    .line 894
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicGenres/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Images/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 901
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 896
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final GetNextUpUrl(Lmediabrowser/model/querying/NextUpQuery;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 499
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "Fields"

    .line 501
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Limit"

    .line 503
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ParentId"

    .line 505
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "StartIndex"

    .line 507
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "UserId"

    .line 509
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SeriesId"

    .line 510
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getSeriesId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EnableImages"

    .line 512
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getEnableImages()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ImageTypeLimit"

    .line 513
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getImageTypeLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "EnableImageTypes"

    .line 514
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "EnableTotalRecordCount"

    .line 515
    invoke-virtual {p1}, Lmediabrowser/model/querying/NextUpQuery;->getEnableTotalRecordCount()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "Shows/NextUp"

    .line 517
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 496
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "query"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetPersonImageUrl(Lmediabrowser/model/dto/BaseItemPerson;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 832
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemPerson;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemPerson;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 829
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 824
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final GetSimilarItemListUrl(Lmediabrowser/model/querying/SimilarItemsQuery;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 538
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "Limit"

    .line 545
    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "UserId"

    .line 546
    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Fields"

    .line 548
    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    .line 550
    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/querying/SimilarItemsQuery;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Similar"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 552
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final GetSlugName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 234
    invoke-static {p1}, Lmediabrowser/model/apiclient/ApiHelpers;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final GetStudioImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    .line 934
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Studios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Images/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 941
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 936
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetSubtitleUrl(Lmediabrowser/model/dto/SubtitleDownloadOptions;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    .line 364
    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleDownloadOptions;->getMediaSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 368
    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleDownloadOptions;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleDownloadOptions;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Videos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleDownloadOptions;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleDownloadOptions;->getMediaSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Subtitles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleDownloadOptions;->getStreamIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/Stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/SubtitleDownloadOptions;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "options"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "options"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 366
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "options"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "options"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetThumbImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 1067
    sget-object v0, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 1070
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesThumbImageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentThumbItemId()Ljava/lang/String;

    move-result-object v0

    .line 1072
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesThumbImageTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesThumbImageTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getParentThumbImageTag()Ljava/lang/String;

    move-result-object p1

    .line 1074
    :goto_1
    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1076
    invoke-virtual {p2, p1}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0, v0, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    .line 1064
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1059
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetUserImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 2

    .line 802
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Images/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/dto/ImageOptions;->getImageType()Lmediabrowser/model/entities/ImageType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 809
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 804
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetUserImageUrl(Lmediabrowser/model/dto/UserDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 787
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->GetUserImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 784
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 779
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "user"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected ResetHttpHeaders()V
    .locals 2

    .line 307
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/http/HttpHeaders;->SetAccessToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getAuthorizationParameter()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Authorization"

    .line 313
    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->ClearHttpRequestHeader(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->SetAuthorizationHttpRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getAuthorizationScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->SetAuthorizationHttpRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected final SerializeToJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getJsonSerializer()Lmediabrowser/model/serialization/IJsonSerializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lmediabrowser/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetAuthenticationInfo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/BaseApiClient;->setCurrentUserId(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->setAccessToken(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->ResetHttpHeaders()V

    return-void
.end method

.method public SetAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 286
    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/BaseApiClient;->setCurrentUserId(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/BaseApiClient;->setAccessToken(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->ResetHttpHeaders()V

    return-void
.end method

.method protected SetAuthorizationHttpRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpHeaders;->setAuthorizationScheme(Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {p1, p2}, Lmediabrowser/apiinteraction/http/HttpHeaders;->setAuthorizationParameter(Ljava/lang/String;)V

    return-void
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getApiUrl()Ljava/lang/String;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/emby"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected final getAuthorizationParameter()Ljava/lang/String;
    .locals 6

    .line 254
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getClientName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "Client=\"%1$s\", DeviceId=\"%2$s\", Device=\"%3$s\", Version=\"%4$s\""

    const/4 v1, 0x4

    .line 260
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getClientName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", UserId=\"%1$s\""

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected final getAuthorizationScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaBrowser"

    return-object v0
.end method

.method public final getClientName()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateClientName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentUserId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateCurrentUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevice()Lmediabrowser/apiinteraction/device/IDevice;
    .locals 1

    .line 143
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->device:Lmediabrowser/apiinteraction/device/IDevice;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getDevice()Lmediabrowser/apiinteraction/device/IDevice;

    move-result-object v0

    invoke-interface {v0}, Lmediabrowser/apiinteraction/device/IDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/BaseApiClient;->getDevice()Lmediabrowser/apiinteraction/device/IDevice;

    move-result-object v0

    invoke-interface {v0}, Lmediabrowser/apiinteraction/device/IDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImageQuality()Ljava/lang/Integer;
    .locals 1

    .line 58
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateImageQuality:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsoString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "UTC"

    .line 1171
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1172
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1175
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "date"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getJsonSerializer()Lmediabrowser/model/serialization/IJsonSerializer;
    .locals 1

    .line 45
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    return-object v0
.end method

.method public final getServerAddress()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final setApplicationVersion(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateApplicationVersion:Ljava/lang/String;

    return-void
.end method

.method public final setClientName(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateClientName:Ljava/lang/String;

    return-void
.end method

.method public final setImageQuality(Ljava/lang/Integer;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateImageQuality:Ljava/lang/Integer;

    return-void
.end method

.method public final setJsonSerializer(Lmediabrowser/model/serialization/IJsonSerializer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    return-void
.end method

.method protected setServerAddress(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lmediabrowser/apiinteraction/BaseApiClient;->privateServerAddress:Ljava/lang/String;

    return-void
.end method
