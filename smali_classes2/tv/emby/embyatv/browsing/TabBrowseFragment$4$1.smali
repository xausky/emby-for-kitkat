.class Ltv/emby/embyatv/browsing/TabBrowseFragment$4$1;
.super Ljava/lang/Object;
.source "TabBrowseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/TabBrowseFragment$4;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabBrowseFragment$4;)V
    .locals 0

    .line 436
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4$1;->this$1:Ltv/emby/embyatv/browsing/TabBrowseFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 439
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabBrowseFragment$4$1;->this$1:Ltv/emby/embyatv/browsing/TabBrowseFragment$4;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment$4;->this$0:Ltv/emby/embyatv/browsing/TabBrowseFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabBrowseFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/base/BaseActivity;->finishAffinity()V

    return-void
.end method
