.class Ltv/emby/iap/billing/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/billing/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Ltv/emby/iap/billing/IabHelper;ZLjava/util/List;Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .line 615
    iput-object p1, p0, Ltv/emby/iap/billing/IabHelper$2;->this$0:Ltv/emby/iap/billing/IabHelper;

    iput-boolean p2, p0, Ltv/emby/iap/billing/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Ltv/emby/iap/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Ltv/emby/iap/billing/IabHelper$2;->val$listener:Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Ltv/emby/iap/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 617
    new-instance v0, Ltv/emby/iap/billing/IabResult;

    const-string v1, "Inventory refresh successful."

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 620
    :try_start_0
    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper$2;->this$0:Ltv/emby/iap/billing/IabHelper;

    iget-boolean v2, p0, Ltv/emby/iap/billing/IabHelper$2;->val$querySkuDetails:Z

    iget-object v3, p0, Ltv/emby/iap/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Ltv/emby/iap/billing/IabHelper;->queryInventory(ZLjava/util/List;)Ltv/emby/iap/billing/Inventory;

    move-result-object v1
    :try_end_0
    .catch Ltv/emby/iap/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 623
    invoke-virtual {v0}, Ltv/emby/iap/billing/IabException;->getResult()Ltv/emby/iap/billing/IabResult;

    move-result-object v0

    const/4 v1, 0x0

    .line 626
    :goto_0
    iget-object v2, p0, Ltv/emby/iap/billing/IabHelper$2;->this$0:Ltv/emby/iap/billing/IabHelper;

    invoke-virtual {v2}, Ltv/emby/iap/billing/IabHelper;->flagEndAsync()V

    .line 630
    iget-object v2, p0, Ltv/emby/iap/billing/IabHelper$2;->this$0:Ltv/emby/iap/billing/IabHelper;

    iget-boolean v2, v2, Ltv/emby/iap/billing/IabHelper;->mDisposed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Ltv/emby/iap/billing/IabHelper$2;->val$listener:Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, p0, Ltv/emby/iap/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Ltv/emby/iap/billing/IabHelper$2$1;

    invoke-direct {v3, p0, v0, v1}, Ltv/emby/iap/billing/IabHelper$2$1;-><init>(Ltv/emby/iap/billing/IabHelper$2;Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
