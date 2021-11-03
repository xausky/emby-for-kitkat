.class Ltv/emby/embyatv/browsing/ByGenreFragment$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ByGenreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/ByGenreFragment;->setupQueries(Ltv/emby/embyatv/browsing/IRowLoader;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/browsing/ByGenreFragment;

.field final synthetic val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/ByGenreFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 0

    .line 33
    iput-object p1, p0, Ltv/emby/embyatv/browsing/ByGenreFragment$1;->this$0:Ltv/emby/embyatv/browsing/ByGenreFragment;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/ByGenreFragment$1;->val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/ByGenreFragment$1;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 8

    .line 36
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 37
    new-instance v4, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v4}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    .line 38
    iget-object v5, p0, Ltv/emby/embyatv/browsing/ByGenreFragment$1;->this$0:Ltv/emby/embyatv/browsing/ByGenreFragment;

    iget-object v5, v5, Ltv/emby/embyatv/browsing/ByGenreFragment;->mFolder:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setParentId(Ljava/lang/String;)V

    const-string v5, "SortName"

    .line 39
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 40
    iget-object v5, p0, Ltv/emby/embyatv/browsing/ByGenreFragment$1;->this$0:Ltv/emby/embyatv/browsing/ByGenreFragment;

    iget-object v5, v5, Ltv/emby/embyatv/browsing/ByGenreFragment;->includeType:Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    new-array v5, v6, [Ljava/lang/String;

    iget-object v7, p0, Ltv/emby/embyatv/browsing/ByGenreFragment$1;->this$0:Ltv/emby/embyatv/browsing/ByGenreFragment;

    iget-object v7, v7, Ltv/emby/embyatv/browsing/ByGenreFragment;->includeType:Ljava/lang/String;

    aput-object v7, v5, v1

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 41
    :cond_0
    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setGenreIds([Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4, v6}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    .line 43
    iget-object v5, p0, Ltv/emby/embyatv/browsing/ByGenreFragment$1;->this$0:Ltv/emby/embyatv/browsing/ByGenreFragment;

    iget-object v5, v5, Ltv/emby/embyatv/browsing/ByGenreFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x28

    invoke-direct {v6, v3, v4, v7}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/browsing/ByGenreFragment$1;->val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/ByGenreFragment$1;->this$0:Ltv/emby/embyatv/browsing/ByGenreFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/ByGenreFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    return-void
.end method
