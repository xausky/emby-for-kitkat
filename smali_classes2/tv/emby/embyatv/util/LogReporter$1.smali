.class Ltv/emby/embyatv/util/LogReporter$1;
.super Lmediabrowser/apiinteraction/Response;
.source "LogReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/LogReporter;->sendRequest(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/util/LogReporter;

.field final synthetic val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

.field final synthetic val$createCrashFile:Z

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/LogReporter;Lmediabrowser/apiinteraction/EmptyResponse;ZLjava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Ltv/emby/embyatv/util/LogReporter$1;->this$0:Ltv/emby/embyatv/util/LogReporter;

    iput-object p2, p0, Ltv/emby/embyatv/util/LogReporter$1;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    iput-boolean p3, p0, Ltv/emby/embyatv/util/LogReporter$1;->val$createCrashFile:Z

    iput-object p4, p0, Ltv/emby/embyatv/util/LogReporter$1;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 98
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error sending log"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 99
    iget-boolean v0, p0, Ltv/emby/embyatv/util/LogReporter$1;->val$createCrashFile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/util/LogReporter$1;->this$0:Ltv/emby/embyatv/util/LogReporter;

    iget-object v1, p0, Ltv/emby/embyatv/util/LogReporter$1;->val$json:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/LogReporter;->access$000(Ltv/emby/embyatv/util/LogReporter;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/util/LogReporter$1;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/util/LogReporter$1;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/LogReporter$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 92
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response from log report send: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Ltv/emby/embyatv/util/LogReporter$1;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/util/LogReporter$1;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method
