.class public Ltv/emby/iap/billing/Inventory;
.super Ljava/lang/Object;
.source "Inventory.java"


# instance fields
.field mPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltv/emby/iap/billing/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field mSkuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltv/emby/iap/billing/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/emby/iap/billing/Inventory;->mSkuMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/emby/iap/billing/Inventory;->mPurchaseMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method addPurchase(Ltv/emby/iap/billing/Purchase;)V
    .locals 2

    .line 94
    iget-object v0, p0, Ltv/emby/iap/billing/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-virtual {p1}, Ltv/emby/iap/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addSkuDetails(Ltv/emby/iap/billing/SkuDetails;)V
    .locals 2

    .line 90
    iget-object v0, p0, Ltv/emby/iap/billing/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-virtual {p1}, Ltv/emby/iap/billing/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public erasePurchase(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Ltv/emby/iap/billing/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/iap/billing/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method getAllOwnedSkus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltv/emby/iap/billing/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v1, p0, Ltv/emby/iap/billing/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/billing/Purchase;

    .line 74
    invoke-virtual {v2}, Ltv/emby/iap/billing/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ltv/emby/iap/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllProducts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/iap/billing/SkuDetails;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltv/emby/iap/billing/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllPurchases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/iap/billing/Purchase;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltv/emby/iap/billing/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPurchase(Ljava/lang/String;)Ltv/emby/iap/billing/Purchase;
    .locals 1

    .line 40
    iget-object v0, p0, Ltv/emby/iap/billing/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/emby/iap/billing/Purchase;

    return-object p1
.end method

.method public getSkuDetails(Ljava/lang/String;)Ltv/emby/iap/billing/SkuDetails;
    .locals 1

    .line 35
    iget-object v0, p0, Ltv/emby/iap/billing/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/emby/iap/billing/SkuDetails;

    return-object p1
.end method

.method public hasDetails(Ljava/lang/String;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Ltv/emby/iap/billing/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasPurchase(Ljava/lang/String;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Ltv/emby/iap/billing/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
