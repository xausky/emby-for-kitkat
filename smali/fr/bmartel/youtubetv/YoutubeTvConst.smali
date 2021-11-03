.class public Lfr/bmartel/youtubetv/YoutubeTvConst;
.super Ljava/lang/Object;
.source "YoutubeTvConst.java"


# static fields
.field public static final DEFAULT_AUTOHIDE:Lfr/bmartel/youtubetv/model/VideoAutoHide;

.field public static final DEFAULT_AUTOPLAY:Z = true

.field public static final DEFAULT_BORDER_COLOR:I = -0xffff01

.field public static final DEFAULT_BORDER_WIDTH:I = 0x2

.field public static final DEFAULT_CLOSED_CAPTION:Z = false

.field public static final DEFAULT_DEBUG_MODE:Z = false

.field public static final DEFAULT_JAVASCRIPT_TIMEOUT:I = 0x5dc

.field public static final DEFAULT_LOADING_BG:I = 0x0

.field public static final DEFAULT_SHOW_BORDER:Z = false

.field public static final DEFAULT_SHOW_CONTROLS:Lfr/bmartel/youtubetv/model/VideoControls;

.field public static final DEFAULT_SHOW_NOWPLAYINGCARD:Z = true

.field public static final DEFAULT_SHOW_RELATED_VIDEOS:Z = false

.field public static final DEFAULT_SHOW_VIDEO_INFO:Z = false

.field public static final DEFAULT_THUMBNAIL_QUALITY:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

.field public static final DEFAULT_THUMBNAIL_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_USER_AGENT:Lfr/bmartel/youtubetv/model/UserAgents;

.field public static final DEFAULT_VIDEO_ANNOTATION:Z = false

.field public static final DEFAULT_VIDEO_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_VIDEO_QUALITY:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final THUMBNAIL_QUALITY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    sget-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->HD_1080:Lfr/bmartel/youtubetv/model/VideoQuality;

    sput-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_VIDEO_QUALITY:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 73
    sget-object v0, Lfr/bmartel/youtubetv/model/VideoControls;->NONE:Lfr/bmartel/youtubetv/model/VideoControls;

    sput-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_SHOW_CONTROLS:Lfr/bmartel/youtubetv/model/VideoControls;

    .line 78
    sget-object v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;->DEFAULT:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    sput-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_AUTOHIDE:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    .line 103
    sget-object v0, Lfr/bmartel/youtubetv/model/UserAgents;->CHROME_IPHONE:Lfr/bmartel/youtubetv/model/UserAgents;

    sput-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_USER_AGENT:Lfr/bmartel/youtubetv/model/UserAgents;

    .line 123
    sget-object v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->MAXRES_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    sput-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->DEFAULT_THUMBNAIL_QUALITY:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->THUMBNAIL_QUALITY_LIST:Ljava/util/List;

    .line 141
    sget-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->THUMBNAIL_QUALITY_LIST:Ljava/util/List;

    const-string v1, "maxresdefault"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->THUMBNAIL_QUALITY_LIST:Ljava/util/List;

    const-string v1, "sddefault"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->THUMBNAIL_QUALITY_LIST:Ljava/util/List;

    const-string v1, "hqdefault"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->THUMBNAIL_QUALITY_LIST:Ljava/util/List;

    const-string v1, "mqdefault"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lfr/bmartel/youtubetv/YoutubeTvConst;->THUMBNAIL_QUALITY_LIST:Ljava/util/List;

    const-string v1, "default"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
