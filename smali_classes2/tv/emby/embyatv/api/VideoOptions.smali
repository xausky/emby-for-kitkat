.class public Ltv/emby/embyatv/api/VideoOptions;
.super Ltv/emby/embyatv/api/AudioOptions;
.source "VideoOptions.java"


# instance fields
.field private AllowVideoStreamCopy:Z

.field private AudioStreamIndex:Ljava/lang/Integer;

.field private CurrentPlaySessionId:Ljava/lang/String;

.field private SubtitleStreamIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ltv/emby/embyatv/api/AudioOptions;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Ltv/emby/embyatv/api/VideoOptions;->AllowVideoStreamCopy:Z

    return-void
.end method


# virtual methods
.method public final getAllowVideoStreamCopy()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Ltv/emby/embyatv/api/VideoOptions;->AllowVideoStreamCopy:Z

    return v0
.end method

.method public final getAudioStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 11
    iget-object v0, p0, Ltv/emby/embyatv/api/VideoOptions;->AudioStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCurrentPlaySessionId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Ltv/emby/embyatv/api/VideoOptions;->CurrentPlaySessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Ltv/emby/embyatv/api/VideoOptions;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAllowVideoStreamCopy(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Ltv/emby/embyatv/api/VideoOptions;->AllowVideoStreamCopy:Z

    return-void
.end method

.method public final setAudioStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 15
    iput-object p1, p0, Ltv/emby/embyatv/api/VideoOptions;->AudioStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setCurrentPlaySessionId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Ltv/emby/embyatv/api/VideoOptions;->CurrentPlaySessionId:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitleStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Ltv/emby/embyatv/api/VideoOptions;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-void
.end method
