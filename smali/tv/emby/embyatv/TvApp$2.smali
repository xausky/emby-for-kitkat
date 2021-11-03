.class Ltv/emby/embyatv/TvApp$2;
.super Lmediabrowser/apiinteraction/Response;
.source "TvApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/TvApp;->loadSystemInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/system/SystemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/TvApp;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/TvApp;)V
    .locals 0

    .line 362
    iput-object p1, p0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 400
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0}, Ltv/emby/embyatv/TvApp;->access$100(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to obtain system info."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 362
    check-cast p1, Lmediabrowser/model/system/SystemInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/TvApp$2;->onResponse(Lmediabrowser/model/system/SystemInfo;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/system/SystemInfo;)V
    .locals 3

    .line 365
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0, p1}, Ltv/emby/embyatv/TvApp;->access$002(Ltv/emby/embyatv/TvApp;Lmediabrowser/model/system/SystemInfo;)Lmediabrowser/model/system/SystemInfo;

    .line 366
    iget-object v0, p0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {v0}, Ltv/emby/embyatv/TvApp;->access$100(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current server is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/system/SystemInfo;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (ver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/system/SystemInfo;->getOperatingSystemDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object p1, p0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-static {p1}, Ltv/emby/embyatv/TvApp;->access$000(Ltv/emby/embyatv/TvApp;)Lmediabrowser/model/system/SystemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "4.0.3.0"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 369
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Incompatible Server Version"

    .line 370
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Please update your Emby Server."

    .line 371
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    const v2, 0x7f1003bf

    .line 372
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ltv/emby/embyatv/TvApp$2$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/TvApp$2$1;-><init>(Ltv/emby/embyatv/TvApp$2;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 378
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 382
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/TvApp$2;->this$0:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/TvApp$2$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/TvApp$2$2;-><init>(Ltv/emby/embyatv/TvApp$2;)V

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetWolInfoAsync(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
