.class Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;
.super Ljava/lang/Object;
.source "EditSubPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/EditSubPopup$1$1;->onResponse([Lmediabrowser/model/dto/SubtitleSearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/ui/EditSubPopup$1$1;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/EditSubPopup$1$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$1$1;

    iput-object p2, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 103
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$1$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1000a3

    .line 104
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;->this$2:Ltv/emby/embyatv/ui/EditSubPopup$1$1;

    iget-object v1, v1, Ltv/emby/embyatv/ui/EditSubPopup$1$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$1;

    iget-object v1, v1, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    .line 105
    invoke-static {v1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    const v2, 0x7f100628

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;->val$title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/EditSubPopup$1$1$1$1;-><init>(Ltv/emby/embyatv/ui/EditSubPopup$1$1$1;)V

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100050

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
