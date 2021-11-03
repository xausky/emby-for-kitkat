.class Ltv/emby/embyatv/validation/AppValidator$5;
.super Ljava/lang/Object;
.source "AppValidator.java"

# interfaces
.implements Ltv/emby/iap/IResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/AppValidator;->checkPurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltv/emby/iap/IResultHandler<",
        "Ltv/emby/iap/ResultType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/validation/AppValidator;

.field final synthetic val$sku:Ljava/lang/String;

.field final synthetic val$validator:Ltv/emby/iap/IabValidator;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/AppValidator;Ljava/lang/String;Ltv/emby/iap/IabValidator;)V
    .locals 0

    .line 261
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$5;->this$0:Ltv/emby/embyatv/validation/AppValidator;

    iput-object p2, p0, Ltv/emby/embyatv/validation/AppValidator$5;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Ltv/emby/embyatv/validation/AppValidator$5;->val$validator:Ltv/emby/iap/IabValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V
    .locals 1

    .line 276
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error checking purchase "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$5;->val$validator:Ltv/emby/iap/IabValidator;

    invoke-virtual {p1}, Ltv/emby/iap/IabValidator;->dispose()V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 261
    check-cast p1, Ltv/emby/iap/ResultType;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/AppValidator$5;->onResult(Ltv/emby/iap/ResultType;)V

    return-void
.end method

.method public onResult(Ltv/emby/iap/ResultType;)V
    .locals 4

    .line 264
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/validation/AppValidator$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    if-ne p1, v2, :cond_0

    const-string v2, " is purchased."

    goto :goto_0

    :cond_0
    const-string v2, " is NOT purchased."

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    sget-object v1, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v1, p0, Ltv/emby/embyatv/validation/AppValidator$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ltv/emby/embyatv/TvApp;->setPaid(ZLjava/lang/String;)V

    .line 266
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    sget-object v1, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    if-ne p1, v1, :cond_2

    const-string p1, "Purchase Restored."

    goto :goto_1

    :cond_2
    const-string p1, "Unlock is not Purchased"

    :goto_1
    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$5;->val$validator:Ltv/emby/iap/IabValidator;

    invoke-virtual {p1}, Ltv/emby/iap/IabValidator;->dispose()V

    .line 268
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isPaid()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$5;->val$sku:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 270
    iget-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$5;->this$0:Ltv/emby/embyatv/validation/AppValidator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".old"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/validation/AppValidator;->checkPurchase(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
