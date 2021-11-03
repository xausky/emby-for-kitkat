.class public Ltv/emby/iap/InAppProduct;
.super Ljava/lang/Object;
.source "InAppProduct.java"


# static fields
.field private static LifetimeSubscriptionSkus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MonthlySubscriptionSkus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static UnlockSkus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static WeeklySubscriptionSkus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private embyFeatureCode:Ljava/lang/String;

.field private period:Ltv/emby/iap/SubscriptionPeriod;

.field private price:Ljava/lang/String;

.field private productType:Ltv/emby/iap/ProductType;

.field private sku:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/emby/iap/InAppProduct;->MonthlySubscriptionSkus:Ljava/util/HashMap;

    .line 23
    sget-object v0, Ltv/emby/iap/InAppProduct;->MonthlySubscriptionSkus:Ljava/util/HashMap;

    const-string v1, "com.mb.android"

    const-string v2, "emby.supporter.monthly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Ltv/emby/iap/InAppProduct;->MonthlySubscriptionSkus:Ljava/util/HashMap;

    const-string v1, "tv.emby.embyatv"

    const-string v2, "emby.supporter.atv.monthly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Ltv/emby/iap/InAppProduct;->MonthlySubscriptionSkus:Ljava/util/HashMap;

    const-string v1, "com.emby.mobile"

    const-string v2, "emby.supporter.mobile.monthly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/emby/iap/InAppProduct;->WeeklySubscriptionSkus:Ljava/util/HashMap;

    .line 29
    sget-object v0, Ltv/emby/iap/InAppProduct;->WeeklySubscriptionSkus:Ljava/util/HashMap;

    const-string v1, "com.mb.android"

    const-string v2, "emby.supporter.weekly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Ltv/emby/iap/InAppProduct;->WeeklySubscriptionSkus:Ljava/util/HashMap;

    const-string v1, "tv.emby.embyatv"

    const-string v2, "emby.supporter.atv.weekly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/emby/iap/InAppProduct;->LifetimeSubscriptionSkus:Ljava/util/HashMap;

    .line 34
    sget-object v0, Ltv/emby/iap/InAppProduct;->LifetimeSubscriptionSkus:Ljava/util/HashMap;

    const-string v1, "com.mb.android"

    const-string v2, "emby.supporter.lifetime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Ltv/emby/iap/InAppProduct;->LifetimeSubscriptionSkus:Ljava/util/HashMap;

    const-string v1, "tv.emby.embyatv"

    const-string v2, "emby.supporter.atv.lifetime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/emby/iap/InAppProduct;->UnlockSkus:Ljava/util/HashMap;

    .line 39
    sget-object v0, Ltv/emby/iap/InAppProduct;->UnlockSkus:Ljava/util/HashMap;

    const-string v1, "com.mb.android.old"

    const-string v2, "com.mb.android.unlock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Ltv/emby/iap/InAppProduct;->UnlockSkus:Ljava/util/HashMap;

    const-string v1, "com.mb.android"

    const-string v2, "com.mb.android.playback"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Ltv/emby/iap/InAppProduct;->UnlockSkus:Ljava/util/HashMap;

    const-string v1, "tv.emby.embyatv.old"

    const-string v2, "tv.emby.embyatv.unlock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Ltv/emby/iap/InAppProduct;->UnlockSkus:Ljava/util/HashMap;

    const-string v1, "tv.emby.embyatv"

    const-string v2, "tv.emby.embyatv.unlock.nolive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Ltv/emby/iap/InAppProduct;->UnlockSkus:Ljava/util/HashMap;

    const-string v1, "com.emby.mobile"

    const-string v2, "com.emby.mobile.unlock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ltv/emby/iap/billing/SkuDetails;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Ltv/emby/iap/billing/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/iap/InAppProduct;->sku:Ljava/lang/String;

    .line 70
    sget-object v0, Ltv/emby/iap/InAppProduct;->MonthlySubscriptionSkus:Ljava/util/HashMap;

    iget-object v1, p0, Ltv/emby/iap/InAppProduct;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MBSClubMonthly"

    .line 71
    iput-object v0, p0, Ltv/emby/iap/InAppProduct;->embyFeatureCode:Ljava/lang/String;

    .line 72
    sget-object v0, Ltv/emby/iap/SubscriptionPeriod;->Monthly:Ltv/emby/iap/SubscriptionPeriod;

    iput-object v0, p0, Ltv/emby/iap/InAppProduct;->period:Ltv/emby/iap/SubscriptionPeriod;

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Ltv/emby/iap/InAppProduct;->WeeklySubscriptionSkus:Ljava/util/HashMap;

    iget-object v1, p0, Ltv/emby/iap/InAppProduct;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MBSClubWeekly"

    .line 74
    iput-object v0, p0, Ltv/emby/iap/InAppProduct;->embyFeatureCode:Ljava/lang/String;

    .line 75
    sget-object v0, Ltv/emby/iap/SubscriptionPeriod;->Weekly:Ltv/emby/iap/SubscriptionPeriod;

    iput-object v0, p0, Ltv/emby/iap/InAppProduct;->period:Ltv/emby/iap/SubscriptionPeriod;

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Ltv/emby/iap/InAppProduct;->LifetimeSubscriptionSkus:Ljava/util/HashMap;

    iget-object v1, p0, Ltv/emby/iap/InAppProduct;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MBSupporter"

    .line 77
    iput-object v0, p0, Ltv/emby/iap/InAppProduct;->embyFeatureCode:Ljava/lang/String;

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ltv/emby/iap/billing/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ltv/emby/iap/ProductType;->Subscription:Ltv/emby/iap/ProductType;

    goto :goto_1

    :cond_3
    sget-object v0, Ltv/emby/iap/ProductType;->Product:Ltv/emby/iap/ProductType;

    :goto_1
    iput-object v0, p0, Ltv/emby/iap/InAppProduct;->productType:Ltv/emby/iap/ProductType;

    .line 80
    invoke-virtual {p1}, Ltv/emby/iap/billing/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/iap/InAppProduct;->title:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ltv/emby/iap/billing/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/iap/InAppProduct;->description:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Ltv/emby/iap/billing/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/iap/InAppProduct;->price:Ljava/lang/String;

    return-void
