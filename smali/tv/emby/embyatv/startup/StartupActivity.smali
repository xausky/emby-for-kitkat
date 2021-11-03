.class public Ltv/emby/embyatv/startup/StartupActivity;
.super Landroid/app/Activity;
.source "StartupActivity.java"


# static fields
.field private static final NETWORK_PERMISSION:I = 0x1


# instance fields
.field private application:Ltv/emby/embyatv/TvApp;

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/startup/StartupActivity;)Ltv/emby/embyatv/TvApp;
    .locals 0

    .line 41
    iget-object p0, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/startup/StartupActivity;Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/startup/StartupActivity;->connectAutomatically(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V

    return-void
.end method

.method private connectAutomatically(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V
    .locals 1

    .line 301
    new-instance v0, Ltv/emby/embyatv/startup/StartupActivity$2;

    invoke-direct {v0, p0, p1, p2}, Ltv/emby/embyatv/startup/StartupActivity$2;-><init>(Ltv/emby/embyatv/startup/StartupActivity;Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V

    invoke-interface {p1, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->Connect(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private establishConnection(Landroid/app/Activity;)V
    .locals 5

    .line 189
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->setupConnection()V

    .line 190
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object v0

    .line 193
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p0}, Ltv/emby/embyatv/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ItemId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->setDirectItemId(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDirectItemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p0}, Ltv/emby/embyatv/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->getItemIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->setDirectItemId(Ljava/lang/String;)V

    .line 196
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDirectItemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 197
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p0}, Ltv/emby/embyatv/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->getEntryIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->setDirectEntryId(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    const/4 v2, 0x0

    iput-boolean v2, v1, Ltv/emby/embyatv/TvApp;->DirectPlay:Z

    goto :goto_0

    .line 200
    :cond_1
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p0}, Ltv/emby/embyatv/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->shouldDirectPlay(Landroid/net/Uri;)Z

    move-result v2

    iput-boolean v2, v1, Ltv/emby/embyatv/TvApp;->DirectPlay:Z

    .line 204
    :goto_0
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    const-string v2, "wolinfo.json"

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->GetSavedWolInfos(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->setWakeOnLanInfos(Ljava/util/HashMap;)V

    .line 207
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    iget-object v2, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_login_behavior"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "tv.emby.lastlogin.json"

    goto :goto_1

    :cond_3
    iget-object v2, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getDirectItemId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "tv.mediabrowser.login.json"

    :goto_1
    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->GetSavedLoginCredentials(Ljava/lang/String;)Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->setConfiguredAutoCredentials(Ltv/emby/embyatv/startup/LogonCredentials;)V

    .line 210
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getIsAutoLoginConfigured()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDirectItemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 296
    :cond_4
    invoke-direct {p0, v0, p1}, Ltv/emby/embyatv/startup/StartupActivity;->connectAutomatically(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V

    goto :goto_3

    .line 212
    :cond_5
    :goto_2
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/startup/LogonCredentials;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/startup/StartupActivity$1;

    invoke-direct {v2, p0, p1, v0}, Ltv/emby/embyatv/startup/StartupActivity$1;-><init>(Ltv/emby/embyatv/startup/StartupActivity;Landroid/app/Activity;Lmediabrowser/apiinteraction/IConnectionManager;)V

    invoke-interface {v0, v1, v2}, Lmediabrowser/apiinteraction/IConnectionManager;->Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/Response;)V

    :goto_3
    return-void
.end method

.method private start()V
    .locals 5

    .line 133
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "**** Build Flavor: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "google"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "amazon"

    const-string v1, "google"

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f100413

    .line 138
    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 139
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/StartupActivity;->finishAffinity()V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/emby/embyatv/browsing/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/startup/StartupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->clearAudioQueue()V

    .line 152
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->clearVideoQueue()V

    .line 153
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0, v4}, Ltv/emby/embyatv/TvApp;->setShuttingDown(Z)V

    .line 156
    invoke-direct {p0, p0}, Ltv/emby/embyatv/startup/StartupActivity;->establishConnection(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004b

    .line 52
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/StartupActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/StartupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/TvApp;

    iput-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    .line 55
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->logger:Lmediabrowser/model/logging/ILogger;

    const p1, 0x7f0a02b9

    .line 58
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 59
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f0a01c6

    .line 60
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 61
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getStartupLogoResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConfigVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sys_pref_config_version"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConfigVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 68
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_max_bitrate"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sys_pref_config_version"

    const-string v1, "3"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConfigVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    .line 72
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_enable_premieres"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_enable_info_panel"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sys_pref_config_version"

    const-string v2, "4"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConfigVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    .line 77
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_refresh_switching"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sys_pref_config_version"

    const-string v2, "5"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConfigVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x7

    if-ge p1, v0, :cond_4

    .line 81
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_live_mpv"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_rec_mpv"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sys_pref_config_version"

    const-string v2, "7"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConfigVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x8

    const/4 v2, 0x1

    if-ge p1, v0, :cond_5

    .line 86
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_show_focusrect"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sys_pref_config_version"

    const-string v3, "8"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConfigVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x9

    if-ge p1, v0, :cond_6

    .line 90
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_show_backdrop"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sys_pref_config_version"

    const-string v3, "9"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    const/high16 p1, 0x7f140000

    .line 101
    invoke-static {p0, p1, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 104
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_8

    const-string p1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "android.permission.INTERNET"

    .line 105
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    .line 106
    :cond_7
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v0, "Requesting network permissions"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v0, "android.permission.INTERNET"

    .line 107
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 109
    :cond_8
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v0, "Basic network permissions are granted"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Ltv/emby/embyatv/startup/StartupActivity;->start()V

    .line 114
    :goto_0
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p0}, Ltv/emby/embyatv/startup/StartupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 115
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltv/emby/embyatv/util/RemoteControlReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x8000000

    .line 116
    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 117
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v3, 0x277

    .line 118
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v5

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 121
    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 122
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 123
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 166
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 170
    invoke-direct {p0}, Ltv/emby/embyatv/startup/StartupActivity;->start()V

    goto :goto_0

    :cond_1
    const-string p1, "Application cannot continue without network"

    .line 175
    invoke-static {p0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Ltv/emby/embyatv/startup/StartupActivity;->finish()V

    :goto_0
    return-void
.end method
