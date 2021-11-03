.class public Ltv/emby/embyatv/browsing/BrowseRowDef;
.super Ljava/lang/Object;
.source "BrowseRowDef.java"


# instance fields
.field private artistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

.field private changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

.field private chunkSize:I

.field private headerText:Ljava/lang/String;

.field private isStaticHeight:Z

.field private itemsByNameQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

.field private latestItemsQuery:Lmediabrowser/model/querying/LatestItemsQuery;

.field private nextUpQuery:Lmediabrowser/model/querying/NextUpQuery;

.field private personsQuery:Lmediabrowser/model/querying/PersonsQuery;

.field private preferParentThumb:Z

.field private preferSeriesPoster:Z

.field private programQuery:Lmediabrowser/model/livetv/RecommendedProgramQuery;

.field private query:Lmediabrowser/model/querying/ItemQuery;

.field private queryType:Ltv/emby/embyatv/querying/QueryType;

.field private recordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

.field private seasonQuery:Lmediabrowser/model/querying/SeasonQuery;

.field private seriesTimerQuery:Lmediabrowser/model/livetv/SeriesTimerQuery;

.field private showPrograms:Z

.field private similarQuery:Lmediabrowser/model/querying/SimilarItemsQuery;

.field private staticHeight:I

.field private tvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

.field private upcomingQuery:Lmediabrowser/model/querying/UpcomingEpisodesQuery;

