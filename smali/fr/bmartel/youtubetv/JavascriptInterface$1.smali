.class Lfr/bmartel/youtubetv/JavascriptInterface$1;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/JavascriptInterface;->onPlayerReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

.field final synthetic val$author:Ljava/lang/String;

.field final synthetic val$qualityLevels:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/JavascriptInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    iput-object p2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->val$author:Ljava/lang/String;

    iput-object p4, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->val$qualityLevels:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 277
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoInfo;

    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->val$videoId:Ljava/lang/String;

    iget-object v2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->val$author:Ljava/lang/String;

    iget-object v3, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->val$qualityLevels:Ljava/lang/String;

    invoke-static {v4}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->parseQualityLevels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lfr/bmartel/youtubetv/model/VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 279
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$1;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$000(Lfr/bmartel/youtubetv/JavascriptInterface;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/bmartel/youtubetv/listener/IPlayerListener;

    .line 280
    invoke-interface {v2, v0}, Lfr/bmartel/youtubetv/listener/IPlayerListener;->onPlayerReady(Lfr/bmartel/youtubetv/model/VideoInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
