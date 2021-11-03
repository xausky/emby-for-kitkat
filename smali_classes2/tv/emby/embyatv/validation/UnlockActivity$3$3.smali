.class Ltv/emby/embyatv/validation/UnlockActivity$3$3;
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

.field final synthetic val$monthlyProduct:Ltv/emby/iap/InAppProduct;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/UnlockActivity$3;Ltv/emby/iap/InAppProduct;)V
    .locals 0

    .line 139
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iput-object p2, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->val$monthlyProduct:Ltv/emby/iap/InAppProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 143
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$3;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v1, 0x7f100629

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/validation/UnlockActivity$3$3$1;-><init>(Ltv/emby/embyatv/validation/UnlockActivity$3$3;)V

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->access$100(Ltv/emby/embyatv/validation/UnlockActivity;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
