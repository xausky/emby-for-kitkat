.class Ltv/emby/embyatv/details/FullDetailsActivity$6;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->loadItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 380
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 412
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving full object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 380
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$6;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 7

    .line 383
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V

    .line 384
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "directplay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 385
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 386
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getResumePreroll()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-static {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1800(Ltv/emby/embyatv/details/FullDetailsActivity;I)V

    .line 387
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$402(Ltv/emby/embyatv/details/FullDetailsActivity;Z)Z

    .line 388
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "directplay"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$402(Ltv/emby/embyatv/details/FullDetailsActivity;Z)Z

    .line 391
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_enable_theme_songs"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$6;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Ltv/emby/embyatv/details/FullDetailsActivity$6$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$6$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$6;)V

    invoke-virtual {v0, v2, p1, v1, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetThemeSongsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V

    :cond_1
    :goto_0
    return-void
.end method
