.class Ltv/emby/embyatv/details/FullDetailsActivity$42;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1778
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1781
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    .line 1782
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1783
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    .line 1784
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f10050c

    goto :goto_0

    :cond_0
    const v2, 0x7f10050b

    :goto_0
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    .line 1785
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f100473

    goto :goto_1

    :cond_1
    const v2, 0x7f100474

    :goto_1
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v2, 0x7f100526

    .line 1786
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/FullDetailsActivity$42$2;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$42$2;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$42;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v2, 0x7f100617

    .line 1791
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/FullDetailsActivity$42$1;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$42$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$42;Lmediabrowser/model/dto/UserItemDataDto;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1796
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 1799
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1800
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$4200(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    goto :goto_2

    .line 1802
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$4300(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    :goto_2
    return-void
.end method
