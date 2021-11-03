.class final Ltv/emby/embyatv/util/Utils$29;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/users/AuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$directEntryItemId:Ljava/lang/String;

.field final synthetic val$pw:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 2052
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$29;->val$pw:Ljava/lang/String;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$29;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Ltv/emby/embyatv/util/Utils$29;->val$directEntryItemId:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 2061
    invoke-super {p0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    .line 2062
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error logging in"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 2063
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$29;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$29;->val$activity:Landroid/app/Activity;

    const v1, 0x7f100630

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2052
    check-cast p1, Lmediabrowser/model/users/AuthenticationResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$29;->onResponse(Lmediabrowser/model/users/AuthenticationResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/users/AuthenticationResult;)V
    .locals 2

    .line 2055
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$29;->val$pw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setCurrentUserPw(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {p1}, Lmediabrowser/model/users/AuthenticationResult;->getUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$29;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$29;->val$directEntryItemId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->loginAuthenticatedUser(Lmediabrowser/model/dto/UserDto;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
