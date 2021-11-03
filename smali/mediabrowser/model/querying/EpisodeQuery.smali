.class public Lmediabrowser/model/querying/EpisodeQuery;
.super Ljava/lang/Object;
.source "EpisodeQuery.java"


# instance fields
.field private AdjacentTo:Ljava/lang/String;

.field private EnableTotalRecordCount:Z

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private Filters:[Lmediabrowser/model/querying/ItemFilter;

.field private IsMissing:Ljava/lang/Boolean;

.field private IsVirtualUnaired:Ljava/lang/Boolean;

.field private Limit:Ljava/lang/Integer;

.field private SeasonId:Ljava/lang/String;

.field private SeasonNumber:Ljava/lang/Integer;

.field private SeriesId:Ljava/lang/String;

.field private StartIndex:Ljava/lang/Integer;

.field private StartItemId:Ljava/lang/String;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 190
    new-array v0, v0, [Lmediabrowser/model/querying/ItemFields;

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/EpisodeQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    return-void
.end method


# virtual methods
.method public final getAdjacentTo()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->AdjacentTo:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableTotalRecordCount()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->EnableTotalRecordCount:Z

    return v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 97
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getFilters()[Lmediabrowser/model/querying/ItemFilter;
    .locals 1

    .line 111
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-object v0
.end method

.method public final getIsMissing()Ljava/lang/Boolean;
    .locals 1

    .line 55
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->IsMissing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsVirtualUnaired()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->IsVirtualUnaired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 140
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSeasonId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->SeasonId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeasonNumber()Ljava/lang/Integer;
    .locals 1

    .line 83
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->SeasonNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSeriesId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->SeriesId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 126
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartItemId()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->StartItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/querying/EpisodeQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdjacentTo(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->AdjacentTo:Ljava/lang/String;

    return-void
.end method

.method public final setEnableTotalRecordCount(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->EnableTotalRecordCount:Z

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setFilters([Lmediabrowser/model/querying/ItemFilter;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-void
.end method

.method public final setIsMissing(Ljava/lang/Boolean;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->IsMissing:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsVirtualUnaired(Ljava/lang/Boolean;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->IsVirtualUnaired:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setSeasonId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->SeasonId:Ljava/lang/String;

    return-void
.end method

.method public final setSeasonNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->SeasonNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setSeriesId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->SeriesId:Ljava/lang/String;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartItemId(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->StartItemId:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/querying/EpisodeQuery;->UserId:Ljava/lang/String;

    return-void
.end method
