.class Ltv/emby/embyatv/TvApp$8$1;
.super Lmediabrowser/apiinteraction/Response;
.source "TvApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/TvApp$8;->onResponse(Lmediabrowser/model/net/EndPointInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/TvApp$8;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/TvApp$8;)V
    .locals 0

    .line 928
    iput-object p1, p0, Ltv/emby/embyatv/TvApp$8$1;->this$1:Ltv/emby/embyatv/TvApp$8;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 937
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$8$1;->this$1:Ltv/emby/embyatv/TvApp$8;

    iget-object v0, v0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0}, Ltv/emby/embyatv/TvApp;->access$100(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Auto bitrate test failed.  Using default"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Long;)V
    .locals 2

    .line 931
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$8$1;->this$1:Ltv/emby/embyatv/TvApp$8;

    iget-object v0, v0, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/TvApp;->access$702(Ltv/emby/embyatv/TvApp;I)I

    .line 932
    iget-object p1, p0, Ltv/emby/embyatv/TvApp$8$1;->this$1:Ltv/emby/embyatv/TvApp$8;

    iget-object p1, p1, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {p1}, Ltv/emby/embyatv/TvApp;->access$100(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto bitrate set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/TvApp$8$1;->this$1:Ltv/emby/embyatv/TvApp$8;

    iget-object v1, v1, Ltv/emby/embyatv/TvApp$8;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v1}, Ltv/emby/embyatv/TvApp;->access$700(Ltv/emby/embyatv/TvApp;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 928
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/TvApp$8$1;->onResponse(Ljava/lang/Long;)V

    return-void
.end method
