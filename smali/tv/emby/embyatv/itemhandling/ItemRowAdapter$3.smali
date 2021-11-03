.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getIndexOfStartsWithAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/querying/ItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$outerResponse:Lmediabrowser/apiinteraction/Response;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/Response;Ljava/lang/String;)V
    .locals 0

    .line 570
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 587
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving to letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->val$target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 588
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 570
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 2

    .line 573
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$000(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$100(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v0

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 575
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 577
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$600(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/querying/ItemQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$302(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    .line 578
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$600(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Lmediabrowser/model/querying/ItemQuery;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 579
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {v0, p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$500(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$3;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
