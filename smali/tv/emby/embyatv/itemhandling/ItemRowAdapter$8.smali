.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Lmediabrowser/model/search/SearchQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/search/SearchHintResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1242
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving search results"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1243
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1244
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1220
    check-cast p1, Lmediabrowser/model/search/SearchHintResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->onResponse(Lmediabrowser/model/search/SearchHintResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/search/SearchHintResult;)V
    .locals 8

    .line 1223
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchHintResult;->getSearchHints()[Lmediabrowser/model/search/SearchHint;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/search/SearchHintResult;->getSearchHints()[Lmediabrowser/model/search/SearchHint;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1225
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    .line 1226
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchHintResult;->getSearchHints()[Lmediabrowser/model/search/SearchHint;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 1227
    invoke-static {}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1100()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lmediabrowser/model/search/SearchHint;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1229
    iget-object v6, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v7, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-direct {v7, v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(Lmediabrowser/model/search/SearchHint;)V

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1232
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Lmediabrowser/model/search/SearchHintResult;->getTotalRecordCount()I

    move-result p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$102(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    .line 1233
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    .line 1234
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1300(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Landroidx/leanback/widget/ListRow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 1237
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$8;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method
