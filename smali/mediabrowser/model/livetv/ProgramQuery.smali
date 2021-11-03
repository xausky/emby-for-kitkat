.class public Lmediabrowser/model/livetv/ProgramQuery;
.super Ljava/lang/Object;
.source "ProgramQuery.java"


# instance fields
.field private ChannelIds:[Ljava/lang/String;

.field private EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private EnableImages:Ljava/lang/Boolean;

.field private EnableTotalRecordCount:Z

.field private EnableUserData:Z

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private Genres:[Ljava/lang/String;

.field private HasAired:Ljava/lang/Boolean;

.field private ImageTypeLimit:Ljava/lang/Integer;

.field private IsKids:Ljava/lang/Boolean;

.field private IsMovie:Ljava/lang/Boolean;

.field private IsNews:Ljava/lang/Boolean;

.field private IsSeries:Ljava/lang/Boolean;

.field private IsSports:Ljava/lang/Boolean;

.field private Limit:Ljava/lang/Integer;

.field private MaxEndDate:Ljava/util/Date;

.field private MaxStartDate:Ljava/util/Date;

.field private MinEndDate:Ljava/util/Date;

.field private MinStartDate:Ljava/util/Date;

.field private Name:Ljava/lang/String;

.field private SeriesTimerId:Ljava/lang/String;

.field private SortBy:[Ljava/lang/String;

.field private SortOrder:Lmediabrowser/model/entities/SortOrder;

.field private StartIndex:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->EnableImages:Ljava/lang/Boolean;

    .line 62
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->ImageTypeLimit:Ljava/lang/Integer;

    .line 132
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->MinStartDate:Ljava/util/Date;

    .line 145
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->MaxStartDate:Ljava/util/Date;

    .line 158
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->MinEndDate:Ljava/util/Date;

    .line 171
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->MaxEndDate:Ljava/util/Date;

    .line 186
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsNews:Ljava/lang/Boolean;

    .line 201
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsMovie:Ljava/lang/Boolean;

    .line 216
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsKids:Ljava/lang/Boolean;

    .line 230
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsSports:Ljava/lang/Boolean;

    .line 243
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->StartIndex:Ljava/lang/Integer;

    .line 252
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsSeries:Ljava/lang/Boolean;

    .line 267
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->HasAired:Ljava/lang/Boolean;

    .line 280
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->Limit:Ljava/lang/Integer;

    .line 310
    iput-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    const/4 v0, 0x0

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/livetv/ProgramQuery;->setChannelIds([Ljava/lang/String;)V

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/livetv/ProgramQuery;->setSortBy([Ljava/lang/String;)V

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/ProgramQuery;->setGenres([Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/ProgramQuery;->setEnableTotalRecordCount(Z)V

    .line 17
    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/ProgramQuery;->setEnableUserData(Z)V

    return-void
.end method


# virtual methods
.method public final getChannelIds()[Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->ChannelIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 74
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getEnableImages()Ljava/lang/Boolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->EnableImages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableTotalRecordCount()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->EnableTotalRecordCount:Z

    return v0
.end method

.method public final getEnableUserData()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->EnableUserData:Z

    return v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 47
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getGenres()[Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->Genres:[Ljava/lang/String;

    return-object v0
.end method

.method public final getHasAired()Ljava/lang/Boolean;
    .locals 1

    .line 270
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->HasAired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getImageTypeLimit()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIsKids()Ljava/lang/Boolean;
    .locals 1

    .line 219
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsMovie()Ljava/lang/Boolean;
    .locals 1

    .line 204
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsMovie:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsNews()Ljava/lang/Boolean;
    .locals 1

    .line 189
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsNews:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSeries()Ljava/lang/Boolean;
    .locals 1

    .line 255
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsSeries:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsSports()Ljava/lang/Boolean;
    .locals 1

    .line 233
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsSports:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 283
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxEndDate()Ljava/util/Date;
    .locals 1

    .line 174
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->MaxEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getMaxStartDate()Ljava/util/Date;
    .locals 1

    .line 148
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->MaxStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getMinEndDate()Ljava/util/Date;
    .locals 1

    .line 161
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->MinEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getMinStartDate()Ljava/util/Date;
    .locals 1

    .line 135
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->MinStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesTimerId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->SeriesTimerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortBy()[Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->SortBy:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()Lmediabrowser/model/entities/SortOrder;
    .locals 1

    .line 313
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 246
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lmediabrowser/model/livetv/ProgramQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setChannelIds([Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->ChannelIds:[Ljava/lang/String;

    return-void
.end method

.method public final setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setEnableImages(Ljava/lang/Boolean;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->EnableImages:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableTotalRecordCount(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->EnableTotalRecordCount:Z

    return-void
.end method

.method public final setEnableUserData(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->EnableUserData:Z

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setGenres([Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->Genres:[Ljava/lang/String;

    return-void
.end method

.method public final setHasAired(Ljava/lang/Boolean;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->HasAired:Ljava/lang/Boolean;

    return-void
.end method

.method public final setImageTypeLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsKids(Ljava/lang/Boolean;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsKids:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsMovie(Ljava/lang/Boolean;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsMovie:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsNews(Ljava/lang/Boolean;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsNews:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSeries(Ljava/lang/Boolean;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsSeries:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsSports(Ljava/lang/Boolean;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->IsSports:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxEndDate(Ljava/util/Date;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->MaxEndDate:Ljava/util/Date;

    return-void
.end method

.method public final setMaxStartDate(Ljava/util/Date;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->MaxStartDate:Ljava/util/Date;

    return-void
.end method

.method public final setMinEndDate(Ljava/util/Date;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->MinEndDate:Ljava/util/Date;

    return-void
.end method

.method public final setMinStartDate(Ljava/util/Date;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->MinStartDate:Ljava/util/Date;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesTimerId(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->SeriesTimerId:Ljava/lang/String;

    return-void
.end method

.method public final setSortBy([Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->SortBy:[Ljava/lang/String;

    return-void
.end method

.method public final setSortOrder(Lmediabrowser/model/entities/SortOrder;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lmediabrowser/model/livetv/ProgramQuery;->UserId:Ljava/lang/String;

    return-void
.end method