.field private useTile:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/livetv/LiveTvChannelQuery;Z)V
    .locals 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 168
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->tvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    .line 170
    iput-boolean p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 171
    iput-boolean p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    .line 172
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x12c

    iput p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 173
    :cond_0
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->LiveTvChannel:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/livetv/LiveTvChannelQuery;[Ltv/emby/embyatv/model/ChangeTriggerType;Z)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 158
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->tvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    .line 160
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->LiveTvChannel:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 161
    iput-object p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 162
    iput-boolean p4, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 163
    iput-boolean p4, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    .line 164
    iget-boolean p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x12c

    iput p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecommendedProgramQuery;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 177
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->programQuery:Lmediabrowser/model/livetv/RecommendedProgramQuery;

    .line 179
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->LiveTvProgram:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 p2, 0x12c

    .line 181
    iput p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 182
    new-array p1, p1, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object p2, Ltv/emby/embyatv/model/ChangeTriggerType;->GuideNeedsLoad:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object p2, p1, v0

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, p2, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;I)V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 190
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->recordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    .line 192
    iput p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 193
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->LiveTvRecording:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    const/4 p1, 0x1

    .line 194
    new-array p1, p1, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object p2, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object p2, p1, v0

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/livetv/SeriesTimerQuery;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 125
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->seriesTimerQuery:Lmediabrowser/model/livetv/SeriesTimerQuery;

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    .line 128
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->SeriesTimer:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/ArtistsQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 89
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->artistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    .line 91
    iput p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    if-lez p3, :cond_0

    .line 92
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->artistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/ArtistsQuery;->setEnableTotalRecordCount(Z)V

    .line 93
    :cond_0
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->AlbumArtists:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 94
    iput-object p4, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    const/16 p1, 0x12c

    .line 95
    iput p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/ArtistsQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;Ltv/emby/embyatv/querying/QueryType;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 108
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->artistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    .line 110
    iput p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    if-lez p3, :cond_0

    .line 111
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->artistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/ArtistsQuery;->setEnableTotalRecordCount(Z)V

    .line 112
    :cond_0
    iput-object p5, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 113
    iput-object p4, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    const/16 p1, 0x12c

    .line 114
    iput p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 57
    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 61
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->query:Lmediabrowser/model/querying/ItemQuery;

    .line 63
    iput p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 64
    iput-boolean p4, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 65
    iput-boolean p5, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    .line 66
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Items:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ[Ltv/emby/embyatv/model/ChangeTriggerType;)V
    .locals 8

    .line 74
    sget-object v7, Ltv/emby/embyatv/querying/QueryType;->Items:Ltv/emby/embyatv/querying/QueryType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ[Ltv/emby/embyatv/model/ChangeTriggerType;Ltv/emby/embyatv/querying/QueryType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ[Ltv/emby/embyatv/model/ChangeTriggerType;Ltv/emby/embyatv/querying/QueryType;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 78
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->query:Lmediabrowser/model/querying/ItemQuery;

    .line 80
    iput p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 81
    iput-object p7, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 82
    iput-boolean p5, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    .line 83
    iput-boolean p4, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 84
    iput-object p6, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12c

    .line 85
    :goto_0
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 70
    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 99
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->itemsByNameQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

    .line 101
    iput p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 102
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Genres:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 103
    iput-object p4, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/LatestItemsQuery;Z[Ltv/emby/embyatv/model/ChangeTriggerType;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 143
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->latestItemsQuery:Lmediabrowser/model/querying/LatestItemsQuery;

    .line 145
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->LatestItems:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 146
    iput-boolean p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 147
    iput-object p4, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    const/16 p1, 0x12c

    .line 148
    iput p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/LatestItemsQuery;[Ltv/emby/embyatv/model/ChangeTriggerType;)V
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, p1, p2, v0, p3}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/LatestItemsQuery;Z[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/NextUpQuery;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 119
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->nextUpQuery:Lmediabrowser/model/querying/NextUpQuery;

    .line 121
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->NextUp:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/NextUpQuery;[Ltv/emby/embyatv/model/ChangeTriggerType;)V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 132
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->nextUpQuery:Lmediabrowser/model/querying/NextUpQuery;

    .line 134
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->NextUp:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    .line 136
    iput-object p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/PersonsQuery;I)V
    .locals 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 199
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->personsQuery:Lmediabrowser/model/querying/PersonsQuery;

    .line 201
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Persons:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 202
    iput p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/PersonsQuery;I[Ltv/emby/embyatv/model/ChangeTriggerType;)V
    .locals 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 206
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->personsQuery:Lmediabrowser/model/querying/PersonsQuery;

    .line 208
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Persons:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 209
    iput p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 210
    iput-object p4, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/SeasonQuery;)V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 220
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 221
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->seasonQuery:Lmediabrowser/model/querying/SeasonQuery;

    .line 222
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Season:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/SimilarItemsQuery;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 152
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->similarQuery:Lmediabrowser/model/querying/SimilarItemsQuery;

    .line 154
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/SimilarItemsQuery;Ltv/emby/embyatv/querying/QueryType;)V
    .locals 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 214
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 215
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->similarQuery:Lmediabrowser/model/querying/SimilarItemsQuery;

    .line 216
    iput-object p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmediabrowser/model/querying/UpcomingEpisodesQuery;)V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 226
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->upcomingQuery:Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    .line 228
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Upcoming:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltv/emby/embyatv/querying/QueryType;)V
    .locals 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v1, 0xfa

    .line 45
    iput v1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 232
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    .line 234
    iput-object p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltv/emby/embyatv/querying/ViewQuery;)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, p2, v0}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Ltv/emby/embyatv/querying/ViewQuery;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltv/emby/embyatv/querying/ViewQuery;Z)V
    .locals 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    .line 44
    iput-boolean p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 v0, 0xfa

    .line 45
    iput v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 46
    iput-boolean p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    .line 47
    iput-boolean p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    .line 48
    iput-boolean p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    .line 49
    iput-boolean p2, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    .line 241
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    const/16 p1, 0xf0

    .line 243
    iput p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    .line 244
    sget-object p1, Ltv/emby/embyatv/querying/QueryType;->Views:Ltv/emby/embyatv/querying/QueryType;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    .line 245
    iput-boolean p3, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    return-void
.end method


# virtual methods
.method public getArtistsQuery()Lmediabrowser/model/querying/ArtistsQuery;
    .locals 1

    .line 302
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->artistsQuery:Lmediabrowser/model/querying/ArtistsQuery;

    return-object v0
.end method

