.class Ltv/emby/embyatv/details/ItemListActivity$5$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity$5;->run()V
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
.field final synthetic this$1:Ltv/emby/embyatv/details/ItemListActivity$5;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity$5;)V
    .locals 0

    .line 280
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 297
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$700(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error refreshing item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/ItemListActivity$5$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 2

    .line 283
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ItemListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ItemListActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget v1, v1, Ltv/emby/embyatv/details/ItemListActivity$5;->val$ndx:I

    if-le v0, v1, :cond_3

    .line 284
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget v1, v1, Ltv/emby/embyatv/details/ItemListActivity$5;->val$ndx:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->isFavoriteOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->isUnwatchedOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 286
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->val$ndx:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 287
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->val$ndx:I

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyItemRemoved(I)V

    .line 288
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$1300(Ltv/emby/embyatv/details/ItemListActivity;)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity$5;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$5$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$5;

    iget v0, v0, Ltv/emby/embyatv/details/ItemListActivity$5;->val$ndx:I

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyItemChanged(I)V

    :cond_3
    :goto_0
    return-void
.end method
