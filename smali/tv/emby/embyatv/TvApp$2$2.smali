.class Ltv/emby/embyatv/TvApp$2$2;
.super Lmediabrowser/apiinteraction/Response;
.source "TvApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/TvApp$2;->onResponse(Lmediabrowser/model/system/SystemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/apiclient/WakeOnLanInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/TvApp$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/TvApp$2;)V
    .locals 0

    .line 382
    iput-object p1, p0, Ltv/emby/embyatv/TvApp$2$2;->this$1:Ltv/emby/embyatv/TvApp$2;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 393
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$2$2;->this$1:Ltv/emby/embyatv/TvApp$2;

    iget-object v0, v0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error getting WOL info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 382
    check-cast p1, [Lmediabrowser/model/apiclient/WakeOnLanInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/TvApp$2$2;->onResponse([Lmediabrowser/model/apiclient/WakeOnLanInfo;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/apiclient/WakeOnLanInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 385
    array-length v0, p1

    if-lez v0, :cond_0

    .line 386
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$2$2;->this$1:Ltv/emby/embyatv/TvApp$2;

    iget-object v0, v0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    iget-object v1, p0, Ltv/emby/embyatv/TvApp$2$2;->this$1:Ltv/emby/embyatv/TvApp$2;

    iget-object v1, v1, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v1}, Ltv/emby/embyatv/TvApp;->access$000(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/system/SystemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/system/SystemInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ltv/emby/embyatv/TvApp;->updateWakeOnLanInfo(Ljava/lang/String;Lmediabrowser/model/apiclient/WakeOnLanInfo;)V

    .line 387
    iget-object p1, p0, Ltv/emby/embyatv/TvApp$2$2;->this$1:Ltv/emby/embyatv/TvApp$2;

    iget-object p1, p1, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Updated WOL info for server"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
