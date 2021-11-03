.class Ltv/emby/embyatv/browsing/TabHomeFragment$1;
.super Ljava/lang/Object;
.source "TabHomeFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 2

    .line 85
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mCurrentRow:Landroidx/leanback/widget/ListRow;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ltv/emby/embyatv/browsing/TabHomeFragment;->CameFromLongPress:Z

    .line 87
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {p1, v1, v1}, Landroidx/leanback/app/RowsSupportFragment;->setSelectedPosition(IZ)V

    :cond_0
    return-void
.end method
