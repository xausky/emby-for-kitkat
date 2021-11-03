.class Ltv/emby/embyatv/ui/EditSubPopup$4;
.super Ljava/lang/Object;
.source "EditSubPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/EditSubPopup;->showInternal(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/EditSubPopup;

.field final synthetic val$ndx:Ljava/lang/Integer;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/EditSubPopup;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 220
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$4;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    iput-object p2, p0, Ltv/emby/embyatv/ui/EditSubPopup$4;->val$title:Ljava/lang/String;

    iput-object p3, p0, Ltv/emby/embyatv/ui/EditSubPopup$4;->val$ndx:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltv/emby/embyatv/ui/EditSubPopup$4;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100486

    .line 224
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/ui/EditSubPopup$4;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    .line 225
    invoke-static {v2}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    const v3, 0x7f10063c

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ltv/emby/embyatv/ui/EditSubPopup$4;->val$title:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ltv/emby/embyatv/ui/EditSubPopup$4$1;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/ui/EditSubPopup$4$1;-><init>(Ltv/emby/embyatv/ui/EditSubPopup$4;Landroid/view/View;)V

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100050

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
