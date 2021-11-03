.class Ltv/emby/embyatv/details/FullDetailsActivity$15;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->refreshCurrentItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$15;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 3

    .line 1067
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$15;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 1068
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$15;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v1, v1, Ltv/emby/embyatv/details/FullDetailsActivity;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyArrayItemRangeChanged(II)V

    return-void
.end method
