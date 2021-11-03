.class Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;
.super Ljava/lang/Object;
.source "LiveProgramDetailPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

.field final synthetic val$program:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$selectedGridView:Ltv/emby/embyatv/ui/ProgramGridCell;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V
    .locals 0

    .line 162
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->val$selectedGridView:Ltv/emby/embyatv/ui/ProgramGridCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 165
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 166
    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100466

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;->this$0:Ltv/emby/embyatv/ui/LiveProgramDetailPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 167
    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100623

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100526

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2$1;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;)V

    const v1, 0x7f100617

    .line 169
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
