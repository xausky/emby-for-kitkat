.class Ltv/emby/embyatv/browsing/StdBrowseFragment$5;
.super Ljava/lang/Object;
.source "StdBrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/browsing/StdBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdBrowseFragment;)V
    .locals 0

    .line 348
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 351
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getRuntimeTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 352
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ltv/emby/embyatv/ui/ItemPanel;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdBrowseFragment;->mCurrentItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ItemPanel;->setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    .line 353
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ltv/emby/embyatv/ui/ItemPanel;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$100(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ItemPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$200(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$300(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$200(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdBrowseFragment$5;->this$0:Ltv/emby/embyatv/browsing/StdBrowseFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/StdBrowseFragment;->access$000(Ltv/emby/embyatv/browsing/StdBrowseFragment;)Ltv/emby/embyatv/ui/ItemPanel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ItemPanel;->setVisibility(I)V

    :goto_0
    return-void
.end method
