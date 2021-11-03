.class final Ltv/emby/embyatv/util/Utils$34;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->handleConnectionResponse(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;Lmediabrowser/apiinteraction/ConnectionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/util/ArrayList<",
        "Lmediabrowser/model/apiclient/ServerInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;


# direct methods
.method constructor <init>(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V
    .locals 0

    .line 2460
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$34;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$34;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2460
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$34;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .line 2463
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2465
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$34;->val$connectionManager:Lmediabrowser/apiinteraction/IConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/apiclient/ServerInfo;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$34;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Ltv/emby/embyatv/util/Utils;->signInToServer(Lmediabrowser/apiinteraction/IConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Landroid/app/Activity;)V

    goto :goto_1

    .line 2468
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$34;->val$activity:Landroid/app/Activity;

    const-class v2, Ltv/emby/embyatv/startup/SelectServerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2469
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    .line 2470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2471
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/ServerInfo;

    .line 2472
    invoke-virtual {v1, v3}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "Servers"

    .line 2474
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 2475
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2476
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$34;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
