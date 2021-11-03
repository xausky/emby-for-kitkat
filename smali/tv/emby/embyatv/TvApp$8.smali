.class Ltv/emby/embyatv/TvApp$8;
.super Lmediabrowser/apiinteraction/Response;
.source "TvApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/TvApp;->determineAutoBitrate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/net/EndPointInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/TvApp;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/TvApp;)V
    .locals 0

    .line 922
    iput-object p1, p0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 922
    check-cast p1, Lmediabrowser/model/net/EndPointInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/TvApp$8;->onResponse(Lmediabrowser/model/net/EndPointInfo;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/net/EndPointInfo;)V
    .locals 4

    .line 925
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Lmediabrowser/model/net/EndPointInfo;->getIsLocal()Z

    move-result v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/TvApp;->access$502(Ltv/emby/embyatv/TvApp;Z)Z

    .line 926
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Lmediabrowser/model/net/EndPointInfo;->getIsInNetwork()Z

    move-result p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/TvApp;->access$602(Ltv/emby/embyatv/TvApp;Z)Z

    .line 927
    iget-object p1, p0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {p1}, Ltv/emby/embyatv/TvApp;->access$600(Ltv/emby/embyatv/TvApp;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 928
    iget-object p1, p0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/TvApp$8$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/TvApp$8$1;-><init>(Ltv/emby/embyatv/TvApp$8;)V

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->detectBitrate(Lmediabrowser/apiinteraction/Response;)V

    goto :goto_1

    .line 943
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isShield()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x68e7780

    goto :goto_0

    :cond_1
    const v0, 0x4c4b400

    :goto_0
    invoke-static {p1, v0}, Ltv/emby/embyatv/TvApp;->access$702(Ltv/emby/embyatv/TvApp;I)I

    .line 944
    iget-object p1, p0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "** Local connection - no server bitrate limit and auto set to %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v3}, Ltv/emby/embyatv/TvApp;->access$700(Ltv/emby/embyatv/TvApp;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
