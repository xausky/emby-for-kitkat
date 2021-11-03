.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->GetResultSizeAsync(Lmediabrowser/apiinteraction/Response;)V
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

    .line 1272
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1281
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Lmediabrowser/model/querying/ArtistsQuery;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 1282
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1272
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 2

    .line 1275
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Lmediabrowser/model/querying/ArtistsQuery;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1400(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lmediabrowser/model/querying/ArtistsQuery;->setLimit(Ljava/lang/Integer;)V

    .line 1276
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$10;->val$outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getTotalRecordCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
