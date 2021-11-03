.class Ltv/emby/iap/IabValidator$2;
.super Ljava/lang/Object;
.source "IabValidator.java"

# interfaces
.implements Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/iap/IabValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/IabValidator;


# direct methods
.method constructor <init>(Ltv/emby/iap/IabValidator;)V
    .locals 0

    .line 64
    iput-object p1, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Inventory;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object p2, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {p2}, Ltv/emby/iap/IabValidator;->access$300(Ltv/emby/iap/IabValidator;)Ltv/emby/iap/IResultHandler;

    move-result-object p2

    sget-object v0, Ltv/emby/iap/ErrorSeverity;->Critical:Ltv/emby/iap/ErrorSeverity;

    sget-object v1, Ltv/emby/iap/ErrorType;->UnableToValidatePurchase:Ltv/emby/iap/ErrorType;

    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Ltv/emby/iap/IResultHandler;->onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_0
    iget-object p1, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {p1}, Ltv/emby/iap/IabValidator;->access$300(Ltv/emby/iap/IabValidator;)Ltv/emby/iap/IResultHandler;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$400(Ltv/emby/iap/IabValidator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ltv/emby/iap/billing/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    goto :goto_0

    :cond_1
    sget-object p2, Ltv/emby/iap/ResultType;->Failure:Ltv/emby/iap/ResultType;

    :goto_0
    invoke-interface {p1, p2}, Ltv/emby/iap/IResultHandler;->onResult(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
