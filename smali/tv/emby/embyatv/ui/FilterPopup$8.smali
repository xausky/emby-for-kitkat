.class Ltv/emby/embyatv/ui/FilterPopup$8;
.super Lmediabrowser/apiinteraction/Response;
.source "FilterPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/FilterPopup;->createOtherFilters(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/ui/FilterPopup;

.field final synthetic val$itemType:Ljava/lang/String;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FilterPopup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    iput-object p2, p0, Ltv/emby/embyatv/ui/FilterPopup$8;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Ltv/emby/embyatv/ui/FilterPopup$8;->val$itemType:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 164
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/FilterPopup$8;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 7

    .line 167
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 170
    new-instance v5, Lmediabrowser/model/dto/NameValuePair;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_0
    new-instance p1, Ltv/emby/embyatv/ui/FilterSelector;

    iget-object v2, p0, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v2}, Ltv/emby/embyatv/ui/FilterPopup;->access$200(Ltv/emby/embyatv/ui/FilterPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    const-string v3, "studioIds"

    new-instance v4, Ltv/emby/embyatv/ui/FilterPopup$8$1;

    invoke-direct {v4, p0}, Ltv/emby/embyatv/ui/FilterPopup$8$1;-><init>(Ltv/emby/embyatv/ui/FilterPopup$8;)V

    invoke-direct {p1, v2, v3, v0, v4}, Ltv/emby/embyatv/ui/FilterSelector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 178
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/FilterPopup;->access$300(Ltv/emby/embyatv/ui/FilterPopup;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v3}, Ltv/emby/embyatv/ui/FilterPopup;->access$200(Ltv/emby/embyatv/ui/FilterPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v4}, Ltv/emby/embyatv/ui/FilterPopup;->access$200(Ltv/emby/embyatv/ui/FilterPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v4

    const/16 v5, 0x50

    invoke-static {v4, v5}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/FilterPopup;->access$100(Ltv/emby/embyatv/ui/FilterPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "** No studios found - not showing filter option"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :goto_1
    new-instance p1, Lmediabrowser/model/querying/ItemsByNameQuery;

    invoke-direct {p1}, Lmediabrowser/model/querying/ItemsByNameQuery;-><init>()V

    .line 185
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup$8;->val$parentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemsByNameQuery;->setParentId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 186
    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemsByNameQuery;->setRecursive(Z)V

    .line 187
    invoke-virtual {p1, v1}, Lmediabrowser/model/querying/ItemsByNameQuery;->setEnableTotalRecordCount(Z)V

    .line 188
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemsByNameQuery;->setEnableImages(Ljava/lang/Boolean;)V

    const-string v0, "SortName"

    .line 189
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemsByNameQuery;->setSortBy([Ljava/lang/String;)V

    const-string v0, "movie"

    const-string v1, "video"

    const-string v2, "series"

    .line 190
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemsByNameQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/querying/ItemsByNameQuery;->setUserId(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/FilterPopup$8$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/FilterPopup$8$2;-><init>(Ltv/emby/embyatv/ui/FilterPopup$8;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetTagsAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
