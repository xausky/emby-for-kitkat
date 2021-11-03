.class Ltv/emby/embyatv/validation/UnlockActivity$3$2;
.super Ljava/lang/Object;
.source "UnlockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/UnlockActivity$3;->onResult(Ltv/emby/iap/ResultType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/UnlockActivity$3;)V
    .locals 0

    .line 116
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$2;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 119
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getAppValidator()Ltv/emby/embyatv/validation/AppValidator;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/validation/AppValidator;->checkPurchase(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$2;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/validation/UnlockActivity;->finish()V

    return-void
.end method
