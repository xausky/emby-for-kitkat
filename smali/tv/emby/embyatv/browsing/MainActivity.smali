.class public Ltv/emby/embyatv/browsing/MainActivity;
.super Ltv/emby/embyatv/browsing/BaseTabActivity;
.source "MainActivity.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private logoutLoop:Ljava/lang/Runnable;

.field mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/TabDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/BaseTabActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->mTabs:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Ltv/emby/embyatv/browsing/MainActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iput-object p1, p0, Ltv/emby/embyatv/browsing/MainActivity;->logoutLoop:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/browsing/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Ltv/emby/embyatv/browsing/MainActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private startAutoLogoffLoop()V
    .locals 4

    .line 51
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->logoutLoop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/MainActivity;->logoutLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Starting auto logout loop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Ltv/emby/embyatv/browsing/MainActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/browsing/MainActivity$1;-><init>(Ltv/emby/embyatv/browsing/MainActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->logoutLoop:Ljava/lang/Runnable;

    .line 89
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/MainActivity;->logoutLoop:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method getTabDefinitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/TabDef;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->mShowLogo:Z

    .line 28
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->isMainPage:Z

    .line 29
    iput-boolean v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->mShowUser:Z

    .line 30
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1004db

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/TabHomeFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->mTabs:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/model/TabDef;

    const v2, 0x7f1004c2

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/browsing/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;

    invoke-direct {v3}, Ltv/emby/embyatv/browsing/GlobalFavoritesFragment;-><init>()V

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/model/TabDef;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-direct {v0}, Lmediabrowser/model/entities/DisplayPreferences;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->mDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    .line 33
    invoke-super {p0, p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_auto_logoff_timeout"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "No auto logoff"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Ltv/emby/embyatv/browsing/MainActivity;->logoutLoop:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/browsing/MainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity;->logoutLoop:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/TvApp;->setLastUserInteraction(J)V

    .line 36
    invoke-direct {p0}, Ltv/emby/embyatv/browsing/MainActivity;->startAutoLogoffLoop()V

    :cond_2
    :goto_1
    return-void
.end method
