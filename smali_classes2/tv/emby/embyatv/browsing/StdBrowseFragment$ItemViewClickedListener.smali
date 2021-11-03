.class final Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "StdBrowseFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 420
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;Ltv/emby/embyatv/browsing/StdBrowseFragment$1;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 425
    instance-of p1, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez p1, :cond_0

    return-void

    .line 426
    :cond_0
    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    check-cast p4, Landroidx/leanback/widget/ListRow;

    invoke-virtual {p4}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p3

    iget-object p4, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-virtual {p4}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 420
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/browsing/StdBrowseFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
