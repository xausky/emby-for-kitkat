.class public Lmediabrowser/model/channels/ChannelQuery;
.super Ljava/lang/Object;
.source "ChannelQuery.java"


# instance fields
.field private EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private EnableImages:Ljava/lang/Boolean;

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private ImageTypeLimit:Ljava/lang/Integer;

.field private IsFavorite:Ljava/lang/Boolean;

.field private Limit:Ljava/lang/Integer;

.field private StartIndex:Ljava/lang/Integer;

.field private SupportsLatestItems:Ljava/lang/Boolean;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 43
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getEnableImages()Ljava/lang/Boolean;
    .locals 1

    .line 25
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelQuery;->EnableImages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getImageTypeLimit()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIsFavorite()Ljava/lang/Boolean;
    .locals 1

    .line 118
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelQuery;->IsFavorite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 88
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 73
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSupportsLatestItems()Ljava/lang/Boolean;
    .locals 1

    .line 103
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelQuery;->SupportsLatestItems:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setEnableImages(Ljava/lang/Boolean;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelQuery;->EnableImages:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setImageTypeLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsFavorite(Ljava/lang/Boolean;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelQuery;->IsFavorite:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setSupportsLatestItems(Ljava/lang/Boolean;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelQuery;->SupportsLatestItems:Ljava/lang/Boolean;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelQuery;->UserId:Ljava/lang/String;

    return-void
.end method
