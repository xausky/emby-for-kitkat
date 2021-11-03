.class Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2;
.super Ljava/lang/Object;
.source "ItemLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemLauncher$9;)V
    .locals 0

    .line 513
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 516
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    iget-object p2, p2, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p2}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->getWakeOnLanInfo(Ljava/lang/String;)Lmediabrowser/model/apiclient/WakeOnLanInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 518
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2$1;-><init>(Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2;Lmediabrowser/model/apiclient/WakeOnLanInfo;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 535
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    iget-object p1, p1, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    const-string p2, "Unable to wake server"

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
