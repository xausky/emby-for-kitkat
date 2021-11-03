.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$9;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->onActivityCreated(Landroid/os/Bundle;)V
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

    .line 275
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$9;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 1

    .line 278
    sget-object v0, Ltv/emby/embyatv/base/CustomMessage;->ActionComplete:Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/CustomMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$9;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$9;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/ui/ProgramGridCell;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->setSelectedProgram(Ltv/emby/embyatv/ui/ProgramGridCell;)V

    :cond_0
    return-void
.end method
