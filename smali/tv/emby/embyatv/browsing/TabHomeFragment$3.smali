.class Ltv/emby/embyatv/browsing/TabHomeFragment$3;
.super Ljava/lang/Object;
.source "TabHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;->onResume()V
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

    .line 172
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 175
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->addNowPlaying()V

    .line 177
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$000(Ltv/emby/embyatv/browsing/TabHomeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->hasResumeRow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->addContinueWatching()V

    .line 179
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$100(Ltv/emby/embyatv/browsing/TabHomeFragment;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->hasActiveRecordingRow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$3;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabHomeFragment;->addActiveRecordings()V

    :cond_1
    return-void
.end method
