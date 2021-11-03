.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$23;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->onLoadFinished()V
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

    .line 1099
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$23;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1102
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$23;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$4200(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$23;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$23$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$23$1;-><init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment$23;)V

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v1, v2}, Ltv/emby/embyatv/livetv/TvManager;->getProgramsAsync(IILjava/util/Calendar;Ljava/util/Calendar;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
