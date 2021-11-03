.class public Ltv/emby/embyatv/TvApp;
.super Landroid/app/Application;
.source "TvApp.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field public static FEATURE_CODE:Ljava/lang/String; = "androidtv"

.field public static final LIVE_TV_GUIDE_OPTION_ID:I = 0x3e8

.field public static final LIVE_TV_ONNOW_OPTION_ID:I = 0x1770

.field public static final LIVE_TV_RECORDINGS_OPTION_ID:I = 0x7d0

.field public static final LIVE_TV_SCHEDULE_OPTION_ID:I = 0xfa0

.field public static final LIVE_TV_SERIES_OPTION_ID:I = 0x1388

.field private static final SEARCH_PERMISSION:I = 0x0

.field public static final VIDEO_QUEUE_OPTION_ID:I = 0xbb8

.field private static app:Ltv/emby/embyatv/TvApp;


# instance fields
.field public DirectPlay:Z

.field private apiEventListener:Ltv/emby/embyatv/eventhandling/TvApiEventListener;

.field private appValidator:Ltv/emby/embyatv/validation/AppValidator;

.field private audioManager:Landroid/media/AudioManager;

.field private audioMuted:Z

.field private autoBitrate:I

.field private configuredAutoCredentials:Ltv/emby/embyatv/startup/LogonCredentials;

.field private connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

.field private currentActivity:Ltv/emby/embyatv/base/BaseActivity;

.field private currentPlayingItem:Lmediabrowser/model/dto/BaseItemDto;

.field private currentSystemInfo:Lmediabrowser/model/system/SystemInfo;

.field private currentUser:Lmediabrowser/model/dto/UserDto;

.field private currentUserPw:Ljava/lang/String;

.field private defaultFont:Landroid/graphics/Typeface;

.field private defaultFontBold:Landroid/graphics/Typeface;

.field private defaultFontLight:Landroid/graphics/Typeface;

.field private directEntryId:Ljava/lang/String;

.field private directItemId:Ljava/lang/String;

.field private displayDensity:F

.field private displayPrefsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmediabrowser/model/entities/DisplayPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private displayPriority:Ltv/emby/embyatv/model/DisplayPriorityType;

.field private httpClient:Lmediabrowser/apiinteraction/android/VolleyHttpClient;

.field private inNetwork:Z

.field private isLaunchingActivity:Z

.field private isPaid:Z

.field private lastDeletedItemId:Ljava/lang/String;

.field private lastFavoriteUpdate:J

.field private lastLibraryChange:Ljava/util/Calendar;

.field private lastMoviePlayback:Ljava/util/Calendar;

.field private lastMusicPlayback:J

.field private lastPlayback:Ljava/util/Calendar;

.field private lastPlayedItem:Lmediabrowser/model/dto/BaseItemDto;

.field private lastPlaylistAddId:Ljava/lang/String;

.field private lastTvPlayback:Ljava/util/Calendar;

.field private lastUserInteraction:J

.field private lastVideoQueueChange:J

.field private liveTvAuthorized:Z

.field private liveTvLibrary:Lmediabrowser/model/dto/BaseItemDto;

.field private localConnection:Z

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private loginApiClient:Lmediabrowser/apiinteraction/ApiClient;

.field private maxRemoteBitrate:I

.field private mediaManager:Ltv/emby/embyatv/playback/MediaManager;

.field private otherUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/UserDto;",
            ">;"
        }
    .end annotation
.end field

.field private playbackController:Ltv/emby/embyatv/playback/PlaybackController;

.field private playbackManager:Ltv/emby/embyatv/api/PlaybackManager;

.field private playingIntros:Z

.field private registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

.field private reloadRequired:Z

.field private searchAllowed:Z

.field private serializedLiveTvLibrary:Ljava/lang/String;

.field private serializer:Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

.field private serverConfiguration:Lmediabrowser/model/configuration/ServerConfiguration;

.field private showPlayerStats:Z

.field private shuttingDown:Z

.field private userDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

.field private userViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private wakeOnLanInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmediabrowser/model/apiclient/WakeOnLanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const v0, 0x1406f40

    .line 102
    iput v0, p0, Ltv/emby/embyatv/TvApp;->autoBitrate:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 108
    iput v0, p0, Ltv/emby/embyatv/TvApp;->displayDensity:F

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    const-string v0, ""

    .line 112
    iput-object v0, p0, Ltv/emby/embyatv/TvApp;->lastDeletedItemId:Ljava/lang/String;

    const-string v0, ""

    .line 113
    iput-object v0, p0, Ltv/emby/embyatv/TvApp;->lastPlaylistAddId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    const/4 v1, -0x1

    .line 119
    iput v1, p0, Ltv/emby/embyatv/TvApp;->maxRemoteBitrate:I

    .line 120
    iput-boolean v0, p0, Ltv/emby/embyatv/TvApp;->reloadRequired:Z

    .line 121
    iput-boolean v0, p0, Ltv/emby/embyatv/TvApp;->shuttingDown:Z

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->lastPlayback:Ljava/util/Calendar;

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->lastMoviePlayback:Ljava/util/Calendar;

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->lastTvPlayback:Ljava/util/Calendar;

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->lastLibraryChange:Ljava/util/Calendar;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ltv/emby/embyatv/TvApp;->lastVideoQueueChange:J

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ltv/emby/embyatv/TvApp;->lastFavoriteUpdate:J

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ltv/emby/embyatv/TvApp;->lastMusicPlayback:J

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ltv/emby/embyatv/TvApp;->lastUserInteraction:J

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Ltv/emby/embyatv/TvApp;->searchAllowed:Z

    .line 141
    new-instance v1, Ltv/emby/embyatv/validation/AppValidator;

    invoke-direct {v1}, Ltv/emby/embyatv/validation/AppValidator;-><init>()V

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->appValidator:Ltv/emby/embyatv/validation/AppValidator;

    .line 147
    sget-object v1, Ltv/emby/embyatv/model/DisplayPriorityType;->Movies:Ltv/emby/embyatv/model/DisplayPriorityType;

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->displayPriority:Ltv/emby/embyatv/model/DisplayPriorityType;

    const-string v1, ""

    .line 354
    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->currentUserPw:Ljava/lang/String;

    .line 955
    iput-boolean v0, p0, Ltv/emby/embyatv/TvApp;->DirectPlay:Z

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/system/SystemInfo;
    .locals 0

    .line 76
    iget-object p0, p0, Ltv/emby/embyatv/TvApp;->currentSystemInfo:Lmediabrowser/model/system/SystemInfo;

    return-object p0
