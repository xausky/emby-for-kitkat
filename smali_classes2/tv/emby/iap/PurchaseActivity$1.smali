.class Ltv/emby/iap/PurchaseActivity$1;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Ltv/emby/iap/billing/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/PurchaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/PurchaseActivity;


# direct methods
.method constructor <init>(Ltv/emby/iap/PurchaseActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Ltv/emby/iap/billing/IabResult;)V
    .locals 6

    .line 37
    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-virtual {p1}, Ltv/emby/iap/PurchaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Error connecting to Google Play Store.  Please try later."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 40
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-virtual {p1}, Ltv/emby/iap/PurchaseActivity;->finish()V

    return-void

    .line 43
    :cond_0
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/iap/PurchaseActivity;->access$002(Ltv/emby/iap/PurchaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$100(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/iap/InAppProduct;->isSubscription(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$400(Ltv/emby/iap/PurchaseActivity;)Ltv/emby/iap/billing/IabHelper;

    move-result-object v0

    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$100(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    new-instance v4, Ltv/emby/iap/PurchaseActivity$1$1;

    invoke-direct {v4, p0}, Ltv/emby/iap/PurchaseActivity$1$1;-><init>(Ltv/emby/iap/PurchaseActivity$1;)V

    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    .line 50
    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$000(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual/range {v0 .. v5}, Ltv/emby/iap/billing/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$400(Ltv/emby/iap/PurchaseActivity;)Ltv/emby/iap/billing/IabHelper;

    move-result-object v0

    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$100(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    new-instance v4, Ltv/emby/iap/PurchaseActivity$1$2;

    invoke-direct {v4, p0}, Ltv/emby/iap/PurchaseActivity$1$2;-><init>(Ltv/emby/iap/PurchaseActivity$1;)V

    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    .line 59
    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$000(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual/range {v0 .. v5}, Ltv/emby/iap/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
