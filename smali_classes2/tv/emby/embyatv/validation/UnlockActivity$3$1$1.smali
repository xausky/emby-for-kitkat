.class Ltv/emby/embyatv/validation/UnlockActivity$3$1$1;
.super Ljava/lang/Object;
.source "UnlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/UnlockActivity$3$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/UnlockActivity$3$1;)V
    .locals 0

    .line 105
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 107
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$1;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iget-object p2, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1$1;->this$2:Ltv/emby/embyatv/validation/UnlockActivity$3$1;

    iget-object p2, p2, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object p2, p2, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iget-object p2, p2, Ltv/emby/embyatv/validation/UnlockActivity;->validator:Ltv/emby/iap/IabValidator;

    invoke-virtual {p2}, Ltv/emby/iap/IabValidator;->getUnlockProduct()Ltv/emby/iap/InAppProduct;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/validation/UnlockActivity;->access$000(Ltv/emby/embyatv/validation/UnlockActivity;Ltv/emby/iap/InAppProduct;)V

    return-void
.end method
