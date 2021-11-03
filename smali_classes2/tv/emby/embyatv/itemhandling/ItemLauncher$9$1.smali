.class Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;
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

    .line 541
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 545
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    iget-object p2, p2, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {p2}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1$1;-><init>(Ltv/emby/embyatv/itemhandling/ItemLauncher$9$1;)V

    invoke-interface {p1, p2, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->DeleteServer(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
