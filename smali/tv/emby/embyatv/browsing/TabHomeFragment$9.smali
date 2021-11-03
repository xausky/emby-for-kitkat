.class Ltv/emby/embyatv/browsing/TabHomeFragment$9;
.super Ltv/emby/embyatv/playback/AudioEventListener;
.source "TabHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;
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

    .line 558
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$9;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueStatusChanged(Z)V
    .locals 1

    .line 562
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$9;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabHomeFragment;->nowPlayingRow:Landroidx/leanback/widget/ListRow;

    if-eqz p1, :cond_0

    .line 563
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$9;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$9;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/TabHomeFragment;->nowPlayingRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 564
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$9;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Ltv/emby/embyatv/browsing/TabHomeFragment;->nowPlayingRow:Landroidx/leanback/widget/ListRow;

    :cond_0
    return-void
.end method
