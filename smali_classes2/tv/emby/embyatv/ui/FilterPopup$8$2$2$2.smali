.class Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;
.super Lmediabrowser/apiinteraction/Response;
.source "FilterPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/FilterPopup$8$2$2;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V
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
.field final synthetic this$3:Ltv/emby/embyatv/ui/FilterPopup$8$2$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FilterPopup$8$2$2;)V
    .locals 0

    .line 248
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;->this$3:Ltv/emby/embyatv/ui/FilterPopup$8$2$2;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 6

    .line 251
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 254
    new-instance v4, Lmediabrowser/model/dto/NameValuePair;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    new-instance p1, Ltv/emby/embyatv/ui/FilterSelector;

    iget-object v1, p0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;->this$3:Ltv/emby/embyatv/ui/FilterPopup$8$2$2;

    iget-object v1, v1, Ltv/emby/embyatv/ui/FilterPopup$8$2$2;->this$2:Ltv/emby/embyatv/ui/FilterPopup$8$2;

    iget-object v1, v1, Ltv/emby/embyatv/ui/FilterPopup$8$2;->this$1:Ltv/emby/embyatv/ui/FilterPopup$8;

    iget-object v1, v1, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v1}, Ltv/emby/embyatv/ui/FilterPopup;->access$200(Ltv/emby/embyatv/ui/FilterPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    const-string v2, "years"

    new-instance v3, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2$1;-><init>(Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;)V

    invoke-direct {p1, v1, v2, v0, v3}, Ltv/emby/embyatv/ui/FilterSelector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 262
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;->this$3:Ltv/emby/embyatv/ui/FilterPopup$8$2$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2;->this$2:Ltv/emby/embyatv/ui/FilterPopup$8$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8$2;->this$1:Ltv/emby/embyatv/ui/FilterPopup$8;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/FilterPopup;->access$300(Ltv/emby/embyatv/ui/FilterPopup;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;->this$3:Ltv/emby/embyatv/ui/FilterPopup$8$2$2;

    iget-object v2, v2, Ltv/emby/embyatv/ui/FilterPopup$8$2$2;->this$2:Ltv/emby/embyatv/ui/FilterPopup$8$2;

    iget-object v2, v2, Ltv/emby/embyatv/ui/FilterPopup$8$2;->this$1:Ltv/emby/embyatv/ui/FilterPopup$8;

    iget-object v2, v2, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v2}, Ltv/emby/embyatv/ui/FilterPopup;->access$200(Ltv/emby/embyatv/ui/FilterPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;->this$3:Ltv/emby/embyatv/ui/FilterPopup$8$2$2;

    iget-object v3, v3, Ltv/emby/embyatv/ui/FilterPopup$8$2$2;->this$2:Ltv/emby/embyatv/ui/FilterPopup$8$2;

    iget-object v3, v3, Ltv/emby/embyatv/ui/FilterPopup$8$2;->this$1:Ltv/emby/embyatv/ui/FilterPopup$8;

    iget-object v3, v3, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v3}, Ltv/emby/embyatv/ui/FilterPopup;->access$200(Ltv/emby/embyatv/ui/FilterPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v3

    const/16 v4, 0x50

    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2$2;->this$3:Ltv/emby/embyatv/ui/FilterPopup$8$2$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8$2$2;->this$2:Ltv/emby/embyatv/ui/FilterPopup$8$2;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8$2;->this$1:Ltv/emby/embyatv/ui/FilterPopup$8;

    iget-object v0, v0, Ltv/emby/embyatv/ui/FilterPopup$8;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/FilterPopup;->access$100(Ltv/emby/embyatv/ui/FilterPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "** No years found - not showing filter option"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