.end method

.method static synthetic access$002(Ltv/emby/embyatv/TvApp;Lmediabrowser/model/system/SystemInfo;)Lmediabrowser/model/system/SystemInfo;
    .locals 0

    .line 76
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->currentSystemInfo:Lmediabrowser/model/system/SystemInfo;

    return-object p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/logging/ILogger;
    .locals 0

    .line 76
    iget-object p0, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/TvApp;)Ltv/emby/embyatv/base/BaseActivity;
    .locals 0

    .line 76
    iget-object p0, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/TvApp;J)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/TvApp;->setLastNagTime(J)V

    return-void
.end method

.method static synthetic access$400(Ltv/emby/embyatv/TvApp;)Ljava/util/HashMap;
    .locals 0

    .line 76
    iget-object p0, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$502(Ltv/emby/embyatv/TvApp;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->localConnection:Z

    return p1
.end method

.method static synthetic access$600(Ltv/emby/embyatv/TvApp;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Ltv/emby/embyatv/TvApp;->inNetwork:Z

    return p0
.end method

.method static synthetic access$602(Ltv/emby/embyatv/TvApp;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->inNetwork:Z

    return p1
.end method

.method static synthetic access$700(Ltv/emby/embyatv/TvApp;)I
    .locals 0

    .line 76
    iget p0, p0, Ltv/emby/embyatv/TvApp;->autoBitrate:I

    return p0
.end method

.method static synthetic access$702(Ltv/emby/embyatv/TvApp;I)I
    .locals 0

    .line 76
    iput p1, p0, Ltv/emby/embyatv/TvApp;->autoBitrate:I

    return p1
.end method

.method public static getApplication()Ltv/emby/embyatv/TvApp;
    .locals 1

    .line 199
    sget-object v0, Ltv/emby/embyatv/TvApp;->app:Ltv/emby/embyatv/TvApp;

    return-object v0
.end method

.method private getLastNagTime()J
    .locals 4

    .line 519
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastNagTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private setLastNagTime(J)V
    .locals 2

    .line 521
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "lastNagTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showSearchInternal(Landroid/app/Activity;)V
    .locals 2

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/emby/embyatv/search/SearchActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public autoEnableCC()Z
    .locals 3

    .line 1048
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_enable_cc_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public canAccessLiveTv()Z
    .locals 1

    .line 758
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getPolicy()Lmediabrowser/model/users/UserPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/users/UserPolicy;->getEnableLiveTvAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->liveTvAuthorized:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canManageRecordings()Z
    .locals 1

    .line 754
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->canAccessLiveTv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentUser:Lmediabrowser/model/dto/UserDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentUser:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getPolicy()Lmediabrowser/model/users/UserPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/users/UserPolicy;->getEnableLiveTvManagement()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkPaidCache()Z
    .locals 4

    .line 675
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kv"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    .line 676
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paid cache check (legacy): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    if-nez v0, :cond_0

    .line 678
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kv2"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    .line 679
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Paid cache check: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    iput-boolean v2, p0, Ltv/emby/embyatv/TvApp;->liveTvAuthorized:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 682
    iput-boolean v0, p0, Ltv/emby/embyatv/TvApp;->liveTvAuthorized:Z

    .line 685
    :goto_0
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    return v0
.end method

.method public determineAutoBitrate()V
    .locals 2

    .line 920
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 922
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/TvApp$8;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/TvApp$8;-><init>(Ltv/emby/embyatv/TvApp;)V

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetEndPointInfo(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public directStreamLiveTv()Z
    .locals 3

    .line 625
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_live_direct"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getApiClient()Lmediabrowser/apiinteraction/ApiClient;
    .locals 2

    .line 241
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentUser:Lmediabrowser/model/dto/UserDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iget-object v1, p0, Ltv/emby/embyatv/TvApp;->currentUser:Lmediabrowser/model/dto/UserDto;

    invoke-interface {v0, v1}, Lmediabrowser/apiinteraction/IConnectionManager;->GetApiClient(Lmediabrowser/model/dto/IHasServerId;)Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getApiEventListener()Ltv/emby/embyatv/eventhandling/TvApiEventListener;
    .locals 1

    .line 1103
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->apiEventListener:Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    return-object v0
.end method

.method public getAppValidator()Ltv/emby/embyatv/validation/AppValidator;
    .locals 1

    .line 1028
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->appValidator:Ltv/emby/embyatv/validation/AppValidator;

    return-object v0
.end method

.method public getAutoBitrate()I
    .locals 1

    .line 916
    iget v0, p0, Ltv/emby/embyatv/TvApp;->autoBitrate:I

    return v0
.end method

.method public getCachedDisplayPrefs(Ljava/lang/String;)Lmediabrowser/model/entities/DisplayPreferences;
    .locals 1

    .line 861
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/entities/DisplayPreferences;

    goto :goto_0

    :cond_0
    new-instance p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-direct {p1}, Lmediabrowser/model/entities/DisplayPreferences;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getConfigVersion()Ljava/lang/String;
    .locals 3

    .line 555
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sys_pref_config_version"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;
    .locals 1

    .line 539
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->configuredAutoCredentials:Ltv/emby/embyatv/startup/LogonCredentials;

    return-object v0
.end method

.method public getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;
    .locals 1

    .line 215
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    return-object v0
.end method

.method public getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;
    .locals 1

    .line 249
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-object v0
.end method

.method public getCurrentPlayingItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 245
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentPlayingItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;
    .locals 1

    .line 358
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentSystemInfo:Lmediabrowser/model/system/SystemInfo;

    return-object v0
.end method

.method public getCurrentUser()Lmediabrowser/model/dto/UserDto;
    .locals 1

    .line 223
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentUser:Lmediabrowser/model/dto/UserDto;

    return-object v0
.end method

.method public getCurrentUserPw()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentUserPw:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFont()Landroid/graphics/Typeface;
    .locals 1

    .line 210
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->defaultFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getDefaultFontBold()Landroid/graphics/Typeface;
    .locals 1

    .line 211
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->defaultFontBold:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getDefaultFontLight()Landroid/graphics/Typeface;
    .locals 1

    .line 212
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->defaultFontLight:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getDeviceValidationCacheDays()I
    .locals 3

    .line 709
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    .line 710
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PremDevCacheLength"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDirectEntryId()Ljava/lang/String;
    .locals 1

    .line 1091
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->directEntryId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectItemId()Ljava/lang/String;
    .locals 1

    .line 952
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->directItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayDensity()F
    .locals 1

    .line 1099
    iget v0, p0, Ltv/emby/embyatv/TvApp;->displayDensity:F

    return v0
.end method

.method public getDisplayPrefsAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/entities/DisplayPreferences;",
            ">;)V"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object p2, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display prefs loaded from cache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    iget-object p2, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 888
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/TvApp$7;

    invoke-direct {v2, p0, p1, p3}, Ltv/emby/embyatv/TvApp$7;-><init>(Ltv/emby/embyatv/TvApp;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetDisplayPreferencesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method

.method public getDisplayPrefsAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/entities/DisplayPreferences;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ATV"

    .line 875
    invoke-virtual {p0, p1, v0, p2}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public getDrawableCompat(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 774
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getEmbyDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;
    .locals 2

    .line 880
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    const-string v1, "usersettings"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    const-string v1, "usersettings"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/entities/DisplayPreferences;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHttpClient()Lmediabrowser/apiinteraction/android/VolleyHttpClient;
    .locals 1

    .line 970
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->httpClient:Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    return-object v0
.end method

.method public getIsAutoLoginConfigured()Z
    .locals 3

    .line 559
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_login_behavior"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_login_behavior"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/startup/LogonCredentials;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLastAppValidation()J
    .locals 4

    .line 719
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    .line 720
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AppValid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastDeletedItemId()Ljava/lang/String;
    .locals 1

    .line 962
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastDeletedItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDeviceValidation(Z)J
    .locals 4

    .line 699
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    .line 700
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PremDevView"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PremDev"

    goto :goto_1

    :goto_2
    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastFavoriteUpdate()J
    .locals 2

    .line 620
    iget-wide v0, p0, Ltv/emby/embyatv/TvApp;->lastFavoriteUpdate:J

    return-wide v0
.end method

.method public getLastLibraryChange()Ljava/util/Calendar;
    .locals 1

    .line 649
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastLibraryChange:Ljava/util/Calendar;

    return-object v0
.end method

.method public getLastMoviePlayback()Ljava/util/Calendar;
    .locals 2

    .line 611
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastMoviePlayback:Ljava/util/Calendar;

    iget-object v1, p0, Ltv/emby/embyatv/TvApp;->lastPlayback:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastMoviePlayback:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastPlayback:Ljava/util/Calendar;

    :goto_0
    return-object v0
.end method

.method public getLastMusicPlayback()J
    .locals 2

    .line 623
    iget-wide v0, p0, Ltv/emby/embyatv/TvApp;->lastMusicPlayback:J

    return-wide v0
.end method

.method public getLastPlayback()Ljava/util/Calendar;
    .locals 1

    .line 657
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastPlayback:Ljava/util/Calendar;

    return-object v0
.end method

.method public getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 986
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastPlayedItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public getLastPlaylistAddId()Ljava/lang/String;
    .locals 1

    .line 1130
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastPlaylistAddId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTvPlayback()Ljava/util/Calendar;
    .locals 2

    .line 640
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastTvPlayback:Ljava/util/Calendar;

    iget-object v1, p0, Ltv/emby/embyatv/TvApp;->lastPlayback:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastTvPlayback:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->lastPlayback:Ljava/util/Calendar;

    :goto_0
    return-object v0
.end method

.method public getLastUserInteraction()J
    .locals 2

    .line 665
    iget-wide v0, p0, Ltv/emby/embyatv/TvApp;->lastUserInteraction:J

    return-wide v0
.end method

.method public getLastVideoQueueChange()J
    .locals 2

    .line 994
    iget-wide v0, p0, Ltv/emby/embyatv/TvApp;->lastVideoQueueChange:J

    return-wide v0
.end method

.method public getLogger()Lmediabrowser/model/logging/ILogger;
    .locals 1

    .line 203
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    return-object v0
.end method

.method public getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;
    .locals 1

    .line 322
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->loginApiClient:Lmediabrowser/apiinteraction/ApiClient;

    return-object v0
.end method

.method public getMediaManager()Ltv/emby/embyatv/playback/MediaManager;
    .locals 1

    .line 790
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    return-object v0
.end method

.method public getOtherUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/UserDto;",
            ">;"
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->otherUsers:Ljava/util/List;

    return-object v0
.end method

.method public getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 607
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/TvApp;->useExternalPlayer(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Ltv/emby/embyatv/playback/ExternalPlayerActivity;

    goto :goto_0

    :cond_0
    const-class p1, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    :goto_0
    return-object p1
.end method

.method public getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;
    .locals 1

    .line 347
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    return-object v0
.end method

.method public getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;
    .locals 1

    .line 762
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackManager:Ltv/emby/embyatv/api/PlaybackManager;

    return-object v0
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 547
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationInfo()Lmediabrowser/model/registration/RegistrationInfo;
    .locals 1

    .line 729
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    return-object v0
.end method

.method public getRegistrationString()Ljava/lang/String;
    .locals 5

    .line 749
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1005f9

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    invoke-virtual {v3}, Lmediabrowser/model/registration/RegistrationInfo;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 750
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f10057f

    :goto_0
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v0, "K\'ed by \u7ec8\u70b9\u7ad9"

    goto :goto_1

    :cond_1
    const v0, 0x7f1004ad

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public getResumePreroll()I
    .locals 3

    .line 633
    :try_start_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_resume_preroll"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSerializedLiveTvLibrary()Ljava/lang/String;
    .locals 1

    .line 1023
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->serializedLiveTvLibrary:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;
    .locals 1

    .line 233
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->serializer:Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    return-object v0
.end method

.method public getSystemPrefs()Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "systemprefs"

    const/4 v1, 0x0

    .line 551
    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/TvApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getUserDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;
    .locals 1

    .line 1040
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->userDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    return-object v0
.end method

.method public getUserViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->userViews:Ljava/util/List;

    return-object v0
.end method

.method public getWakeOnLanInfo(Ljava/lang/String;)Lmediabrowser/model/apiclient/WakeOnLanInfo;
    .locals 1

    .line 318
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->wakeOnLanInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/apiclient/WakeOnLanInfo;

    return-object p1
.end method

.method public hasLiveTv()Z
    .locals 1

    .line 1010
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->liveTvLibrary:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAudioMuted()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->audioMuted:Z

    return v0
.end method

.method public isConnectLogin()Z
    .locals 3

    .line 778
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sys_pref_connect_login"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInNetwork()Z
    .locals 1

    .line 1071
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->inNetwork:Z

    return v0
.end method

.method public isLaunchingActivity()Z
    .locals 1

    .line 1111
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->isLaunchingActivity:Z

    return v0
.end method

.method public isLocalConnection()Z
    .locals 1

    .line 1067
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->localConnection:Z

    return v0
.end method

.method public isPaid()Z
    .locals 1

    .line 689
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    return v0
.end method

.method public isPlayingIntros()Z
    .locals 1

    .line 1002
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->playingIntros:Z

    return v0
.end method

.method public isPlayingVideo()Z
    .locals 1

    .line 786
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    instance-of v0, v0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .line 741
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    invoke-virtual {v0}, Lmediabrowser/model/registration/RegistrationInfo;->getIsRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReloadRequired()Z
    .locals 1

    .line 1032
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->reloadRequired:Z

    return v0
.end method

.method public isSearchAllowed()Z
    .locals 1

    .line 978
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->searchAllowed:Z

    return v0
.end method

.method public isShuttingDown()Z
    .locals 4

    .line 1056
    sget-object v0, Ltv/emby/embyatv/TvApp;->app:Ltv/emby/embyatv/TvApp;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1059
    :goto_0
    iget-boolean v3, p0, Ltv/emby/embyatv/TvApp;->shuttingDown:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public isTrial()Z
    .locals 1

    .line 745
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    invoke-virtual {v0}, Lmediabrowser/model/registration/RegistrationInfo;->getIsTrial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 737
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    invoke-virtual {v0}, Lmediabrowser/model/registration/RegistrationInfo;->getIsRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    invoke-virtual {v0}, Lmediabrowser/model/registration/RegistrationInfo;->getIsTrial()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public loadSystemInfo()V
    .locals 2

    .line 361
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/TvApp$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/TvApp$2;-><init>(Ltv/emby/embyatv/TvApp;)V

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetSystemInfoAsync(Lmediabrowser/apiinteraction/Response;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 158
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 159
    new-instance v0, Lmediabrowser/logging/ConsoleLogger;

    invoke-direct {v0}, Lmediabrowser/logging/ConsoleLogger;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    .line 160
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/TvApp;

    sput-object v0, Ltv/emby/embyatv/TvApp;->app:Ltv/emby/embyatv/TvApp;

    .line 161
    new-instance v0, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;-><init>()V

    .line 162
    sget-object v1, Ltv/emby/embyatv/TvApp;->app:Ltv/emby/embyatv/TvApp;

    check-cast v0, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/TvApp;->setSerializer(Lmediabrowser/apiinteraction/android/GsonJsonSerializer;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "audio"

    .line 164
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 167
    iget-object v2, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v3, "Error getting audio manager"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v4}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 170
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/Roboto-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->defaultFont:Landroid/graphics/Typeface;

    .line 171
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/Roboto-Medium.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->defaultFontBold:Landroid/graphics/Typeface;

    .line 172
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/Roboto-Light.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->defaultFontLight:Landroid/graphics/Typeface;

    .line 173
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Ltv/emby/embyatv/TvApp;->displayDensity:F

    .line 174
    iget v1, p0, Ltv/emby/embyatv/TvApp;->displayDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iput v2, p0, Ltv/emby/embyatv/TvApp;->displayDensity:F

    .line 176
    :cond_0
    new-instance v1, Ltv/emby/embyatv/playback/MediaManager;

    invoke-direct {v1}, Ltv/emby/embyatv/playback/MediaManager;-><init>()V

    iput-object v1, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    .line 178
    iget-object v1, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v2, "Application object created"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-instance v0, Ltv/emby/embyatv/base/EnsureContextCallback;

    invoke-direct {v0}, Ltv/emby/embyatv/base/EnsureContextCallback;-><init>()V

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/TvApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 182
    new-instance v0, Ltv/emby/embyatv/TvApp$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/TvApp$1;-><init>(Ltv/emby/embyatv/TvApp;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

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

    if-eqz p1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 493
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->searchAllowed:Z

    .line 494
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Ltv/emby/embyatv/TvApp;->showSearchInternal(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string p1, "Search not allowed"

    .line 499
    invoke-static {p0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 194
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 195
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->destroy()V

    :cond_0
    return-void
.end method

.method public pausePlayback()V
    .locals 1

    .line 802
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->pauseAudio()V

    goto :goto_0

    .line 804
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->playPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public playbackJump()V
    .locals 2

    .line 849
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->skip(I)V

    :cond_0
    return-void
.end method

.method public playbackJumpBack()V
    .locals 2

    .line 855
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    const/16 v1, -0x2af8

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->skip(I)V

    :cond_0
    return-void
.end method

.method public playbackNext()V
    .locals 1

    .line 827
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->next()V

    goto :goto_0

    .line 829
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->nextAudioItem()I

    :cond_1
    :goto_0
    return-void
.end method

.method public playbackPrev()V
    .locals 1

    .line 835
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->prev()V

    goto :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->prevAudioItem()I

    :cond_1
    :goto_0
    return-void
.end method

.method public playbackSeek(I)V
    .locals 3

    .line 843
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/PlaybackController;->seek(J)V

    :cond_0
    return-void
.end method

.method public premiereNag()V
    .locals 4

    .line 524
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    invoke-direct {p0}, Ltv/emby/embyatv/TvApp;->getLastNagTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 525
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltv/emby/embyatv/TvApp$5;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/TvApp$5;-><init>(Ltv/emby/embyatv/TvApp;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setApiEventListener(Ltv/emby/embyatv/eventhandling/TvApiEventListener;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->apiEventListener:Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    return-void
.end method

.method public setAudioMuted(Z)V
    .locals 3

    .line 330
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 331
    iget-object p1, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v0, "No Audio manager.  Cannot set mute"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 333
    :cond_0
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->audioMuted:Z

    .line 334
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting mute state to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltv/emby/embyatv/TvApp;->audioMuted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is60()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 336
    iget-object p1, p0, Ltv/emby/embyatv/TvApp;->audioManager:Landroid/media/AudioManager;

    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->audioMuted:Z

    if-eqz v0, :cond_1

    const/16 v0, -0x64

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_1

    .line 339
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/TvApp;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    iget-boolean v1, p0, Ltv/emby/embyatv/TvApp;->audioMuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :goto_1
    return-void
.end method

.method public setConfiguredAutoCredentials(Ltv/emby/embyatv/startup/LogonCredentials;)V
    .locals 0

    .line 543
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->configuredAutoCredentials:Ltv/emby/embyatv/startup/LogonCredentials;

    return-void
.end method

.method public setConnectLogin(Z)V
    .locals 2

    .line 782
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sys_pref_connect_login"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setConnectionManager(Lmediabrowser/apiinteraction/IConnectionManager;)V
    .locals 0

    .line 219
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    return-void
.end method

.method public setCurrentActivity(Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 0

    .line 253
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-void
.end method

.method public setCurrentPlayingItem(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 257
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->currentPlayingItem:Lmediabrowser/model/dto/BaseItemDto;

    return-void
.end method

.method public setCurrentUser(Lmediabrowser/model/dto/UserDto;)V
    .locals 0

    .line 227
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->currentUser:Lmediabrowser/model/dto/UserDto;

    .line 228
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->clearCache()V

    .line 229
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    return-void
.end method

.method public setCurrentUserPw(Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->currentUserPw:Ljava/lang/String;

    return-void
.end method

.method public setDeviceValidationCacheDays(I)V
    .locals 3

    .line 714
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    .line 715
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PremDevCacheLength"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDirectEntryId(Ljava/lang/String;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->directEntryId:Ljava/lang/String;

    return-void
.end method

.method public setDirectItemId(Ljava/lang/String;)V
    .locals 0

    .line 958
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->directItemId:Ljava/lang/String;

    return-void
.end method

.method public setDirectStreamLiveTv(Z)V
    .locals 2

    .line 627
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_live_direct"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setHttpClient(Lmediabrowser/apiinteraction/android/VolleyHttpClient;)V
    .locals 0

    .line 974
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->httpClient:Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    return-void
.end method

.method public setLastAppValidation(J)V
    .locals 3

    .line 724
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    .line 725
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AppValid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastDeletedItemId(Ljava/lang/String;)V
    .locals 0

    .line 966
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->lastDeletedItemId:Ljava/lang/String;

    return-void
.end method

.method public setLastDeviceValidation(ZJ)V
    .locals 2

    .line 704
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    .line 705
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PremDevView"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PremDev"

    goto :goto_1

    :goto_2
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastFavoriteUpdate(J)V
    .locals 0

    .line 619
    iput-wide p1, p0, Ltv/emby/embyatv/TvApp;->lastFavoriteUpdate:J

    return-void
.end method

.method public setLastLibraryChange(Ljava/util/Calendar;)V
    .locals 0

    .line 653
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->lastLibraryChange:Ljava/util/Calendar;

    return-void
.end method

.method public setLastMoviePlayback(Ljava/util/Calendar;)V
    .locals 0

    .line 615
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->lastMoviePlayback:Ljava/util/Calendar;

    .line 616
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->lastPlayback:Ljava/util/Calendar;

    return-void
.end method

.method public setLastMusicPlayback(J)V
    .locals 0

    .line 622
    iput-wide p1, p0, Ltv/emby/embyatv/TvApp;->lastMusicPlayback:J

    return-void
.end method

.method public setLastPlayback(Ljava/util/Calendar;)V
    .locals 0

    .line 661
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->lastPlayback:Ljava/util/Calendar;

    return-void
.end method

.method public setLastPlayedItem(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 990
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->lastPlayedItem:Lmediabrowser/model/dto/BaseItemDto;

    return-void
.end method

.method public setLastPlaylistAddId(Ljava/lang/String;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->lastPlaylistAddId:Ljava/lang/String;

    return-void
.end method

.method public setLastTvPlayback(Ljava/util/Calendar;)V
    .locals 0

    .line 644
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->lastTvPlayback:Ljava/util/Calendar;

    .line 645
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->lastPlayback:Ljava/util/Calendar;

    return-void
.end method

.method public setLastUserInteraction(J)V
    .locals 1

    const/4 v0, 0x1

    .line 668
    invoke-virtual {p0, p1, p2, v0}, Ltv/emby/embyatv/TvApp;->setLastUserInteraction(JZ)V

    return-void
.end method

.method public setLastUserInteraction(JZ)V
    .locals 0

    .line 670
    iput-wide p1, p0, Ltv/emby/embyatv/TvApp;->lastUserInteraction:J

    if-eqz p3, :cond_0

    .line 671
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ApiClient;->ensureWebSocket()V

    :cond_0
    return-void
.end method

.method public setLastVideoQueueChange(J)V
    .locals 0

    .line 998
    iput-wide p1, p0, Ltv/emby/embyatv/TvApp;->lastVideoQueueChange:J

    return-void
.end method

.method public setLaunchingActivity(Z)V
    .locals 0

    .line 1115
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->isLaunchingActivity:Z

    return-void
.end method

.method public setLiveTvLibrary(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 1013
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->liveTvLibrary:Lmediabrowser/model/dto/BaseItemDto;

    .line 1014
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->liveTvLibrary:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->liveTvLibrary:Lmediabrowser/model/dto/BaseItemDto;

    iget-object v1, p0, Ltv/emby/embyatv/TvApp;->liveTvLibrary:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setDisplayPreferencesId(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->serializedLiveTvLibrary:Ljava/lang/String;

    .line 1018
    iget-object p1, p0, Ltv/emby/embyatv/TvApp;->liveTvLibrary:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getDisplayPreferencesId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmediabrowser/apiinteraction/Response;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :cond_0
    return-void
.end method

.method public setLogger(Lmediabrowser/model/logging/ILogger;)V
    .locals 0

    .line 207
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    return-void
.end method

.method public setLoginApiClient(Lmediabrowser/apiinteraction/ApiClient;)V
    .locals 0

    .line 326
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->loginApiClient:Lmediabrowser/apiinteraction/ApiClient;

    return-void
.end method

.method public setOtherUsers([Lmediabrowser/model/dto/UserDto;)V
    .locals 5

    .line 1123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/TvApp;->otherUsers:Ljava/util/List;

    .line 1124
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1125
    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/TvApp;->currentUser:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ltv/emby/embyatv/TvApp;->otherUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPaid(ZLjava/lang/String;)V
    .locals 1

    .line 693
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->isPaid:Z

    if-eqz p1, :cond_0

    const-string v0, "tv.emby.embyatv.unlock"

    .line 694
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Ltv/emby/embyatv/TvApp;->liveTvAuthorized:Z

    .line 695
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->liveTvAuthorized:Z

    if-eqz v0, :cond_1

    const-string v0, "kv"

    goto :goto_1

    :cond_1
    const-string v0, "kv2"

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPlaybackController(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 351
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    return-void
.end method

.method public setPlaybackManager(Ltv/emby/embyatv/api/PlaybackManager;)V
    .locals 0

    .line 766
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->playbackManager:Ltv/emby/embyatv/api/PlaybackManager;

    return-void
.end method

.method public setPlayingIntros(Z)V
    .locals 0

    .line 1006
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->playingIntros:Z

    return-void
.end method

.method public setRegistrationInfo(Lmediabrowser/model/registration/RegistrationInfo;)V
    .locals 0

    .line 733
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->registrationInfo:Lmediabrowser/model/registration/RegistrationInfo;

    return-void
.end method

.method public setReloadRequired(Z)V
    .locals 0

    .line 1036
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->reloadRequired:Z

    return-void
.end method

.method public setSearchAllowed(Z)V
    .locals 0

    .line 982
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->searchAllowed:Z

    return-void
.end method

.method public setSerializer(Lmediabrowser/apiinteraction/android/GsonJsonSerializer;)V
    .locals 0

    .line 237
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->serializer:Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    return-void
.end method

.method public setShowPlayerStats(Z)V
    .locals 0

    .line 1087
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->showPlayerStats:Z

    return-void
.end method

.method public setShuttingDown(Z)V
    .locals 0

    .line 1063
    iput-boolean p1, p0, Ltv/emby/embyatv/TvApp;->shuttingDown:Z

    return-void
.end method

.method public setUserDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->userDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    return-void
.end method

.method public setUserViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 1079
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->userViews:Ljava/util/List;

    return-void
.end method

.method public setWakeOnLanInfos(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmediabrowser/model/apiclient/WakeOnLanInfo;",
            ">;)V"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Ltv/emby/embyatv/TvApp;->wakeOnLanInfos:Ljava/util/HashMap;

    .line 262
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Saved WOL Info: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/TvApp;->wakeOnLanInfos:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setupConnection()V
    .locals 12

    .line 267
    new-instance v4, Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    invoke-direct {v4, v0, p0}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;-><init>(Lmediabrowser/model/logging/ILogger;Landroid/content/Context;)V

    .line 268
    invoke-virtual {p0, v4}, Ltv/emby/embyatv/TvApp;->setHttpClient(Lmediabrowser/apiinteraction/android/VolleyHttpClient;)V

    .line 269
    new-instance v8, Lmediabrowser/model/session/ClientCapabilities;

    invoke-direct {v8}, Lmediabrowser/model/session/ClientCapabilities;-><init>()V

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Video"

    .line 271
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Audio"

    .line 272
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    sget-object v2, Lmediabrowser/model/session/GeneralCommandType;->DisplayContent:Lmediabrowser/model/session/GeneralCommandType;

    invoke-virtual {v2}, Lmediabrowser/model/session/GeneralCommandType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v2, Lmediabrowser/model/session/GeneralCommandType;->Mute:Lmediabrowser/model/session/GeneralCommandType;

    invoke-virtual {v2}, Lmediabrowser/model/session/GeneralCommandType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v2, Lmediabrowser/model/session/GeneralCommandType;->Unmute:Lmediabrowser/model/session/GeneralCommandType;

    invoke-virtual {v2}, Lmediabrowser/model/session/GeneralCommandType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v2, Lmediabrowser/model/session/GeneralCommandType;->ToggleMute:Lmediabrowser/model/session/GeneralCommandType;

    invoke-virtual {v2}, Lmediabrowser/model/session/GeneralCommandType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v2, Lmediabrowser/model/session/GeneralCommandType;->DisplayMessage:Lmediabrowser/model/session/GeneralCommandType;

    invoke-virtual {v2}, Lmediabrowser/model/session/GeneralCommandType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "PlayMediaSource"

    .line 279
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {v8, v0}, Lmediabrowser/model/session/ClientCapabilities;->setPlayableMediaTypes(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 282
    invoke-virtual {v8, v0}, Lmediabrowser/model/session/ClientCapabilities;->setSupportsContentUploading(Z)V

    .line 283
    invoke-virtual {v8, v0}, Lmediabrowser/model/session/ClientCapabilities;->setSupportsSync(Z)V

    const/4 v0, 0x1

    .line 284
    invoke-virtual {v8, v0}, Lmediabrowser/model/session/ClientCapabilities;->setSupportsMediaControl(Z)V

    .line 285
    invoke-virtual {v8, v1}, Lmediabrowser/model/session/ClientCapabilities;->setSupportedCommands(Ljava/util/ArrayList;)V

    .line 286
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lmediabrowser/model/session/ClientCapabilities;->setAppStoreUrl(Ljava/lang/String;)V

    const-string v0, "https://mediabrowser.github.io/Emby.AndroidTv/appicon.png"

    .line 287
    invoke-virtual {v8, v0}, Lmediabrowser/model/session/ClientCapabilities;->setIconUrl(Ljava/lang/String;)V

    .line 291
    new-instance v10, Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    invoke-direct {v10}, Ltv/emby/embyatv/eventhandling/TvApiEventListener;-><init>()V

    .line 293
    new-instance v11, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;

    .line 294
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v5, "AndroidTv"

    const-string v6, "1.8.29g"

    new-instance v7, Lmediabrowser/apiinteraction/android/AndroidDevice;

    invoke-direct {v7, p0}, Lmediabrowser/apiinteraction/android/AndroidDevice;-><init>(Landroid/content/Context;)V

    move-object v0, v11

    move-object v1, p0

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;-><init>(Landroid/content/Context;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Lmediabrowser/model/session/ClientCapabilities;Lmediabrowser/apiinteraction/ApiEventListener;)V

    .line 303
    invoke-virtual {p0, v11}, Ltv/emby/embyatv/TvApp;->setConnectionManager(Lmediabrowser/apiinteraction/IConnectionManager;)V

    .line 304
    invoke-virtual {p0, v10}, Ltv/emby/embyatv/TvApp;->setApiEventListener(Ltv/emby/embyatv/eventhandling/TvApiEventListener;)V

    .line 305
    new-instance v0, Ltv/emby/embyatv/api/PlaybackManager;

    new-instance v1, Lmediabrowser/apiinteraction/android/AndroidDevice;

    invoke-direct {v1, p0}, Lmediabrowser/apiinteraction/android/AndroidDevice;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/api/PlaybackManager;-><init>(Lmediabrowser/apiinteraction/device/IDevice;Lmediabrowser/model/logging/ILogger;)V

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/TvApp;->setPlaybackManager(Ltv/emby/embyatv/api/PlaybackManager;)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 509
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0, p1, p2}, Ltv/emby/embyatv/base/BaseActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 515
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 516
    iget-object v1, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Ltv/emby/embyatv/base/BaseActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public showPlayerStats()Z
    .locals 1

    .line 1083
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->showPlayerStats:Z

    return v0
.end method

.method public showSearch(Landroid/app/Activity;)V
    .locals 4

    .line 454
    iget-boolean v0, p0, Ltv/emby/embyatv/TvApp;->searchAllowed:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Requesting search permission..."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 459
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Show rationale for permission"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Search Permission"

    .line 463
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Search requires permission to record audio in order to use the microphone for voice search"

    .line 464
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Ltv/emby/embyatv/TvApp$4;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/TvApp$4;-><init>(Ltv/emby/embyatv/TvApp;Landroid/app/Activity;)V

    .line 465
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 471
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 474
    :cond_1
    invoke-direct {p0, p1}, Ltv/emby/embyatv/TvApp;->showSearchInternal(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 794
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->finish()V

    goto :goto_0

    .line 796
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->stopAudio()V

    :cond_1
    :goto_0
    return-void
.end method

.method public togglePausePlayback()V
    .locals 1

    .line 809
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->playPause()V

    goto :goto_0

    .line 811
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->pauseAudio()V

    goto :goto_0

    .line 813
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->resumeAudio()V

    :cond_2
    :goto_0
    return-void
.end method

.method public unPausePlayback()V
    .locals 1

    .line 819
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->playbackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->playPause()V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->mediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->resumeAudio()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateAutoEnableCC(Z)V
    .locals 3

    .line 1052
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_enable_cc_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateDisplayPrefs(Ljava/lang/String;Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 3

    .line 869
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->displayPrefsCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lmediabrowser/model/entities/DisplayPreferences;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {v0, p2, v1, p1, v2}, Lmediabrowser/apiinteraction/ApiClient;->UpdateDisplayPreferencesAsync(Lmediabrowser/model/entities/DisplayPreferences;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 871
    iget-object p1, p0, Ltv/emby/embyatv/TvApp;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display prefs updated for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/entities/DisplayPreferences;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isFavorite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p2

    const-string v1, "FavoriteOnly"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 1

    const-string v0, "ATV"

    .line 865
    invoke-virtual {p0, v0, p1}, Ltv/emby/embyatv/TvApp;->updateDisplayPrefs(Ljava/lang/String;Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method

.method public updateUserConfiguration(Ljava/lang/String;Lmediabrowser/model/configuration/UserConfiguration;)V
    .locals 4

    .line 579
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Configuration"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 583
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 584
    new-instance v1, Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/http/HttpHeaders;-><init>()V

    const-string v2, "Accept"

    const-string v3, "application/json"

    .line 585
    invoke-virtual {v1, v2, v3}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/apiinteraction/ApiClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/http/HttpHeaders;->SetAccessToken(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p1, "POST"

    .line 588
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    .line 590
    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 591
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 592
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getHttpClient()Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    move-result-object p1

    new-instance p2, Ltv/emby/embyatv/TvApp$6;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/TvApp$6;-><init>(Ltv/emby/embyatv/TvApp;)V

    invoke-virtual {p1, v0, p2}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public updateWakeOnLanInfo(Ljava/lang/String;Lmediabrowser/model/apiclient/WakeOnLanInfo;)V
    .locals 2

    .line 309
    iget-object v0, p0, Ltv/emby/embyatv/TvApp;->wakeOnLanInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :try_start_0
    iget-object p1, p0, Ltv/emby/embyatv/TvApp;->wakeOnLanInfos:Ljava/util/HashMap;

    const-string p2, "wolinfo.json"

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->SaveWolInfos(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    const-string v0, "Error saving wol info"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public useExternalPlayer(Ljava/lang/String;)Z
    .locals 2

    .line 563
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Program"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "TvChannel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "Episode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "Video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "Movie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "Recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "Series"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    .line 572
    :pswitch_0
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_live_tv_use_external"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 569
    :pswitch_1
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_video_use_external"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x6c991569 -> :sswitch_6
        -0x4d55622f -> :sswitch_5
        0x4714f10 -> :sswitch_4
        0x4ed245b -> :sswitch_3
        0x72a55db -> :sswitch_2
        0x17833001 -> :sswitch_1
        0x50c7b664 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public useVlcForLiveTv()Z
    .locals 3

    .line 629
    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_enable_vlc_livetv"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public validateServer()V
    .locals 5

    .line 408
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    const-string v1, "web/manifest.json"

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    new-instance v1, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 411
    new-instance v2, Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/http/HttpHeaders;-><init>()V

    const-string v3, "Accept"

    const-string v4, "application/json"

    .line 412
    invoke-virtual {v2, v3, v4}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/apiinteraction/ApiClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/apiinteraction/http/HttpHeaders;->SetAccessToken(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "GET"

    .line 415
    invoke-virtual {v1, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    .line 417
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getHttpClient()Lmediabrowser/apiinteraction/android/VolleyHttpClient;

    move-result-object v0

    new-instance v2, Ltv/emby/embyatv/TvApp$3;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/TvApp$3;-><init>(Ltv/emby/embyatv/TvApp;)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
