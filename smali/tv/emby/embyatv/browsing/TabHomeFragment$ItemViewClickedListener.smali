.class final Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "TabHomeFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V
    .locals 0

    .line 685
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/browsing/TabHomeFragment$1;)V
    .locals 0

    .line 685
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 690
    instance-of p1, p2, Ltv/emby/embyatv/ui/GridButton;

    if-eqz p1, :cond_1

    .line 691
    move-object p1, p2

    check-cast p1, Ltv/emby/embyatv/ui/GridButton;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/GridButton;->getId()I

    move-result p1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    .line 698
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 694
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {p2}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class p3, Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {p2}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 685
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/browsing/TabHomeFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
