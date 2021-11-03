.class Ltv/emby/embyatv/browsing/TabHomeFragment$10;
.super Lmediabrowser/apiinteraction/Response;
.source "TabHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;->getHomeScreenPrefs(Lmediabrowser/apiinteraction/EmptyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 606
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$10;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$10;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 629
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving home screen prefs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 631
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$10;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 606
    check-cast p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/TabHomeFragment$10;->onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 4

    .line 611
    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homesection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, ""

    .line 615
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$10;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v3}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$200(Ltv/emby/embyatv/browsing/TabHomeFragment;)[Ljava/lang/String;

    move-result-object v3

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    :cond_1
    invoke-static {p1}, Ltv/emby/embyatv/livetv/TvManager;->translatePrefs(Lmediabrowser/model/entities/DisplayPreferences;)V

    .line 620
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$10;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v0

    iget-object v0, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$502(Ltv/emby/embyatv/browsing/TabHomeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$10;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v0

    iget-boolean v0, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->favsAtTop:Z

    invoke-static {p1, v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$602(Ltv/emby/embyatv/browsing/TabHomeFragment;Z)Z

    .line 624
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$10;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
