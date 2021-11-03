.class Ltv/emby/embyatv/browsing/TabBrowseFragment$4;
.super Ljava/lang/Object;
.source "TabBrowseFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabBrowseFragment;->setupEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment;)V
    .locals 0

    .line 426
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 429
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/browsing/TabBrowseFragment;->BackGoHome:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x6f

    const/4 v3, 0x4

    if-eqz p2, :cond_1

    if-eq p1, v3, :cond_0

    if-ne p1, v2, :cond_1

    .line 430
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    check-cast p1, Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->switchToTab(I)V

    return v0

    .line 432
    :cond_1
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/browsing/TabBrowseFragment;->ConfirmExit:Z

    if-eqz p2, :cond_4

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_4

    .line 433
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->CameFromLongPress:Z

    if-nez p1, :cond_3

    .line 434
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f10062e

    .line 435
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1000cf

    new-instance v1, Ltv/emby/embyatv/browsing/TabBrowseFragment$4$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/browsing/TabBrowseFragment$4$1;-><init>(Ltv/emby/embyatv/browsing/TabBrowseFragment$4;)V

    .line 436
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f100050

    const/4 v1, 0x0

    .line 442
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, -0x1

    .line 444
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 446
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iput-boolean v1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->CameFromLongPress:Z

    :goto_0
    return v0

    .line 450
    :cond_4
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {p1, p2, v0}, Ltv/emby/embyatv/util/KeyProcessor;->HandleKey(ILtv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)Z

    move-result p1

    return p1
.end method
