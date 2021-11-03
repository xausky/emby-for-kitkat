.class public Ltv/emby/iap/IabValidator;
.super Ljava/lang/Object;
.source "IabValidator.java"


# instance fields
.field private context:Landroid/content/Context;

.field private disposed:Z

.field private iabHelper:Ltv/emby/iap/billing/IabHelper;

.field private initialized:Z

.field mPurchaseCheckListener:Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;

.field private message:Ljava/lang/String;

.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/iap/InAppProduct;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseCheckHandler:Ltv/emby/iap/IResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;"
        }
    .end annotation
.end field

.field private sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ltv/emby/iap/ILogger;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ltv/emby/iap/IabValidator$2;

    invoke-direct {v0, p0}, Ltv/emby/iap/IabValidator$2;-><init>(Ltv/emby/iap/IabValidator;)V

    iput-object v0, p0, Ltv/emby/iap/IabValidator;->mPurchaseCheckListener:Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;

    .line 29
    iput-object p1, p0, Ltv/emby/iap/IabValidator;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Ltv/emby/iap/billing/IabHelper;

    invoke-direct {v0, p1, p2, p3}, Ltv/emby/iap/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ltv/emby/iap/ILogger;)V

    iput-object v0, p0, Ltv/emby/iap/IabValidator;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/iap/IabValidator;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Ltv/emby/iap/IabValidator;->initialized:Z

    return p0
.end method

.method static synthetic access$002(Ltv/emby/iap/IabValidator;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Ltv/emby/iap/IabValidator;->initialized:Z

    return p1
.end method

.method static synthetic access$100(Ltv/emby/iap/IabValidator;Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ltv/emby/iap/IabValidator;->checkPurchaseInternal(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    return-void
.end method

.method static synthetic access$200(Ltv/emby/iap/IabValidator;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ltv/emby/iap/IabValidator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Ltv/emby/iap/IabValidator;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ltv/emby/iap/IabValidator;)Ltv/emby/iap/IResultHandler;
    .locals 0

    .line 17
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->purchaseCheckHandler:Ltv/emby/iap/IResultHandler;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/iap/IabValidator;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->sku:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ltv/emby/iap/IabValidator;->getProductsInternal(Ltv/emby/iap/IResultHandler;)V

    return-void
.end method

.method static synthetic access$600(Ltv/emby/iap/IabValidator;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Ltv/emby/iap/IabValidator;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 17
    iput-object p1, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    return-object p1
.end method

.method private checkPurchaseInternal(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Ltv/emby/iap/IabValidator;->sku:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Ltv/emby/iap/IabValidator;->purchaseCheckHandler:Ltv/emby/iap/IResultHandler;

    .line 60
    iget-object p1, p0, Ltv/emby/iap/IabValidator;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    iget-object p2, p0, Ltv/emby/iap/IabValidator;->mPurchaseCheckListener:Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {p1, p2}, Ltv/emby/iap/billing/IabHelper;->queryInventoryAsync(Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method private getProductsInternal(Ltv/emby/iap/IResultHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    iget-object v1, p0, Ltv/emby/iap/IabValidator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/iap/InAppProduct;->getCurrentSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ltv/emby/iap/IabValidator$4;

    invoke-direct {v2, p0, p1}, Ltv/emby/iap/IabValidator$4;-><init>(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ltv/emby/iap/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method


# virtual methods
.method public checkInAppPurchase(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-boolean v0, p0, Ltv/emby/iap/IabValidator;->initialized:Z

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    new-instance v1, Ltv/emby/iap/IabValidator$1;

    invoke-direct {v1, p0, p1, p2}, Ltv/emby/iap/IabValidator$1;-><init>(Ltv/emby/iap/IabValidator;Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    invoke-virtual {v0, v1}, Ltv/emby/iap/billing/IabHelper;->startSetup(Ltv/emby/iap/billing/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0, p1, p2}, Ltv/emby/iap/IabValidator;->checkPurchaseInternal(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 166
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/iap/IabValidator;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    invoke-virtual {v0}, Ltv/emby/iap/billing/IabHelper;->dispose()V

    :cond_0
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Ltv/emby/iap/IabValidator;->disposed:Z

    return-void
.end method

.method public getPremiereLifetime()Ltv/emby/iap/InAppProduct;
    .locals 5

    .line 146
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 148
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/InAppProduct;

    .line 149
    invoke-virtual {v2}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/iap/IabValidator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltv/emby/iap/InAppProduct;->getCurrentLifetimeSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getPremiereMonthly()Ltv/emby/iap/InAppProduct;
    .locals 5

    .line 126
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 128
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/InAppProduct;

    .line 129
    invoke-virtual {v2}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/iap/IabValidator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltv/emby/iap/InAppProduct;->getCurrentMonthlySku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getPremiereWeekly()Ltv/emby/iap/InAppProduct;
    .locals 5

    .line 136
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 138
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/InAppProduct;

    .line 139
    invoke-virtual {v2}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/iap/IabValidator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltv/emby/iap/InAppProduct;->getCurrentWeeklySku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getUnlockProduct()Ltv/emby/iap/InAppProduct;
    .locals 5

    .line 156
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 158
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/InAppProduct;

    .line 159
    invoke-virtual {v2}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/iap/IabValidator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public isDisposed()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Ltv/emby/iap/IabValidator;->disposed:Z

    return v0
.end method

.method public productsInitialized()Z
    .locals 1

    .line 123
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validateProductsAsync(Ltv/emby/iap/IResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    invoke-interface {p1, v0}, Ltv/emby/iap/IResultHandler;->onResult(Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Ltv/emby/iap/IabValidator;->initialized:Z

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    new-instance v1, Ltv/emby/iap/IabValidator$3;

    invoke-direct {v1, p0, p1}, Ltv/emby/iap/IabValidator$3;-><init>(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V

    invoke-virtual {v0, v1}, Ltv/emby/iap/billing/IabHelper;->startSetup(Ltv/emby/iap/billing/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Ltv/emby/iap/IabValidator;->getProductsInternal(Ltv/emby/iap/IResultHandler;)V

    :goto_0
    return-void
.end method
