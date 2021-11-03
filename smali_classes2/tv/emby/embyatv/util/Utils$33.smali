.class final Ltv/emby/embyatv/util/Utils$33;
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
        "Lmediabrowser/model/dto/UserDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 2449
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$33;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2449
    check-cast p1, Lmediabrowser/model/dto/UserDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$33;->onResponse(Lmediabrowser/model/dto/UserDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/UserDto;)V
    .locals 1

    .line 2452
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setCurrentUser(Lmediabrowser/model/dto/UserDto;)V

    .line 2453
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setConnectLogin(Z)V

    .line 2454
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$33;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->launchAfterLogin(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
