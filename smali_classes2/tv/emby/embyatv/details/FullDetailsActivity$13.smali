.class Ltv/emby/embyatv/details/FullDetailsActivity$13;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->addAdditionalRows(Landroidx/leanback/widget/ArrayObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

.field final synthetic val$adapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field final synthetic val$episodeRow:Landroidx/leanback/widget/ListRow;

.field final synthetic val$nextAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;Landroidx/leanback/widget/ArrayObjectAdapter;Landroidx/leanback/widget/ListRow;)V
    .locals 0

    .line 904
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->val$nextAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iput-object p3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->val$adapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iput-object p4, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->val$episodeRow:Landroidx/leanback/widget/ListRow;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 907
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->val$nextAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->val$nextAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getCurrentItemIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 908
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->val$nextAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->val$nextAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getCurrentItemIndex()I

    move-result v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->getPosOfItemWithIndex(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 909
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->val$adapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$13;->val$episodeRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/presentation/CustomListRowPresenter;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/presentation/CustomListRowPresenter;->setPosition(I)V

    :cond_0
    return-void
.end method
