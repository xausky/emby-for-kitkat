.class final Ltv/emby/embyatv/util/Utils$17;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->handleInProgressPlaybackRequest(Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$program:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$17;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$17;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1514
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to find recording"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1515
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$17;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$17;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v2, v0}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1486
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$17;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$17;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Would you like to play the recording from the beginning or tune to the channel in real time?"

    .line 1492
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100549

    new-instance v2, Ltv/emby/embyatv/util/Utils$17$2;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/util/Utils$17$2;-><init>(Ltv/emby/embyatv/util/Utils$17;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 1493
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1005fa

    new-instance v1, Ltv/emby/embyatv/util/Utils$17$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/Utils$17$1;-><init>(Ltv/emby/embyatv/util/Utils$17;)V

    .line 1499
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1505
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1507
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Unable to find recording"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1508
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$17;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$17;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v1, v0}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    :goto_0
    return-void
.end method
