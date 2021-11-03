.class public Lfr/bmartel/youtubetv/model/VideoInfo;
.super Ljava/lang/Object;
.source "VideoInfo.java"


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mAvailableQualityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/model/VideoQuality;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/model/VideoQuality;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mVideoId:Ljava/lang/String;

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mAuthor:Ljava/lang/String;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mTitle:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mAvailableQualityList:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mVideoId:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mAuthor:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mTitle:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mAvailableQualityList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableQualityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfr/bmartel/youtubetv/model/VideoQuality;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mAvailableQualityList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lfr/bmartel/youtubetv/model/VideoInfo;->mVideoId:Ljava/lang/String;

    return-object v0
.end method
