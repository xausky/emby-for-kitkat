.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RetrieveToNdxAsync(ILmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$ndx:I

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;

.field final synthetic val$saveRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 605
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->val$ndx:I

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->val$saveRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    iput-object p4, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 609
    iget v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->val$ndx:I

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$100(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 610
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 613
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->val$saveRetrieveFinishedListener:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-static {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$702(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Lmediabrowser/apiinteraction/EmptyResponse;)Lmediabrowser/apiinteraction/EmptyResponse;

    .line 614
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$000(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->val$response:Lmediabrowser/apiinteraction/Response;

    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->val$ndx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->val$ndx:I

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$4;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$500(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method
