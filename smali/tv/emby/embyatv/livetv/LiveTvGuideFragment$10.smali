.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->startNavKeyCheckLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 326
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 329
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)J

    move-result-wide v0

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v3}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideProgramAdapter;

    move-result-object v3

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->setUseLimitedLayout(Z)V

    const-wide/16 v3, 0x64

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const-wide/16 v5, -0x1

    invoke-static {v0, v5, v6}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1302(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;J)J

    .line 333
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1502(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)Z

    .line 335
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/ProgramGridCell;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/ui/ProgramGridCell;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    .line 337
    iget-object v2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/livetv/GuideProgramAdapter;

    move-result-object v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/16 v1, 0xc

    invoke-virtual {v2, v0, v1}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->notifyItemRangeChanged(II)V

    .line 338
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10$1;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 346
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1500(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- | "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v5}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const v6, 0x7f100469

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0, v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1502(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)Z

    .line 350
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/browsing/BaseTabActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/browsing/BaseTabActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/browsing/BaseTabActivity;->blockFocus(Z)V

    .line 352
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method
