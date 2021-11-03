.class synthetic Ltv/emby/embyatv/playback/ExternalPlayerActivity$11;
.super Ljava/lang/Object;
.source "ExternalPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/ExternalPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 252
    invoke-static {}, Lmediabrowser/model/dlna/PlaybackErrorCode;->values()[Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$11;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    :try_start_0
    sget-object v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$11;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    sget-object v1, Lmediabrowser/model/dlna/PlaybackErrorCode;->NotAllowed:Lmediabrowser/model/dlna/PlaybackErrorCode;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/PlaybackErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$11;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    sget-object v1, Lmediabrowser/model/dlna/PlaybackErrorCode;->NoCompatibleStream:Lmediabrowser/model/dlna/PlaybackErrorCode;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/PlaybackErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$11;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    sget-object v1, Lmediabrowser/model/dlna/PlaybackErrorCode;->RateLimitExceeded:Lmediabrowser/model/dlna/PlaybackErrorCode;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/PlaybackErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
