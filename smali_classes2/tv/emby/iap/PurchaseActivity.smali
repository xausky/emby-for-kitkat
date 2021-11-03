.class public Ltv/emby/iap/PurchaseActivity;
.super Landroid/app/Activity;
.source "PurchaseActivity.java"


# static fields
.field public static Logger:Ltv/emby/iap/ILogger;


# instance fields
.field private activity:Landroid/app/Activity;

.field private check:Ljava/lang/String;

.field private iabHelper:Ltv/emby/iap/billing/IabHelper;

.field private sku:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ltv/emby/iap/LogcatLogger;

    invoke-direct {v0}, Ltv/emby/iap/LogcatLogger;-><init>()V

    sput-object v0, Ltv/emby/iap/PurchaseActivity;->Logger:Ltv/emby/iap/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/emby/iap/PurchaseActivity;->check:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Ltv/emby/iap/PurchaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity;->check:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/emby/iap/PurchaseActivity;->sku:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/emby/iap/PurchaseActivity;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/iap/PurchaseActivity;Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Ltv/emby/iap/PurchaseActivity;->processPurchaseResult(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    return-void
.end method

.method static synthetic access$400(Ltv/emby/iap/PurchaseActivity;)Ltv/emby/iap/billing/IabHelper;
    .locals 0

    .line 14
    iget-object p0, p0, Ltv/emby/iap/PurchaseActivity;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    return-object p0
.end method

.method private processPurchaseResult(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "-1005"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 69
    invoke-virtual {p0}, Ltv/emby/iap/PurchaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error completing purchase. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Ltv/emby/iap/PurchaseActivity;->setResult(I)V

    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "storeToken"

    .line 75
    invoke-virtual {p2}, Ltv/emby/iap/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "store"

    const-string v0, "Google"

    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 77
    invoke-virtual {p0, p2, p1}, Ltv/emby/iap/PurchaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    :goto_0
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 85
    iget-object v0, p0, Ltv/emby/iap/PurchaseActivity;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/PurchaseActivity;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Ltv/emby/iap/billing/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Ltv/emby/iap/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "googleKey"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sku"

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity;->sku:Ljava/lang/String;

    .line 31
    iput-object p0, p0, Ltv/emby/iap/PurchaseActivity;->activity:Landroid/app/Activity;

    .line 32
    new-instance p1, Ltv/emby/iap/billing/IabHelper;

    sget-object v1, Ltv/emby/iap/PurchaseActivity;->Logger:Ltv/emby/iap/ILogger;

    invoke-direct {p1, p0, v0, v1}, Ltv/emby/iap/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ltv/emby/iap/ILogger;)V

    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    .line 34
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    new-instance v0, Ltv/emby/iap/PurchaseActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/iap/PurchaseActivity$1;-><init>(Ltv/emby/iap/PurchaseActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/iap/billing/IabHelper;->startSetup(Ltv/emby/iap/billing/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 97
    iget-object v0, p0, Ltv/emby/iap/PurchaseActivity;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ltv/emby/iap/PurchaseActivity;->iabHelper:Ltv/emby/iap/billing/IabHelper;

    invoke-virtual {v0}, Ltv/emby/iap/billing/IabHelper;->dispose()V

    .line 100
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
