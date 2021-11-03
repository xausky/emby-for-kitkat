.class Ltv/emby/embyatv/TvApp$7;
.super Lmediabrowser/apiinteraction/Response;
.source "TvApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/TvApp;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/TvApp;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 888
    iput-object p1, p0, Ltv/emby/embyatv/TvApp$7;->this$0:Ltv/emby/embyatv/TvApp;

    iput-object p2, p0, Ltv/emby/embyatv/TvApp$7;->val$key:Ljava/lang/String;

    iput-object p3, p0, Ltv/emby/embyatv/TvApp$7;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 901
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$7;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0}, Ltv/emby/embyatv/TvApp;->access$100(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to load display prefs "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 902
    new-instance p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-direct {p1}, Lmediabrowser/model/entities/DisplayPreferences;-><init>()V

    .line 903
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$7;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setId(Ljava/lang/String;)V

    const-string v0, "SortName"

    .line 904
    invoke-virtual {p1, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setSortBy(Ljava/lang/String;)V

    .line 905
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setCustomPrefs(Ljava/util/HashMap;)V

    .line 906
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$7;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 888
    check-cast p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/TvApp$7;->onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 3

    .line 891
    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getSortBy()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SortName"

    invoke-virtual {p1, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setSortBy(Ljava/lang/String;)V

    .line 892
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setCustomPrefs(Ljava/util/HashMap;)V

    .line 893
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$7;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0}, Ltv/emby/embyatv/TvApp;->access$400(Ltv/emby/embyatv/TvApp;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/TvApp$7;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$7;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0}, Ltv/emby/embyatv/TvApp;->access$100(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display prefs loaded and saved in cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/TvApp$7;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$7;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
