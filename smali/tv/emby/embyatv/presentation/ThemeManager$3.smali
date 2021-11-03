.class final Ltv/emby/embyatv/presentation/ThemeManager$3;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/ThemeManager;->showWelcomeMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentActivity:Ltv/emby/embyatv/base/BaseActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 0

    .line 443
    iput-object p1, p0, Ltv/emby/embyatv/presentation/ThemeManager$3;->val$currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 447
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/presentation/ThemeManager$3;->val$currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/presentation/ThemeManager$3;->val$currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/ThemeManager$3;->val$currentActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v1, "Only with Emby Premiere"

    const-string v2, "Try one of the new themes available in the settings page."

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Ltv/emby/embyatv/base/BaseActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 450
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastThemeNag"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
