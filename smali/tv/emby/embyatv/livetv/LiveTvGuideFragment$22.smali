.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;
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

    .line 1083
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1086
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Display programs load finished"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v3}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const v4, 0x7f100469

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$4100(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0, v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$2300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)V

    .line 1092
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/browsing/BaseTabActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ltv/emby/embyatv/browsing/BaseTabActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/browsing/BaseTabActivity;->blockFocus(Z)V

    .line 1093
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$22;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$3600(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method
