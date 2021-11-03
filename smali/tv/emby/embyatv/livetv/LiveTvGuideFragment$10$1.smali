.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10$1;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;)V
    .locals 0

    .line 338
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 341
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/ProgramGridCell;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/ProgramGridCell;->requestFocus()Z

    .line 342
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/browsing/BaseTabActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10$1;->this$1:Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;

    iget-object v0, v0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$10;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/browsing/BaseTabActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->blockFocus(Z)V

    :cond_0
    return-void
.end method
