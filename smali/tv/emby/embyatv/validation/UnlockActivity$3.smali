.class Ltv/emby/embyatv/validation/UnlockActivity$3;
.super Ljava/lang/Object;
.source "UnlockActivity.java"

# interfaces
.implements Ltv/emby/iap/IResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/UnlockActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/validation/UnlockActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/UnlockActivity;Landroid/app/Activity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iput-object p2, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V
    .locals 0

    .line 184
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p3}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Ltv/emby/iap/ResultType;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity$3;->onResult(Ltv/emby/iap/ResultType;)V

    return-void
.end method

.method public onResult(Ltv/emby/iap/ResultType;)V
    .locals 4

    .line 88
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v0, 0x7f0a0082

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/validation/UnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->isPaid()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Ltv/emby/embyatv/validation/UnlockActivity$3$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/validation/UnlockActivity$3$1;-><init>(Ltv/emby/embyatv/validation/UnlockActivity$3;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v1, Ltv/emby/embyatv/validation/UnlockActivity$3$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/validation/UnlockActivity$3$2;-><init>(Ltv/emby/embyatv/validation/UnlockActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 126
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v1, 0x7f0a02eb

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100600

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v1, 0x7f0a02f6

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v1, 0x7f0a02f7

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_1

    .line 137
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    iget-object p1, p1, Ltv/emby/embyatv/validation/UnlockActivity;->validator:Ltv/emby/iap/IabValidator;

    invoke-virtual {p1}, Ltv/emby/iap/IabValidator;->getPremiereMonthly()Ltv/emby/iap/InAppProduct;

    move-result-object p1

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v3, 0x7f1003bc

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/validation/UnlockActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/validation/UnlockActivity$3;->this$0:Ltv/emby/embyatv/validation/UnlockActivity;

    const v3, 0x7f1003bd

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/validation/UnlockActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v1, Ltv/emby/embyatv/validation/UnlockActivity$3$3;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity$3$3;-><init>(Ltv/emby/embyatv/validation/UnlockActivity$3;Ltv/emby/iap/InAppProduct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :goto_1
    return-void
.end method
