.class public Lmediabrowser/model/livetv/RecordingQuery;
.super Ljava/lang/Object;
.source "RecordingQuery.java"


# instance fields
.field private ChannelId:Ljava/lang/String;

.field private EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private EnableImages:Ljava/lang/Boolean;

.field private EnableTotalRecordCount:Z

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private Filters:[Lmediabrowser/model/querying/ItemFilter;

.field private GroupId:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private ImageTypeLimit:Ljava/lang/Integer;

.field private IsInProgress:Ljava/lang/Boolean;

.field private IsKids:Ljava/lang/Boolean;

.field private IsLibraryItem:Ljava/lang/Boolean;

.field private IsMovie:Ljava/lang/Boolean;

.field private IsNews:Ljava/lang/Boolean;

.field private IsSeries:Ljava/lang/Boolean;

.field private IsSports:Ljava/lang/Boolean;

.field private Limit:Ljava/lang/Integer;

.field private SeriesTimerId:Ljava/lang/String;

.field private SortBy:[Ljava/lang/String;

.field private SortOrder:Lmediabrowser/model/entities/SortOrder;

.field private StartIndex:Ljava/lang/Integer;

.field private Status:Lmediabrowser/model/livetv/RecordingStatus;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/RecordingQuery;->setEnableTotalRecordCount(Z)V

    return-void
.end method


# virtual methods
.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->ChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 235
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getEnableImages()Ljava/lang/Boolean;
    .locals 1

    .line 163
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->EnableImages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableTotalRecordCount()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->EnableTotalRecordCount:Z

    return v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 154
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getFilters()[Lmediabrowser/model/querying/ItemFilter;
    .locals 1

    .line 290
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-object v0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->GroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageTypeLimit()Ljava/lang/Integer;
    .locals 1

    .line 226
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIsInProgress()Ljava/lang/Boolean;
    .locals 1

    .line 124
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsInProgress:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsKids()Ljava/lang/Boolean;
    .locals 1

    .line 208
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsLibraryItem()Ljava/lang/Boolean;
    .locals 1

    .line 172
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsLibraryItem:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsMovie()Ljava/lang/Boolean;
    .locals 1

    .line 190
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsMovie:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsNews()Ljava/lang/Boolean;
    .locals 1

    .line 181
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsNews:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSeries()Ljava/lang/Boolean;
    .locals 1

    .line 199
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsSeries:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSports()Ljava/lang/Boolean;
    .locals 1

    .line 217
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsSports:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 94
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSeriesTimerId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->SeriesTimerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortBy()[Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->SortBy:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()Lmediabrowser/model/entities/SortOrder;
    .locals 1

    .line 275
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStatus()Lmediabrowser/model/livetv/RecordingStatus;
    .locals 1

    .line 109
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->Status:Lmediabrowser/model/livetv/RecordingStatus;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/livetv/RecordingQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->ChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setEnableImages(Ljava/lang/Boolean;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->EnableImages:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableTotalRecordCount(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->EnableTotalRecordCount:Z

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setFilters([Lmediabrowser/model/querying/ItemFilter;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-void
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->GroupId:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setImageTypeLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsInProgress(Ljava/lang/Boolean;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsInProgress:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsKids(Ljava/lang/Boolean;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsKids:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsLibraryItem(Ljava/lang/Boolean;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsLibraryItem:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsMovie(Ljava/lang/Boolean;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsMovie:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsNews(Ljava/lang/Boolean;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsNews:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSeries(Ljava/lang/Boolean;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsSeries:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSports(Ljava/lang/Boolean;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->IsSports:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setSeriesTimerId(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->SeriesTimerId:Ljava/lang/String;

    return-void
.end method

.method public final setSortBy([Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->SortBy:[Ljava/lang/String;

    return-void
.end method

.method public final setSortOrder(Lmediabrowser/model/entities/SortOrder;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setStatus(Lmediabrowser/model/livetv/RecordingStatus;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->Status:Lmediabrowser/model/livetv/RecordingStatus;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/livetv/RecordingQuery;->UserId:Ljava/lang/String;

    return-void
.end method