.end method

.method public static getCurrentLifetimeSku(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Ltv/emby/iap/InAppProduct;->LifetimeSubscriptionSkus:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCurrentMonthlySku(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Ltv/emby/iap/InAppProduct;->MonthlySubscriptionSkus:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCurrentSkus(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {p0}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {p0}, Ltv/emby/iap/InAppProduct;->getCurrentMonthlySku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Ltv/emby/iap/InAppProduct;->UnlockSkus:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCurrentWeeklySku(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Ltv/emby/iap/InAppProduct;->WeeklySubscriptionSkus:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isSubscription(Ljava/lang/String;)Z
    .locals 1

    .line 61
    sget-object v0, Ltv/emby/iap/InAppProduct;->WeeklySubscriptionSkus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ltv/emby/iap/InAppProduct;->MonthlySubscriptionSkus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Ltv/emby/iap/InAppProduct;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbyFeatureCode()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Ltv/emby/iap/InAppProduct;->embyFeatureCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ltv/emby/iap/SubscriptionPeriod;
    .locals 1

    .line 110
    iget-object v0, p0, Ltv/emby/iap/InAppProduct;->period:Ltv/emby/iap/SubscriptionPeriod;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Ltv/emby/iap/InAppProduct;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ltv/emby/iap/ProductType;
    .locals 1

    .line 94
    iget-object v0, p0, Ltv/emby/iap/InAppProduct;->productType:Ltv/emby/iap/ProductType;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Ltv/emby/iap/InAppProduct;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Ltv/emby/iap/InAppProduct;->title:Ljava/lang/String;

    return-object v0
.end method

.method public requiresEmail()Z
    .locals 1

    .line 65
    iget-object v0, p0, Ltv/emby/iap/InAppProduct;->embyFeatureCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
