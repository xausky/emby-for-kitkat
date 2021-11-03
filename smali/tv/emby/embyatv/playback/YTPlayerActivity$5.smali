.class Ltv/emby/embyatv/playback/YTPlayerActivity$5;
.super Ljava/lang/Object;
.source "YTPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/YTPlayerActivity;->setCurrentTime(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/YTPlayerActivity;J)V
    .locals 0

    .line 159
    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iput-wide p2, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 162
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-wide v1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->val$time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setProgress(I)V

    .line 163
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-wide v1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->val$time:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentSecs:I

    .line 164
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object v0, v0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentDuration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object v1, v1, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->val$time:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 165
    :goto_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object v1, v1, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentPosMin:Landroid/widget/TextView;

    iget-wide v2, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->val$time:J

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object v1, v1, Ltv/emby/embyatv/playback/YTPlayerActivity;->mRemainingTimeMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
