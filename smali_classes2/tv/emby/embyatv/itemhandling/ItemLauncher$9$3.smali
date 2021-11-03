.class Ltv/emby/embyatv/itemhandling/ItemLauncher$9$3;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->onResponse(Lmediabrowser/apiinteraction/ConnectionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemLauncher$9;)V
    .locals 0

    .line 560
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 560
    check-cast p1, Lmediabrowser/model/dto/UserDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$3;->onResponse(Lmediabrowser/model/dto/UserDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/UserDto;)V
    .locals 1

    .line 563
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setCurrentUser(Lmediabrowser/model/dto/UserDto;)V

    .line 564
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$9$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemLauncher$9;

    iget-object p1, p1, Ltv/emby/embyatv/itemhandling/ItemLauncher$9;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->launchAfterLogin(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
