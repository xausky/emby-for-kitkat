.class Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve(Ltv/emby/embyatv/querying/TrailersQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

.field final synthetic val$query:Ltv/emby/embyatv/querying/TrailersQuery;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Ltv/emby/embyatv/querying/TrailersQuery;)V
    .locals 0

    .line 1885
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->val$query:Ltv/emby/embyatv/querying/TrailersQuery;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1925
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retrieving trailers"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1926
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1927
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1928
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1885
    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->onResponse([Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 12

    .line 1889
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    .line 1890
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 1891
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v5, p1, v2

    .line 1892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    const v7, 0x7f1005f6

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 1893
    iget-object v10, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v11, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$1700(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)Z

    move-result v6

    const/4 v7, 0x0

    sget-object v8, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->Play:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;)V

    invoke-virtual {v10, v11}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move v4, v9

    goto :goto_0

    .line 1895
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    array-length p1, p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$102(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    .line 1896
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$200(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setItemsLoaded(I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 1900
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->val$query:Ltv/emby/embyatv/querying/TrailersQuery;

    invoke-virtual {p1}, Ltv/emby/embyatv/querying/TrailersQuery;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRemoteTrailers()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1902
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->val$query:Ltv/emby/embyatv/querying/TrailersQuery;

    invoke-virtual {p1}, Ltv/emby/embyatv/querying/TrailersQuery;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRemoteTrailers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_2
    move v6, v4

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/entities/MediaUrl;

    .line 1904
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "youtube"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1905
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->getYouTubeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1907
    new-instance v7, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v7}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    .line 1908
    invoke-virtual {v7, v3}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    const-string v3, "YtTrailer"

    .line 1909
    invoke-virtual {v7, v3}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lmediabrowser/model/dto/BaseItemDto;->setPath(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaUrl;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Trailer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v3

    :goto_3
    invoke-virtual {v7, v2}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 1912
    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->val$adapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v3, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    add-int/lit8 v4, v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->Play:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;)V

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    move v4, v6

    :cond_6
    if-nez v4, :cond_7

    .line 1918
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->removeRow()V

    .line 1920
    :cond_7
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$26;->this$0:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-static {p1, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->access$902(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Z)Z

    return-void
.end method
