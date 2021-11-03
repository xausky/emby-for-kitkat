.class public Ltv/emby/embyatv/playback/SubtitleHelper;
.super Ljava/lang/Object;
.source "SubtitleHelper.java"


# instance fields
.field private activity:Ltv/emby/embyatv/base/BaseActivity;

.field private apiClient:Lmediabrowser/apiinteraction/ApiClient;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ltv/emby/embyatv/playback/SubtitleHelper;->activity:Ltv/emby/embyatv/base/BaseActivity;

    .line 31
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/SubtitleHelper;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    return-void
.end method

.method private downloadSubtitles(Lmediabrowser/model/entities/MediaStream;Ljava/io/File;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/entities/MediaStream;",
            "Ljava/io/File;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsExternalUrl()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsExternalUrl()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/SubtitleHelper;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getDeliveryUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getDeliveryUrl()Ljava/lang/String;

    move-result-object p1

    .line 51
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtitle url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Ltv/emby/embyatv/playback/SubtitleHelper;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    new-instance v1, Ltv/emby/embyatv/playback/SubtitleHelper$1;

    invoke-direct {v1, p0, p3, p2, p3}, Ltv/emby/embyatv/playback/SubtitleHelper$1;-><init>(Ltv/emby/embyatv/playback/SubtitleHelper;Lmediabrowser/apiinteraction/IResponse;Ljava/io/File;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->getResponseStream(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private getSubtitleDownloadPath(Lmediabrowser/model/entities/MediaStream;)Ljava/lang/String;
    .locals 4

    .line 94
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getDeliveryUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mounted"

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "mounted_ro"

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 118
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emby"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/io/File;

    const-string v2, "subtitles"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/playback/SubtitleHelper;->activity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public downloadExternalSubtitleTrack(Lmediabrowser/model/entities/MediaStream;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/entities/MediaStream;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/SubtitleHelper;->getSubtitleDownloadPath(Lmediabrowser/model/entities/MediaStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "Re-using downloaded subtitle file"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p2, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 44
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Ltv/emby/embyatv/playback/SubtitleHelper;->downloadSubtitles(Lmediabrowser/model/entities/MediaStream;Ljava/io/File;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
