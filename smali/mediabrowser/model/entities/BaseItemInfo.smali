.class public Lmediabrowser/model/entities/BaseItemInfo;
.super Ljava/lang/Object;
.source "BaseItemInfo.java"


# instance fields
.field private Album:Ljava/lang/String;

.field private Artists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private BackdropImageTag:Ljava/lang/String;

.field private BackdropItemId:Ljava/lang/String;

.field private ChapterImagesItemId:Ljava/lang/String;

.field private Chapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;"
        }
    .end annotation
.end field

.field private Id:Ljava/lang/String;

.field private IndexNumber:Ljava/lang/Integer;

.field private IndexNumberEnd:Ljava/lang/Integer;

.field private IsThemeMedia:Z

.field private LogoImageTag:Ljava/lang/String;

.field private LogoItemId:Ljava/lang/String;

.field private MediaStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private MediaType:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private ParentIndexNumber:Ljava/lang/Integer;

.field private PremiereDate:Ljava/util/Date;

.field private PrimaryImageItemId:Ljava/lang/String;

.field private PrimaryImageTag:Ljava/lang/String;

.field private ProductionYear:Ljava/lang/Integer;

.field private RunTimeTicks:Ljava/lang/Long;

.field private SeriesName:Ljava/lang/String;

.field private ThumbImageTag:Ljava/lang/String;

.field private ThumbItemId:Ljava/lang/String;

.field private Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->RunTimeTicks:Ljava/lang/Long;

    .line 213
    iput-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->PremiereDate:Ljava/util/Date;

    .line 228
    iput-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->ProductionYear:Ljava/lang/Integer;

    .line 243
    iput-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->IndexNumber:Ljava/lang/Integer;

    .line 258
    iput-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->IndexNumberEnd:Ljava/lang/Integer;

    .line 273
    iput-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->ParentIndexNumber:Ljava/lang/Integer;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/BaseItemInfo;->setArtists(Ljava/util/ArrayList;)V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/BaseItemInfo;->setMediaStreams(Ljava/util/ArrayList;)V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/BaseItemInfo;->setChapters(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getAlbum()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->Album:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->Artists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getBackdropImageTag()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->BackdropImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackdropItemId()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->BackdropItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChapterImagesItemId()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->ChapterImagesItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChapters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->Chapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getHasPrimaryImage()Z
    .locals 1

    .line 392
    invoke-virtual {p0}, Lmediabrowser/model/entities/BaseItemInfo;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 246
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->IndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndexNumberEnd()Ljava/lang/Integer;
    .locals 1

    .line 261
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->IndexNumberEnd:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIsThemeMedia()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->IsThemeMedia:Z

    return v0
.end method

.method public final getLogoImageTag()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->LogoImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogoItemId()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->LogoItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->MediaStreams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMediaType()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->MediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 276
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->ParentIndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPremiereDate()Ljava/util/Date;
    .locals 1

    .line 216
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->PremiereDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getPrimaryImageItemId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->PrimaryImageItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->PrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductionYear()Ljava/lang/Integer;
    .locals 1

    .line 231
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->ProductionYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 81
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->RunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSeriesName()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->SeriesName:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbImageTag()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->ThumbImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbItemId()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->ThumbItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lmediabrowser/model/entities/BaseItemInfo;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public final setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->Album:Ljava/lang/String;

    return-void
.end method

.method public final setArtists(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->Artists:Ljava/util/ArrayList;

    return-void
.end method

.method public final setBackdropImageTag(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->BackdropImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setBackdropItemId(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->BackdropItemId:Ljava/lang/String;

    return-void
.end method

.method public final setChapterImagesItemId(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->ChapterImagesItemId:Ljava/lang/String;

    return-void
.end method

.method public final setChapters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/ChapterInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->Chapters:Ljava/util/ArrayList;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->IndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setIndexNumberEnd(Ljava/lang/Integer;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->IndexNumberEnd:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsThemeMedia(Z)V
    .locals 0

    .line 320
    iput-boolean p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->IsThemeMedia:Z

    return-void
.end method

.method public final setLogoImageTag(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->LogoImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setLogoItemId(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->LogoItemId:Ljava/lang/String;

    return-void
.end method

.method public final setMediaStreams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;)V"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->MediaStreams:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->MediaType:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setParentIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->ParentIndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setPremiereDate(Ljava/util/Date;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->PremiereDate:Ljava/util/Date;

    return-void
.end method

.method public final setPrimaryImageItemId(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->PrimaryImageItemId:Ljava/lang/String;

    return-void
.end method

.method public final setPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->PrimaryImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setProductionYear(Ljava/lang/Integer;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->ProductionYear:Ljava/lang/Integer;

    return-void
.end method

.method public final setRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->RunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setSeriesName(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->SeriesName:Ljava/lang/String;

    return-void
.end method

.method public final setThumbImageTag(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->ThumbImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setThumbItemId(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->ThumbItemId:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lmediabrowser/model/entities/BaseItemInfo;->Type:Ljava/lang/String;

    return-void
.end method
