.class Lfr/bmartel/youtubetv/JavascriptInterface$5;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/JavascriptInterface;->hideLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

.field final synthetic val$showPlayIcon:Z


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/JavascriptInterface;Z)V
    .locals 0

    .line 546
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$5;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    iput-boolean p2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$5;->val$showPlayIcon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 549
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface$5;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$800(Lfr/bmartel/youtubetv/JavascriptInterface;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 550
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface$5;->val$showPlayIcon:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface$5;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$900(Lfr/bmartel/youtubetv/JavascriptInterface;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface$5;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$900(Lfr/bmartel/youtubetv/JavascriptInterface;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
