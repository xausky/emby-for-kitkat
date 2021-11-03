.class final Ltv/emby/embyatv/util/Utils$30;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->loginAuthenticatedUser(Lmediabrowser/model/dto/UserDto;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/entities/DisplayPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$application:Ltv/emby/embyatv/TvApp;

.field final synthetic val$directEntryItemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/TvApp;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 2076
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$30;->val$application:Ltv/emby/embyatv/TvApp;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$30;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Ltv/emby/embyatv/util/Utils$30;->val$directEntryItemId:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 2093
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$30;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to get user display prefs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 2094
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$30;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$30;->val$directEntryItemId:Ljava/lang/String;

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->launchAfterLogin(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2076
    check-cast p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$30;->onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 5

    .line 2080
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$30;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setUserDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V

    .line 2082
    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "displayTheme"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "displayTheme"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "default"

    .line 2083
    :goto_0
    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$30;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Updating server-stored display theme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/embyatv/util/Utils$30;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2084
    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$30;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_display_theme"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2085
    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "enableThemeSongs"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "enableThemeSongs"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2086
    :goto_1
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$30;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** Updating server-stored theme song setting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/util/Utils$30;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2087
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$30;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_enable_theme_songs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2088
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$30;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$30;->val$directEntryItemId:Ljava/lang/String;

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->launchAfterLogin(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
