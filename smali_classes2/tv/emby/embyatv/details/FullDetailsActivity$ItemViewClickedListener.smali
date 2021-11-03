.class final Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1742
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/details/FullDetailsActivity$1;)V
    .locals 0

    .line 1742
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 1747
    instance-of p1, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez p1, :cond_0

    return-void

    .line 1748
    :cond_0
    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 1749
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object p1

    sget-object p3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Chapter:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne p1, p3, :cond_1

    .line 1751
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getChapterInfo()Ltv/emby/embyatv/model/ChapterItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/model/ChapterItemInfo;->getStartPositionTicks()J

    move-result-wide p1

    const-wide/16 p3, 0x2710

    div-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1752
    iget-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4}, Ltv/emby/embyatv/details/FullDetailsActivity;->play(Lmediabrowser/model/dto/BaseItemDto;IZ)V

    goto :goto_0

    .line 1755
    :cond_1
    check-cast p4, Landroidx/leanback/widget/ListRow;

    invoke-virtual {p4}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p3

    iget-object p4, p0, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p4}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1742
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/details/FullDetailsActivity$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
