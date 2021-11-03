.class final Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1760
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity$1;)V
    .locals 0

    .line 1760
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 1764
    instance-of p1, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez p1, :cond_0

    .line 1765
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const/4 p2, 0x0

    iput-object p2, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    goto :goto_0

    .line 1767
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iput-object p2, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 1768
    instance-of p1, p4, Landroidx/leanback/widget/ListRow;

    if-eqz p1, :cond_1

    .line 1769
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    check-cast p4, Landroidx/leanback/widget/ListRow;

    iput-object p4, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    .line 1770
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 1771
    iget-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p2, p2, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->loadMoreItemsIfNeeded(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1760
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
