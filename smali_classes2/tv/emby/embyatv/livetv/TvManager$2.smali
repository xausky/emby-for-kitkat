.class final Ltv/emby/embyatv/livetv/TvManager$2;
.super Lmediabrowser/apiinteraction/Response;
.source "TvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/TvManager;->getLiveTvPrefs(Lmediabrowser/apiinteraction/EmptyResponse;)V
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
.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 223
    iput-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$2;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 234
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving live tv prefs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 235
    new-instance p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-direct {p1}, Lmediabrowser/model/entities/DisplayPreferences;-><init>()V

    invoke-static {p1}, Ltv/emby/embyatv/livetv/TvManager;->access$102(Lmediabrowser/model/entities/DisplayPreferences;)Lmediabrowser/model/entities/DisplayPreferences;

    .line 236
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->access$100()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setCustomPrefs(Ljava/util/HashMap;)V

    .line 237
    iget-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$2;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/TvManager$2;->onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 0

    .line 226
    invoke-static {p1}, Ltv/emby/embyatv/livetv/TvManager;->access$102(Lmediabrowser/model/entities/DisplayPreferences;)Lmediabrowser/model/entities/DisplayPreferences;

    .line 228
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->access$100()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/livetv/TvManager;->translatePrefs(Lmediabrowser/model/entities/DisplayPreferences;)V

    .line 229
    iget-object p1, p0, Ltv/emby/embyatv/livetv/TvManager$2;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
