.class Ltv/emby/iap/PurchaseActivity$1$1;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/PurchaseActivity$1;->onIabSetupFinished(Ltv/emby/iap/billing/IabResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/iap/PurchaseActivity$1;


# direct methods
.method constructor <init>(Ltv/emby/iap/PurchaseActivity$1;)V
    .locals 0

    .line 45
    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity$1$1;->this$1:Ltv/emby/iap/PurchaseActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V
    .locals 1

    .line 48
    iget-object v0, p0, Ltv/emby/iap/PurchaseActivity$1$1;->this$1:Ltv/emby/iap/PurchaseActivity$1;

    iget-object v0, v0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {v0, p1, p2}, Ltv/emby/iap/PurchaseActivity;->access$300(Ltv/emby/iap/PurchaseActivity;Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    return-void
.end method
