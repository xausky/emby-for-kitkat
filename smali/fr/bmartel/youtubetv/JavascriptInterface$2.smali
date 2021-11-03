.class Lfr/bmartel/youtubetv/JavascriptInterface$2;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/JavascriptInterface;->onProgressUpdate(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

.field final synthetic val$currentTime:F


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/JavascriptInterface;F)V
    .locals 0

    .line 289
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$2;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    iput p2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$2;->val$currentTime:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 292
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface$2;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$100(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface$2;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v0}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$100(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;

    move-result-object v0

    iget v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$2;->val$currentTime:F

    invoke-interface {v0, v1}, Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method