.method public getChangeTriggers()[Ltv/emby/embyatv/model/ChangeTriggerType;
    .locals 1

    .line 309
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->changeTriggers:[Ltv/emby/embyatv/model/ChangeTriggerType;

    return-object v0
.end method

.method public getChunkSize()I
    .locals 1

    .line 249
    iget v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->chunkSize:I

    return v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    return-object v0
.end method

.method public getItemsByNameQuery()Lmediabrowser/model/querying/ItemsByNameQuery;
    .locals 1

    .line 306
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->itemsByNameQuery:Lmediabrowser/model/querying/ItemsByNameQuery;

    return-object v0
.end method

.method public getLatestItemsQuery()Lmediabrowser/model/querying/LatestItemsQuery;
    .locals 1

    .line 272
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->latestItemsQuery:Lmediabrowser/model/querying/LatestItemsQuery;

    return-object v0
.end method

.method public getNextUpQuery()Lmediabrowser/model/querying/NextUpQuery;
    .locals 1

    .line 269
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->nextUpQuery:Lmediabrowser/model/querying/NextUpQuery;

    return-object v0
.end method

.method public getPersonsQuery()Lmediabrowser/model/querying/PersonsQuery;
    .locals 1

    .line 299
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->personsQuery:Lmediabrowser/model/querying/PersonsQuery;

    return-object v0
.end method

.method public getPreferParentThumb()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferParentThumb:Z

    return v0
.end method

.method public getPreferSeriesPoster()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->preferSeriesPoster:Z

    return v0
.end method

.method public getProgramQuery()Lmediabrowser/model/livetv/RecommendedProgramQuery;
    .locals 1

    .line 291
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->programQuery:Lmediabrowser/model/livetv/RecommendedProgramQuery;

    return-object v0
.end method

.method public getQuery()Lmediabrowser/model/querying/ItemQuery;
    .locals 1

    .line 265
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->query:Lmediabrowser/model/querying/ItemQuery;

    return-object v0
.end method

.method public getQueryType()Ltv/emby/embyatv/querying/QueryType;
    .locals 1

    .line 277
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->queryType:Ltv/emby/embyatv/querying/QueryType;

    return-object v0
.end method

.method public getRecordingQuery()Lmediabrowser/model/livetv/RecordingQuery;
    .locals 1

    .line 294
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->recordingQuery:Lmediabrowser/model/livetv/RecordingQuery;

    return-object v0
.end method

.method public getSeasonQuery()Lmediabrowser/model/querying/SeasonQuery;
    .locals 1

    .line 280
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->seasonQuery:Lmediabrowser/model/querying/SeasonQuery;

    return-object v0
.end method

.method public getSeriesTimerQuery()Lmediabrowser/model/livetv/SeriesTimerQuery;
    .locals 1

    .line 304
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->seriesTimerQuery:Lmediabrowser/model/livetv/SeriesTimerQuery;

    return-object v0
.end method

.method public getShowPrograms()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->showPrograms:Z

    return v0
.end method

.method public getSimilarQuery()Lmediabrowser/model/querying/SimilarItemsQuery;
    .locals 1

    .line 274
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->similarQuery:Lmediabrowser/model/querying/SimilarItemsQuery;

    return-object v0
.end method

.method public getStaticHeight()I
    .locals 1

    .line 254
    iget v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->staticHeight:I

    return v0
.end method

.method public getTvChannelQuery()Lmediabrowser/model/livetv/LiveTvChannelQuery;
    .locals 1

    .line 287
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->tvChannelQuery:Lmediabrowser/model/livetv/LiveTvChannelQuery;

    return-object v0
.end method

.method public getUpcomingQuery()Lmediabrowser/model/querying/UpcomingEpisodesQuery;
    .locals 1

    .line 283
    iget-object v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->upcomingQuery:Lmediabrowser/model/querying/UpcomingEpisodesQuery;

    return-object v0
.end method

.method public isStaticHeight()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->isStaticHeight:Z

    return v0
.end method

.method public isUseTile()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->useTile:Z

    return v0
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BrowseRowDef;->headerText:Ljava/lang/String;

    return-void
.end method
