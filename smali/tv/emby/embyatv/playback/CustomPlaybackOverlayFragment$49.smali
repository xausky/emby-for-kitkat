.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setCurrentTime(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;J)V
    .locals 0

    .line 2083
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput-wide p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2086
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanelVisible:Z

    const v1, 0x7f1005ca

    if-eqz v0, :cond_1

    .line 2087
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mStartsIn:Landroid/widget/TextView;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentDuration:I

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentDuration:I

    int-to-long v3, v1

    iget-wide v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->val$time:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2088
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanelVisible:Z

    if-eqz v0, :cond_3

    .line 2089
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmStartsIn:Landroid/widget/TextView;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentDuration:I

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentDuration:I

    int-to-long v3, v1

    iget-wide v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->val$time:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2091
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-wide v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->val$time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setProgress(I)V

    .line 2092
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-wide v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->val$time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setProgress(I)V

    .line 2093
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentPos:Landroid/widget/TextView;

    iget-wide v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->val$time:J

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2094
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentDuration:I

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentDuration:I

    int-to-long v1, v1

    iget-wide v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->val$time:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    .line 2095
    :goto_2
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2096
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentPosMin:Landroid/widget/TextView;

    iget-wide v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->val$time:J

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2097
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRemainingTimeMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
