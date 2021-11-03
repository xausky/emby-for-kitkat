.class public Ltv/emby/embyatv/api/PlaybackException;
.super Ljava/lang/RuntimeException;
.source "PlaybackException.java"


# instance fields
.field private ErrorCode:Lmediabrowser/model/dlna/PlaybackErrorCode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 11
    invoke-static {}, Lmediabrowser/model/dlna/PlaybackErrorCode;->values()[Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Ltv/emby/embyatv/api/PlaybackException;->ErrorCode:Lmediabrowser/model/dlna/PlaybackErrorCode;

    return-void
.end method


# virtual methods
.method public final getErrorCode()Lmediabrowser/model/dlna/PlaybackErrorCode;
    .locals 1

    .line 14
    iget-object v0, p0, Ltv/emby/embyatv/api/PlaybackException;->ErrorCode:Lmediabrowser/model/dlna/PlaybackErrorCode;

    return-object v0
.end method

.method public final setErrorCode(Lmediabrowser/model/dlna/PlaybackErrorCode;)V
    .locals 0

    .line 18
    iput-object p1, p0, Ltv/emby/embyatv/api/PlaybackException;->ErrorCode:Lmediabrowser/model/dlna/PlaybackErrorCode;

    return-void
.end method
