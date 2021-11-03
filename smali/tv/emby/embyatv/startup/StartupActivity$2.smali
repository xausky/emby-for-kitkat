.class Ltv/emby/embyatv/startup/StartupActivity$2;
.super Lmediabrowser/apiinteraction/Response;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/StartupActivity;->connectAutomatically(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/apiinteraction/ConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/startup/StartupActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/StartupActivity;Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$2;->this$0:Ltv/emby/embyatv/startup/StartupActivity;

    iput-object p2, p0, Ltv/emby/embyatv/startup/StartupActivity$2;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iput-object p3, p0, Ltv/emby/embyatv/startup/StartupActivity$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 309
    iget-object p1, p0, Ltv/emby/embyatv/startup/StartupActivity$2;->val$activity:Landroid/app/Activity;

    const-string v0, "Error connecting"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->reportError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/startup/StartupActivity$2;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 2

    .line 304
    iget-object v0, p0, Ltv/emby/embyatv/startup/StartupActivity$2;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iget-object v1, p0, Ltv/emby/embyatv/startup/StartupActivity$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Ltv/emby/embyatv/util/Utils;->handleConnectionResponse(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;Lmediabrowser/apiinteraction/ConnectionResult;)V

    return-void
.end method
