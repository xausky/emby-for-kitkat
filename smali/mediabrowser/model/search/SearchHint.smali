.class public Lmediabrowser/model/search/SearchHint;
.super Ljava/lang/Object;
.source "SearchHint.java"


# instance fields
.field private Album:Ljava/lang/String;

.field private AlbumArtist:Ljava/lang/String;

.field private Artists:[Ljava/lang/String;

.field private BackdropImageItemId:Ljava/lang/String;

.field private BackdropImageTag:Ljava/lang/String;

.field private ChannelId:Ljava/lang/String;

.field private ChannelName:Ljava/lang/String;

.field private DisplayMediaType:Ljava/lang/String;

.field private EpisodeCount:Ljava/lang/Integer;

.field private IndexNumber:Ljava/lang/Integer;

.field private ItemId:Ljava/lang/String;

.field private MatchedTerm:Ljava/lang/String;

.field private MediaType:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private ParentIndexNumber:Ljava/lang/Integer;

.field private PrimaryImageAspectRatio:Ljava/lang/Double;

.field private PrimaryImageTag:Ljava/lang/String;

.field private ProductionYear:Ljava/lang/Integer;

.field private RunTimeTicks:Ljava/lang/Long;

.field private Series:Ljava/lang/String;

.field private SongCount:Ljava/lang/Integer;

.field private ThumbImageItemId:Ljava/lang/String;

.field private ThumbImageTag:Ljava/lang/String;

.field private Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lmediabrowser/model/search/SearchHint;->IndexNumber:Ljava/lang/Integer;

    .line 73
    iput-object v0, p0, Lmediabrowser/model/search/SearchHint;->ProductionYear:Ljava/lang/Integer;

    .line 88
    iput-object v0, p0, Lmediabrowser/model/search/SearchHint;->ParentIndexNumber:Ljava/lang/Integer;

    .line 193
    iput-object v0, p0, Lmediabrowser/model/search/SearchHint;->RunTimeTicks:Ljava/lang/Long;

    .line 298
    iput-object v0, p0, Lmediabrowser/model/search/SearchHint;->SongCount:Ljava/lang/Integer;

    .line 313
    iput-object v0, p0, Lmediabrowser/model/search/SearchHint;->EpisodeCount:Ljava/lang/Integer;

    .line 358
    iput-object v0, p0, Lmediabrowser/model/search/SearchHint;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final getAlbum()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->Album:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumArtist()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->AlbumArtist:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtists()[Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->Artists:[Ljava/lang/String;

    return-object v0
.end method

.method public final getBackdropImageItemId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->BackdropImageItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackdropImageTag()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->BackdropImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->ChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelName()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->ChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayMediaType()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->DisplayMediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisodeCount()Ljava/lang/Integer;
    .locals 1

    .line 316
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->EpisodeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 61
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->IndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatchedTerm()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->MatchedTerm:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaType()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->MediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 91
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->ParentIndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPrimaryImageAspectRatio()Ljava/lang/Double;
    .locals 1

    .line 361
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->PrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductionYear()Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->ProductionYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 196
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->RunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSeries()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->Series:Ljava/lang/String;

    return-object v0
.end method

.method public final getSongCount()Ljava/lang/Integer;
    .locals 1

    .line 301
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->SongCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getThumbImageItemId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->ThumbImageItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbImageTag()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->ThumbImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lmediabrowser/model/search/SearchHint;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public final setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->Album:Ljava/lang/String;

    return-void
.end method

.method public final setAlbumArtist(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->AlbumArtist:Ljava/lang/String;

    return-void
.end method

.method public final setArtists([Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->Artists:[Ljava/lang/String;

    return-void
.end method

.method public final setBackdropImageItemId(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->BackdropImageItemId:Ljava/lang/String;

    return-void
.end method

.method public final setBackdropImageTag(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->BackdropImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->ChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->ChannelName:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayMediaType(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->DisplayMediaType:Ljava/lang/String;

    return-void
.end method

.method public final setEpisodeCount(Ljava/lang/Integer;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->EpisodeCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->IndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setMatchedTerm(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->MatchedTerm:Ljava/lang/String;

    return-void
.end method

.method public final setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->MediaType:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setParentIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->ParentIndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setPrimaryImageAspectRatio(Ljava/lang/Double;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-void
.end method

.method public final setPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->PrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setProductionYear(Ljava/lang/Integer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->ProductionYear:Ljava/lang/Integer;

    return-void
.end method

.method public final setRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->RunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setSeries(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->Series:Ljava/lang/String;

    return-void
.end method

.method public final setSongCount(Ljava/lang/Integer;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->SongCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setThumbImageItemId(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->ThumbImageItemId:Ljava/lang/String;

    return-void
.end method

.method public final setThumbImageTag(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->ThumbImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmediabrowser/model/search/SearchHint;->Type:Ljava/lang/String;

    return-void
.end method
