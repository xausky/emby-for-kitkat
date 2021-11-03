.class public Lmediabrowser/model/channels/AllChannelMediaQuery;
.super Ljava/lang/Object;
.source "AllChannelMediaQuery.java"


# instance fields
.field private ChannelIds:[Ljava/lang/String;

.field private ContentTypes:[Lmediabrowser/model/channels/ChannelMediaContentType;

.field private ExtraTypes:[Lmediabrowser/model/entities/ExtraType;

.field private Fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/querying/ItemFields;",
            ">;"
        }
    .end annotation
.end field

.field private Filters:[Lmediabrowser/model/querying/ItemFilter;

.field private Limit:Ljava/lang/Integer;

.field private StartIndex:Ljava/lang/Integer;

.field private TrailerTypes:[Lmediabrowser/model/entities/TrailerType;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->StartIndex:Ljava/lang/Integer;

    .line 58
    iput-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->Limit:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 109
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->setChannelIds([Ljava/lang/String;)V

    .line 111
    new-array v1, v0, [Lmediabrowser/model/channels/ChannelMediaContentType;

    invoke-virtual {p0, v1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->setContentTypes([Lmediabrowser/model/channels/ChannelMediaContentType;)V

    .line 112
    new-array v1, v0, [Lmediabrowser/model/entities/ExtraType;

    invoke-virtual {p0, v1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->setExtraTypes([Lmediabrowser/model/entities/ExtraType;)V

    .line 113
    new-array v1, v0, [Lmediabrowser/model/entities/TrailerType;

    invoke-virtual {p0, v1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->setTrailerTypes([Lmediabrowser/model/entities/TrailerType;)V

    .line 115
    new-array v0, v0, [Lmediabrowser/model/querying/ItemFilter;

    invoke-virtual {p0, v0}, Lmediabrowser/model/channels/AllChannelMediaQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/channels/AllChannelMediaQuery;->setFields(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getChannelIds()[Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->ChannelIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getContentTypes()[Lmediabrowser/model/channels/ChannelMediaContentType;
    .locals 1

    .line 76
    iget-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->ContentTypes:[Lmediabrowser/model/channels/ChannelMediaContentType;

    return-object v0
.end method

.method public final getExtraTypes()[Lmediabrowser/model/entities/ExtraType;
    .locals 1

    .line 91
    iget-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->ExtraTypes:[Lmediabrowser/model/entities/ExtraType;

    return-object v0
.end method

.method public final getFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/querying/ItemFields;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->Fields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getFilters()[Lmediabrowser/model/querying/ItemFilter;
    .locals 1

    .line 122
    iget-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 61
    iget-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTrailerTypes()[Lmediabrowser/model/entities/TrailerType;
    .locals 1

    .line 100
    iget-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->TrailerTypes:[Lmediabrowser/model/entities/TrailerType;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setChannelIds([Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->ChannelIds:[Ljava/lang/String;

    return-void
.end method

.method public final setContentTypes([Lmediabrowser/model/channels/ChannelMediaContentType;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->ContentTypes:[Lmediabrowser/model/channels/ChannelMediaContentType;

    return-void
.end method

.method public final setExtraTypes([Lmediabrowser/model/entities/ExtraType;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->ExtraTypes:[Lmediabrowser/model/entities/ExtraType;

    return-void
.end method

.method public final setFields(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/querying/ItemFields;",
            ">;)V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->Fields:Ljava/util/ArrayList;

    return-void
.end method

.method public final setFilters([Lmediabrowser/model/querying/ItemFilter;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setTrailerTypes([Lmediabrowser/model/entities/TrailerType;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->TrailerTypes:[Lmediabrowser/model/entities/TrailerType;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/channels/AllChannelMediaQuery;->UserId:Ljava/lang/String;

    return-void
.end method
