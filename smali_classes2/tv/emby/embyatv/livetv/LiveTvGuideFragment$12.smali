.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$12;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;
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

    .line 385
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$12;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 388
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$12;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2400(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V

    .line 389
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$12;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
