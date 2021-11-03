.class Ltv/emby/embyatv/details/ListItemAdapter$15;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/ListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;)V
    .locals 0

    .line 638
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 641
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$300(Ltv/emby/embyatv/details/ListItemAdapter;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    .line 642
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    .line 643
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    .line 645
    invoke-static {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f10050c

    goto :goto_0

    :cond_0
    const v3, 0x7f10050b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    .line 646
    invoke-static {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f100473

    goto :goto_1

    :cond_1
    const v3, 0x7f100474

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    .line 647
    invoke-static {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100526

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/details/ListItemAdapter$15$2;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/details/ListItemAdapter$15$2;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$15;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    .line 652
    invoke-static {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100617

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/details/ListItemAdapter$15$1;

    invoke-direct {v3, p0, v0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$15$1;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$15;Lmediabrowser/model/dto/UserItemDataDto;Lmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 657
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 660
    :cond_2
    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$900(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_2

    .line 663
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$15;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$1000(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    :goto_2
    return-void
.end method
