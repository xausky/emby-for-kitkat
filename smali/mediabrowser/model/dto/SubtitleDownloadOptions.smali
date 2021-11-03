.class public Lmediabrowser/model/dto/SubtitleDownloadOptions;
.super Ljava/lang/Object;
.source "SubtitleDownloadOptions.java"


# instance fields
.field private Format:Ljava/lang/String;

.field private ItemId:Ljava/lang/String;

.field private MediaSourceId:Ljava/lang/String;

.field private StreamIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFormat()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lmediabrowser/model/dto/SubtitleDownloadOptions;->Format:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/dto/SubtitleDownloadOptions;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/dto/SubtitleDownloadOptions;->MediaSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreamIndex()I
    .locals 1

    .line 43
    iget v0, p0, Lmediabrowser/model/dto/SubtitleDownloadOptions;->StreamIndex:I

    return v0
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmediabrowser/model/dto/SubtitleDownloadOptions;->Format:Ljava/lang/String;

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/dto/SubtitleDownloadOptions;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setMediaSourceId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/dto/SubtitleDownloadOptions;->MediaSourceId:Ljava/lang/String;

    return-void
.end method

.method public final setStreamIndex(I)V
    .locals 0

    .line 47
    iput p1, p0, Lmediabrowser/model/dto/SubtitleDownloadOptions;->StreamIndex:I

    return-void
.end method
