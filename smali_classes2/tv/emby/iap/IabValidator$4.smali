.class Ltv/emby/iap/IabValidator$4;
.super Ljava/lang/Object;
.source "IabValidator.java"

# interfaces
.implements Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/IabValidator;->getProductsInternal(Ltv/emby/iap/IResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/IabValidator;

.field final synthetic val$handler:Ltv/emby/iap/IResultHandler;


# direct methods
.method constructor <init>(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/iap/IabValidator$4;->this$0:Ltv/emby/iap/IabValidator;

    iput-object p2, p0, Ltv/emby/iap/IabValidator$4;->val$handler:Ltv/emby/iap/IResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Inventory;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object p2, p0, Ltv/emby/iap/IabValidator$4;->val$handler:Ltv/emby/iap/IResultHandler;

    sget-object v0, Ltv/emby/iap/ErrorSeverity;->Critical:Ltv/emby/iap/ErrorSeverity;

    sget-object v1, Ltv/emby/iap/ErrorType;->General:Ltv/emby/iap/ErrorType;

    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Ltv/emby/iap/IResultHandler;->onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_0
    iget-object p1, p0, Ltv/emby/iap/IabValidator$4;->this$0:Ltv/emby/iap/IabValidator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Ltv/emby/iap/IabValidator;->access$602(Ltv/emby/iap/IabValidator;Ljava/util/List;)Ljava/util/List;

    .line 112
    invoke-virtual {p2}, Ltv/emby/iap/billing/Inventory;->getAllProducts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltv/emby/iap/billing/SkuDetails;

    .line 113
    invoke-virtual {p2}, Ltv/emby/iap/billing/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/iap/IabValidator$4;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$600(Ltv/emby/iap/IabValidator;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ltv/emby/iap/InAppProduct;

    invoke-direct {v1, p2}, Ltv/emby/iap/InAppProduct;-><init>(Ltv/emby/iap/billing/SkuDetails;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Ltv/emby/iap/IabValidator$4;->val$handler:Ltv/emby/iap/IResultHandler;

    sget-object p2, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    invoke-interface {p1, p2}, Ltv/emby/iap/IResultHandler;->onResult(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
