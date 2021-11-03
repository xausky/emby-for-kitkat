.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->RefreshWithDiff(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$updated:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 951
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;->val$updated:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 6

    .line 954
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;->val$updated:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->unmodifiableList()Ljava/util/List;

    move-result-object v0

    .line 955
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 956
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "**** Updating row %s with diff..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v5}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$800(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Ltv/emby/embyatv/querying/QueryType;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/querying/QueryType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5$1;-><init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;)V

    invoke-virtual {v1, v0, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItems(Ljava/util/List;Landroidx/leanback/widget/DiffCallback;)V

    goto :goto_0

    .line 971
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$5;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    :goto_0
    return-void
.end method
