.class public Lmediabrowser/model/channels/ChannelItemQuery;
.super Ljava/lang/Object;
.source "ChannelItemQuery.java"


# instance fields
.field private ChannelId:Ljava/lang/String;

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private Filters:[Lmediabrowser/model/querying/ItemFilter;

.field private FolderId:Ljava/lang/String;

.field private Limit:Ljava/lang/Integer;

.field private SortBy:[Ljava/lang/String;

.field private SortOrder:Lmediabrowser/model/entities/SortOrder;

.field private StartIndex:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    new-array v1, v0, [Lmediabrowser/model/querying/ItemFilter;

    invoke-virtual {p0, v1}, Lmediabrowser/model/channels/ChannelItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 123
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/channels/ChannelItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 124
    new-array v0, v0, [Lmediabrowser/model/querying/ItemFields;

    invoke-virtual {p0, v0}, Lmediabrowser/model/channels/ChannelItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    return-void
.end method


# virtual methods
.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelItemQuery;->ChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 113
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelItemQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getFilters()[Lmediabrowser/model/querying/ItemFilter;
    .locals 1

    .line 104
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelItemQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-object v0
.end method

.method public final getFolderId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelItemQuery;->FolderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelItemQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSortBy()[Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelItemQuery;->SortBy:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()Lmediabrowser/model/entities/SortOrder;
    .locals 1

    .line 86
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelItemQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 61
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelItemQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/channels/ChannelItemQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelItemQuery;->ChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelItemQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setFilters([Lmediabrowser/model/querying/ItemFilter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelItemQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-void
.end method

.method public final setFolderId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelItemQuery;->FolderId:Ljava/lang/String;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelItemQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setSortBy([Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelItemQuery;->SortBy:[Ljava/lang/String;

    return-void
.end method

.method public final setSortOrder(Lmediabrowser/model/entities/SortOrder;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelItemQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelItemQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/channels/ChannelItemQuery;->UserId:Ljava/lang/String;

    return-void
.end method
