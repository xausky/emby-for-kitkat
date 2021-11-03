.class Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ItemLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1;)V
    .locals 0

    .line 521
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1$1;->this$2:Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 524
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1$1;->this$2:Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1;

    iget-object v0, v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1;->this$1:Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2;

    iget-object v0, v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    iget-object v0, v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    const-string v1, "Error trying to wake server"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error waking server"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse()V
    .locals 3

    .line 530
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Wake attempt sent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
