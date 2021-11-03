.class Ltv/emby/iap/IabValidator$1;
.super Ljava/lang/Object;
.source "IabValidator.java"

# interfaces
.implements Ltv/emby/iap/billing/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/IabValidator;->checkInAppPurchase(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/IabValidator;

.field final synthetic val$resultHandler:Ltv/emby/iap/IResultHandler;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/iap/IabValidator;Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 37
    iput-object p1, p0, Ltv/emby/iap/IabValidator$1;->this$0:Ltv/emby/iap/IabValidator;

    iput-object p2, p0, Ltv/emby/iap/IabValidator$1;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Ltv/emby/iap/IabValidator$1;->val$resultHandler:Ltv/emby/iap/IResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Ltv/emby/iap/billing/IabResult;)V
    .locals 3

    .line 40
    iget-object v0, p0, Ltv/emby/iap/IabValidator$1;->this$0:Ltv/emby/iap/IabValidator;

    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->isSuccess()Z

    move-result v1

    invoke-static {v0, v1}, Ltv/emby/iap/IabValidator;->access$002(Ltv/emby/iap/IabValidator;Z)Z

    .line 41
    iget-object v0, p0, Ltv/emby/iap/IabValidator$1;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$000(Ltv/emby/iap/IabValidator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object p1, p0, Ltv/emby/iap/IabValidator$1;->this$0:Ltv/emby/iap/IabValidator;

    iget-object v0, p0, Ltv/emby/iap/IabValidator$1;->val$sku:Ljava/lang/String;

    iget-object v1, p0, Ltv/emby/iap/IabValidator$1;->val$resultHandler:Ltv/emby/iap/IResultHandler;

    invoke-static {p1, v0, v1}, Ltv/emby/iap/IabValidator;->access$100(Ltv/emby/iap/IabValidator;Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator$1;->this$0:Ltv/emby/iap/IabValidator;

    invoke-virtual {p1}, Ltv/emby/iap/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/iap/IabValidator;->access$202(Ltv/emby/iap/IabValidator;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    iget-object p1, p0, Ltv/emby/iap/IabValidator$1;->val$resultHandler:Ltv/emby/iap/IResultHandler;

    sget-object v0, Ltv/emby/iap/ErrorSeverity;->Critical:Ltv/emby/iap/ErrorSeverity;

    sget-object v1, Ltv/emby/iap/ErrorType;->UnableToConnectToStore:Ltv/emby/iap/ErrorType;

    iget-object v2, p0, Ltv/emby/iap/IabValidator$1;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v2}, Ltv/emby/iap/IabValidator;->access$200(Ltv/emby/iap/IabValidator;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Ltv/emby/iap/IResultHandler;->onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
