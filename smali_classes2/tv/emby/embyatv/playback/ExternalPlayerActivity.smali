.class public Ltv/emby/embyatv/playback/ExternalPlayerActivity;
.super Landroid/app/Activity;
.source "ExternalPlayerActivity.java"


# instance fields
.field isLiveTv:Z

.field mApplication:Ltv/emby/embyatv/TvApp;

.field mCurrentNdx:I

.field mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

.field mHandler:Landroid/os/Handler;

.field mItemsToPlay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field mLastPlayerStart:J

.field mPosition:Ljava/lang/Long;

.field mReportLoop:Ljava/lang/Runnable;

.field noPlayerError:Z

.field private progressReportInProgress:Z

.field private progressResult:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mLastPlayerStart:J

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mPosition:Ljava/lang/Long;

    .line 146
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->progressReportInProgress:Z

    .line 147
    new-instance v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$6;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$6;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->progressReportInProgress:Z

    return p0
.end method

.method static synthetic access$002(Ltv/emby/embyatv/playback/ExternalPlayerActivity;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->progressReportInProgress:Z

    return p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)Lmediabrowser/apiinteraction/EmptyResponse;
    .locals 0

    .line 28
    iget-object p0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

    return-object p0
.end method

.method private handlePlayerError()V
    .locals 3

    .line 118
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isVideoQueueModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->clearVideoQueue()V

    .line 120
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "No Player"

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "It doesn\'t appear you have a video capable app installed.  This option requires you install a 3rd party application for playing video content."

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1003b8

    new-instance v2, Ltv/emby/embyatv/playback/ExternalPlayerActivity$5;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$5;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Turn this option off"

    new-instance v2, Ltv/emby/embyatv/playback/ExternalPlayerActivity$4;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$4;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/ExternalPlayerActivity$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$3;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startReportLoop()V
    .locals 10

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->progressReportInProgress:Z

    .line 156
    iget-object v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget v2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmediabrowser/model/dto/BaseItemDto;

    iget-object v3, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "TimeUpdate"

    iget-object v9, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->progressResult:Lmediabrowser/apiinteraction/EmptyResponse;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v9}, Ltv/emby/embyatv/util/Utils;->ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 157
    new-instance v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$7;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mReportLoop:Ljava/lang/Runnable;

    .line 169
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mReportLoop:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopReportLoop()V
    .locals 2

    .line 173
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mReportLoop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mReportLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected launchExternalPlayer(I)V
    .locals 7

    .line 210
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Attempt to play index beyond items: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-interface {v0, v2, v3}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 214
    :cond_0
    iput p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    .line 215
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    .line 216
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TvChannel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->isLiveTv:Z

    .line 218
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->isLiveTv:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_send_path_external"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    new-instance v0, Ltv/emby/embyatv/api/StreamInfo;

    invoke-direct {v0}, Ltv/emby/embyatv/api/StreamInfo;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    .line 221
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setPlayMethod(Lmediabrowser/model/session/PlayMethod;)V

    .line 222
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->preparePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getContainer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getContainer()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "*"

    :goto_0
    invoke-virtual {p0, v0, p1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->startExternalActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_2
    new-instance v2, Ltv/emby/embyatv/api/VideoOptions;

    invoke-direct {v2}, Ltv/emby/embyatv/api/VideoOptions;-><init>()V

    .line 226
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/api/VideoOptions;->setDeviceId(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/api/VideoOptions;->setItemId(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/api/VideoOptions;->setItemType(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/api/VideoOptions;->setMediaSources(Ljava/util/ArrayList;)V

    .line 230
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->getMaxBitrate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/api/VideoOptions;->setMaxBitrate(Ljava/lang/Integer;)V

    .line 231
    invoke-static {}, Ltv/emby/embyatv/util/ProfileHelper;->getExternalProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/api/VideoOptions;->setProfile(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 234
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object v1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/playback/ExternalPlayerActivity$10;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$10;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    invoke-virtual/range {v1 .. v6}, Ltv/emby/embyatv/api/PlaybackManager;->getVideoStreamInfo(Ltv/emby/embyatv/api/VideoOptions;Ljava/lang/Long;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V

    :goto_1
    return-void
.end method

.method protected markPlayed(Ljava/lang/String;)V
    .locals 4

    .line 179
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmediabrowser/apiinteraction/Response;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/Response;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3, v2}, Lmediabrowser/apiinteraction/ApiClient;->MarkPlayedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returned from player... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    const-string p1, "position"

    .line 66
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    .line 67
    iget-object p2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Player returned position: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p2, p3, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    int-to-long p2, p1

    const-wide/16 v3, 0x2710

    mul-long p2, p2, v3

    .line 68
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 70
    invoke-direct {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->stopReportLoop()V

    .line 71
    iget-object p3, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget v5, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmediabrowser/model/dto/BaseItemDto;

    iget-object v5, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    const-string v6, "100"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {p3, v5, v6, v7, v8}, Ltv/emby/embyatv/util/Utils;->ReportStopped(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;J)V

    .line 74
    iget-wide p2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mLastPlayerStart:J

    sub-long p2, v0, p2

    const-wide/16 v5, 0x3e8

    cmp-long p2, p2, v5

    if-gez p2, :cond_3

    .line 76
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Playback took less than a second - assuming it failed"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->noPlayerError:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->handlePlayerError()V

    :cond_2
    return-void

    .line 81
    :cond_3
    iget-object p2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget p3, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget p3, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    div-long/2addr p2, v3

    goto :goto_1

    :cond_4
    const-wide/16 p2, 0x0

    :goto_1
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    if-nez p1, :cond_6

    .line 84
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->isLiveTv:Z

    if-nez p1, :cond_5

    iget-wide v5, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mLastPlayerStart:J

    sub-long/2addr v0, v5

    long-to-double v0, v0

    long-to-double p1, p2

    mul-double p1, p1, v3

    cmpg-double p1, v0, p1

    if-gez p1, :cond_5

    .line 85
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "Mark Watched"

    .line 86
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "The item didn\'t appear to play as long as its duration. Mark watched?"

    .line 87
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f100617

    new-instance p3, Ltv/emby/embyatv/playback/ExternalPlayerActivity$2;

    invoke-direct {p3, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$2;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    .line 88
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f100526

    new-instance p3, Ltv/emby/embyatv/playback/ExternalPlayerActivity$1;

    invoke-direct {p3, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$1;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    .line 95
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 103
    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget p2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->markPlayed(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->playNext()V

    goto :goto_2

    .line 108
    :cond_6
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->isLiveTv:Z

    if-nez v0, :cond_7

    int-to-double v0, p1

    long-to-double p1, p2

    mul-double p1, p1, v3

    cmpl-double p1, v0, p1

    if-lez p1, :cond_7

    .line 109
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->playNext()V

    goto :goto_2

    .line 111
    :cond_7
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->finish()V

    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueue()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    .line 49
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mPosition:Ljava/lang/Long;

    .line 57
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->launchExternalPlayer(I)V

    return-void

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    const v1, 0x7f100639

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->finish()V

    return-void
.end method

.method protected playNext()V
    .locals 4

    .line 183
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next up is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget v3, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    .line 187
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100677

    new-instance v2, Ltv/emby/embyatv/playback/ExternalPlayerActivity$9;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$9;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1003b1

    new-instance v2, Ltv/emby/embyatv/playback/ExternalPlayerActivity$8;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$8;-><init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected preparePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 273
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    const-string v0, "://"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\\\"

    const-string v1, ""

    .line 275
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smb://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "\\\\"

    const-string v1, "/"

    .line 280
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected startExternalActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget v2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/BaseItemDto;

    .line 290
    iget-object v2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mPosition:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "position"

    iget-object v3, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mPosition:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const-string v2, "return_result"

    const/4 v3, 0x1

    .line 291
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v2, "title"

    .line 293
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    :cond_1
    iget-object v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "Starting external playback of path: %s and mime: video/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v3

    invoke-interface {v1, v2, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mLastPlayerStart:J

    .line 301
    iget-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mItemsToPlay:Ljava/util/List;

    iget p2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentNdx:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lmediabrowser/model/dto/BaseItemDto;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-string v10, "100"

    sget-object v11, Lmediabrowser/model/session/PlayMethod;->DirectStream:Lmediabrowser/model/session/PlayMethod;

    invoke-static/range {v6 .. v11}, Ltv/emby/embyatv/util/Utils;->ReportStart(Lmediabrowser/model/dto/BaseItemDto;JLmediabrowser/model/dto/MediaSourceInfo;Ljava/lang/String;Lmediabrowser/model/session/PlayMethod;)V

    .line 302
    invoke-direct {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->startReportLoop()V

    .line 303
    invoke-virtual {p0, v0, v3}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    iput-boolean v3, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->noPlayerError:Z

    .line 307
    iget-object p2, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    const-string v0, "Error launching external player"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 308
    invoke-direct {p0}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->handlePlayerError()V

    :goto_0
    return-void
.end method
