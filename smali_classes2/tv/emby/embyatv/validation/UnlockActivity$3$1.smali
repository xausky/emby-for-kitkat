.class Ltv/emby/embyatv/validation/UnlockActivity$3$1;
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

    .line 94
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 97
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    const v1, 0x7f1005ff

    .line 99
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    const v1, 0x7f100636

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    const v1, 0x7f100464

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/validation/UnlockActivity$3$1$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/validation/UnlockActivity$3$1$2;-><init>(Ltv/emby/embyatv/validation/UnlockActivity$3$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    const v1, 0x7f100600

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/validation/UnlockActivity$3$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/validation/UnlockActivity$3$1$1;-><init>(Ltv/emby/embyatv/validation/UnlockActivity$3$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3$1;->this$1:Ltv/emby/embyatv/validation/UnlockActivity$3;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iget-object v0, v0, Ltv/emby/embyatv/validation/UnlockActivity;->validator:Ltv/emby/iap/IabValidator;

    invoke-virtual {v0}, Ltv/emby/iap/IabValidator;->getUnlockProduct()Ltv/emby/iap/InAppProduct;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/validation/UnlockActivity;->access$000(Ltv/emby/embyatv/validation/UnlockActivity;Ltv/emby/iap/InAppProduct;)V

    :goto_0
    return-void
.end method
