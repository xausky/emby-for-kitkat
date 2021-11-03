.class Ltv/emby/embyatv/browsing/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/MainActivity;->startAutoLogoffLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/MainActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/MainActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Ltv/emby/embyatv/browsing/MainActivity$1;->this$0:Ltv/emby/embyatv/browsing/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 59
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity$1;->this$0:Ltv/emby/embyatv/browsing/MainActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/MainActivity;->finishAffinity()V

    goto/16 :goto_4

    .line 64
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v1, 0x107ac0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_auto_logoff_timeout"

    const-string v3, "3600000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    const-wide/32 v1, 0x240c8400

    :cond_2
    const-string v3, "power"

    .line 66
    invoke-virtual {v0, v3}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 67
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastUserInteraction()J

    move-result-wide v8

    const/4 v10, 0x0

    add-long/2addr v8, v1

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    goto :goto_2

    .line 80
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity$1;->this$0:Ltv/emby/embyatv/browsing/MainActivity;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/MainActivity;->access$100(Ltv/emby/embyatv/browsing/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity$1;->this$0:Ltv/emby/embyatv/browsing/MainActivity;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/MainActivity;->access$100(Ltv/emby/embyatv/browsing/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 69
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v6

    if-eqz v3, :cond_6

    const-string v3, "Logging off because device is asleep"

    goto :goto_3

    :cond_6
    const-string v3, "Logging off due to inactivity %d"

    :goto_3
    new-array v7, v5, [Ljava/lang/Object;

    const-wide/32 v8, 0xea60

    div-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-interface {v6, v3, v7}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Ltv/emby/embyatv/browsing/MainActivity$1;->this$0:Ltv/emby/embyatv/browsing/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ltv/emby/embyatv/browsing/MainActivity;->access$002(Ltv/emby/embyatv/browsing/MainActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 71
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->closeWebSocket()V

    .line 72
    :cond_7
    invoke-virtual {v0, v5}, Ltv/emby/embyatv/TvApp;->setShuttingDown(Z)V

    .line 73
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 74
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->finishAffinity()V

    goto :goto_4

    .line 76
    :cond_8
    iget-object v0, p0, Ltv/emby/embyatv/browsing/MainActivity$1;->this$0:Ltv/emby/embyatv/browsing/MainActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/MainActivity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    :goto_4
    return-void
.end method
