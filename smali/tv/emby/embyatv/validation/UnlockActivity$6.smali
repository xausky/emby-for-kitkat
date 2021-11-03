.class Ltv/emby/embyatv/validation/UnlockActivity$6;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "UnlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/UnlockActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/validation/UnlockActivity;

.field final synthetic val$processing:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/UnlockActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 259
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$6;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iput-object p2, p0, Ltv/emby/embyatv/validation/UnlockActivity$6;->val$processing:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 271
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$6;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/validation/UnlockActivity;->handleRegError(Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$6;->val$processing:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onResponse()V
    .locals 3

    .line 262
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully purchased "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/validation/UnlockActivity$6;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iget-object v2, v2, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {v2}, Ltv/emby/iap/InAppProduct;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getAppValidator()Ltv/emby/embyatv/validation/AppValidator;

    move-result-object v0

    new-instance v1, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/AppValidator;->validate(Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 264
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$6;->val$processing:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 265
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$6;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/validation/UnlockActivity;->finish()V

    return-void
.end method
