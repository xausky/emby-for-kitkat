.class Ltv/emby/embyatv/itemhandling/BaseRowItem$2;
.super Lmediabrowser/apiinteraction/Response;
.source "BaseRowItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/BaseRowItem;->refresh(Lmediabrowser/apiinteraction/EmptyResponse;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 731
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$2;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$2;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 731
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$2;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 734
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$2;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-static {v0, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->access$402(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;

    .line 735
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$2;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-static {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->access$400(Ltv/emby/embyatv/itemhandling/BaseRowItem;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$2;->this$0:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-static {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->access$400(Ltv/emby/embyatv/itemhandling/BaseRowItem;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setOverview(Ljava/lang/String;)V

    .line 736
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$2;->val$outerResponse:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method
