.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;
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


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 548
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 548
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 2

    .line 551
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$000(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$100(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v0

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 553
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 555
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Lmediabrowser/model/querying/ArtistsQuery;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/querying/ArtistsQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$302(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    .line 556
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Lmediabrowser/model/querying/ArtistsQuery;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 557
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {v0, p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$500(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$2;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
