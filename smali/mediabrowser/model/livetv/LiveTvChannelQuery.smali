.class public Lmediabrowser/model/livetv/LiveTvChannelQuery;
.super Ljava/lang/Object;
.source "LiveTvChannelQuery.java"


# instance fields
.field private AddCurrentProgram:Z

.field private ChannelType:Lmediabrowser/model/livetv/ChannelType;

.field private EnableFavoriteSorting:Z

.field private EnableUserData:Z

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private IsDisliked:Ljava/lang/Boolean;

.field private IsFavorite:Ljava/lang/Boolean;

.field private IsKids:Ljava/lang/Boolean;

.field private IsLiked:Ljava/lang/Boolean;

.field private IsMovie:Ljava/lang/Boolean;

.field private IsNews:Ljava/lang/Boolean;

.field private IsSeries:Ljava/lang/Boolean;

.field private IsSports:Ljava/lang/Boolean;

.field private Limit:Ljava/lang/Integer;

.field private SortBy:[Ljava/lang/String;

.field private SortOrder:Lmediabrowser/model/entities/SortOrder;

.field private StartIndex:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setEnableUserData(Z)V

    const/4 v0, 0x0

    .line 266
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->setSortBy([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAddCurrentProgram()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->AddCurrentProgram:Z

    return v0
.end method

.method public final getChannelType()Lmediabrowser/model/livetv/ChannelType;
    .locals 1

    .line 19
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->ChannelType:Lmediabrowser/model/livetv/ChannelType;

    return-object v0
.end method

.method public final getEnableFavoriteSorting()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->EnableFavoriteSorting:Z

    return v0
.end method

.method public final getEnableUserData()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->EnableUserData:Z

    return v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 241
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getIsDisliked()Ljava/lang/Boolean;
    .locals 1

    .line 64
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsDisliked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsFavorite()Ljava/lang/Boolean;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsFavorite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsKids()Ljava/lang/Boolean;
    .locals 1

    .line 193
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsLiked()Ljava/lang/Boolean;
    .locals 1

    .line 49
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsLiked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsMovie()Ljava/lang/Boolean;
    .locals 1

    .line 178
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsMovie:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsNews()Ljava/lang/Boolean;
    .locals 1

    .line 163
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsNews:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSeries()Ljava/lang/Boolean;
    .locals 1

    .line 216
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsSeries:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSports()Ljava/lang/Boolean;
    .locals 1

    .line 207
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsSports:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 124
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSortBy()[Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->SortBy:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()Lmediabrowser/model/entities/SortOrder;
    .locals 1

    .line 256
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 109
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setAddCurrentProgram(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->AddCurrentProgram:Z

    return-void
.end method

.method public final setChannelType(Lmediabrowser/model/livetv/ChannelType;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->ChannelType:Lmediabrowser/model/livetv/ChannelType;

    return-void
.end method

.method public final setEnableFavoriteSorting(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->EnableFavoriteSorting:Z

    return-void
.end method

.method public final setEnableUserData(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->EnableUserData:Z

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setIsDisliked(Ljava/lang/Boolean;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsDisliked:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsFavorite(Ljava/lang/Boolean;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsFavorite:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsKids(Ljava/lang/Boolean;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsKids:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsLiked(Ljava/lang/Boolean;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsLiked:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsMovie(Ljava/lang/Boolean;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsMovie:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsNews(Ljava/lang/Boolean;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsNews:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSeries(Ljava/lang/Boolean;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsSeries:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSports(Ljava/lang/Boolean;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->IsSports:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setSortBy([Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->SortBy:[Ljava/lang/String;

    return-void
.end method

.method public final setSortOrder(Lmediabrowser/model/entities/SortOrder;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvChannelQuery;->UserId:Ljava/lang/String;

    return-void
.end method
