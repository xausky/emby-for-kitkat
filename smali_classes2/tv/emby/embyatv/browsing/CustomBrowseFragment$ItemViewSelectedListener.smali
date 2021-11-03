.class final Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "CustomBrowseFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/CustomBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)V
    .locals 0

    .line 217
    iput-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;Ltv/emby/embyatv/browsing/CustomBrowseFragment$1;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;-><init>(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 221
    instance-of p1, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez p1, :cond_0

    .line 223
    iget-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->access$202(Ltv/emby/embyatv/browsing/CustomBrowseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    iget-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)V

    return-void

    .line 228
    :cond_0
    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 229
    iget-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    iput-object p2, p1, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 230
    iget-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    check-cast p4, Landroidx/leanback/widget/ListRow;

    iput-object p4, p1, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    .line 233
    invoke-virtual {p4}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 234
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->loadMoreItemsIfNeeded(J)V

    .line 236
    iget-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBackdropImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->access$202(Ltv/emby/embyatv/browsing/CustomBrowseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget-object p1, p0, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;->this$0:Ltv/emby/embyatv/browsing/CustomBrowseFragment;

    invoke-static {p1}, Ltv/emby/embyatv/browsing/CustomBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/CustomBrowseFragment;)V

    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/browsing/CustomBrowseFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
