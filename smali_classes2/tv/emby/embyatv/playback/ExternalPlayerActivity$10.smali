.class Ltv/emby/embyatv/playback/ExternalPlayerActivity$10;
.super Lmediabrowser/apiinteraction/Response;
.source "ExternalPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/ExternalPlayerActivity;->launchExternalPlayer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ltv/emby/embyatv/api/StreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/ExternalPlayerActivity;)V
    .locals 0

    .line 234
    iput-object p1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$10;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 249
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$10;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error getting playback stream info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 250
    instance-of v0, p1, Ltv/emby/embyatv/api/PlaybackException;

    if-eqz v0, :cond_0

    .line 251
    check-cast p1, Ltv/emby/embyatv/api/PlaybackException;

    .line 252
    sget-object v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$11;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/api/PlaybackException;->getErrorCode()Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/PlaybackErrorCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10063f

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10063d

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10063e

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 234
    check-cast p1, Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity$10;->onResponse(Ltv/emby/embyatv/api/StreamInfo;)V

    return-void
.end method

.method public onResponse(Ltv/emby/embyatv/api/StreamInfo;)V
    .locals 3

    .line 237
    iget-object v0, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$10;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    iput-object p1, v0, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->mCurrentStreamInfo:Ltv/emby/embyatv/api/StreamInfo;

    .line 242
    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v1, p0, Ltv/emby/embyatv/playback/ExternalPlayerActivity$10;->this$0:Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "*"

    :goto_0
    invoke-virtual {v1, v0, p1}, Ltv/emby/embyatv/playback/ExternalPlayerActivity;->startExternalActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
