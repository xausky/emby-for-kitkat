.class Ltv/emby/embyatv/ui/EditSubPopup$3;
.super Lmediabrowser/apiinteraction/Response;
.source "EditSubPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/EditSubPopup;->show(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Ltv/emby/embyatv/ui/EditSubPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/EditSubPopup;)V
    .locals 0

    .line 190
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$3;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 198
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$3;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const v1, 0x7f1003e3

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 199
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving item for subtitle edit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/EditSubPopup$3;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 193
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$3;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0, p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$900(Ltv/emby/embyatv/ui/EditSubPopup;Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method
