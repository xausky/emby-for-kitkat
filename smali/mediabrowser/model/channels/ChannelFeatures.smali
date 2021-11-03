.class public Lmediabrowser/model/channels/ChannelFeatures;
.super Ljava/lang/Object;
.source "ChannelFeatures.java"


# instance fields
.field private AutoRefreshLevels:Ljava/lang/Integer;

.field private CanFilter:Z

.field private CanSearch:Z

.field private ContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/channels/ChannelMediaContentType;",
            ">;"
        }
    .end annotation
.end field

.field private DefaultSortFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/channels/ChannelItemSortField;",
            ">;"
        }
    .end annotation
.end field

.field private Id:Ljava/lang/String;

.field private MaxPageSize:Ljava/lang/Integer;

.field private MediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/channels/ChannelMediaType;",
            ">;"
        }
    .end annotation
.end field

.field private Name:Ljava/lang/String;

.field private SupportsContentDownloading:Z

.field private SupportsLatestMedia:Z

.field private SupportsSortOrderToggle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->MaxPageSize:Ljava/lang/Integer;

    .line 98
    iput-object v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->AutoRefreshLevels:Ljava/lang/Integer;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/channels/ChannelFeatures;->setMediaTypes(Ljava/util/ArrayList;)V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/channels/ChannelFeatures;->setContentTypes(Ljava/util/ArrayList;)V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/channels/ChannelFeatures;->setDefaultSortFields(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getAutoRefreshLevels()Ljava/lang/Integer;
    .locals 1

    .line 101
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->AutoRefreshLevels:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCanFilter()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->CanFilter:Z

    return v0
.end method

.method public final getCanSearch()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->CanSearch:Z

    return v0
.end method

.method public final getContentTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/channels/ChannelMediaContentType;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->ContentTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getDefaultSortFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/channels/ChannelItemSortField;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->DefaultSortFields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxPageSize()Ljava/lang/Integer;
    .locals 1

    .line 86
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->MaxPageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMediaTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/channels/ChannelMediaType;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->MediaTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportsContentDownloading()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->SupportsContentDownloading:Z

    return v0
.end method

.method public final getSupportsLatestMedia()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->SupportsLatestMedia:Z

    return v0
.end method

.method public final getSupportsSortOrderToggle()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lmediabrowser/model/channels/ChannelFeatures;->SupportsSortOrderToggle:Z

    return v0
.end method

.method public final setAutoRefreshLevels(Ljava/lang/Integer;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->AutoRefreshLevels:Ljava/lang/Integer;

    return-void
.end method

.method public final setCanFilter(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->CanFilter:Z

    return-void
.end method

.method public final setCanSearch(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->CanSearch:Z

    return-void
.end method

.method public final setContentTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/channels/ChannelMediaContentType;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->ContentTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public final setDefaultSortFields(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/channels/ChannelItemSortField;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->DefaultSortFields:Ljava/util/ArrayList;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setMaxPageSize(Ljava/lang/Integer;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->MaxPageSize:Ljava/lang/Integer;

    return-void
.end method

.method public final setMediaTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/channels/ChannelMediaType;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->MediaTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setSupportsContentDownloading(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->SupportsContentDownloading:Z

    return-void
.end method

.method public final setSupportsLatestMedia(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->SupportsLatestMedia:Z

    return-void
.end method

.method public final setSupportsSortOrderToggle(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lmediabrowser/model/channels/ChannelFeatures;->SupportsSortOrderToggle:Z

    return-void
.end method
