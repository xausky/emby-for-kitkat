.class Lfr/bmartel/youtubetv/JavascriptInterface$3;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/JavascriptInterface;->onPlayerStateChange(IJFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

.field final synthetic val$duration:F

.field final synthetic val$loadedFraction:F

.field final synthetic val$position:J

.field final synthetic val$qualityLevels:Ljava/lang/String;

.field final synthetic val$speed:F

.field final synthetic val$state:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$videoAuthor:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/JavascriptInterface;IFFLjava/lang/String;JFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    iput p2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$state:I

    iput p3, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$duration:F

    iput p4, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$loadedFraction:F

    iput-object p5, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$videoId:Ljava/lang/String;

    iput-wide p6, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$position:J

    iput p8, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$speed:F

    iput-object p9, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$title:Ljava/lang/String;

    iput-object p10, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$videoAuthor:Ljava/lang/String;

    iput-object p11, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$qualityLevels:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 313
    iget v0, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$state:I

    invoke-static {v0}, Lfr/bmartel/youtubetv/model/VideoState;->getPlayerState(I)Lfr/bmartel/youtubetv/model/VideoState;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$200(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/YoutubeTvView;

    move-result-object v1

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/YoutubeTvView;->isShowingNowPlayingCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    sget-object v1, Lfr/bmartel/youtubetv/JavascriptInterface$6;->$SwitchMap$fr$bmartel$youtubetv$model$VideoState:[I

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/model/VideoState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    goto :goto_2

    .line 355
    :pswitch_0
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1, v3}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$302(Lfr/bmartel/youtubetv/JavascriptInterface;Z)Z

    const/4 v7, 0x1

    :goto_1
    const/4 v8, 0x3

    goto :goto_2

    .line 348
    :pswitch_1
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1, v3}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$302(Lfr/bmartel/youtubetv/JavascriptInterface;Z)Z

    const/4 v2, 0x6

    .line 350
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$400(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/listener/IBufferStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$400(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/listener/IBufferStateListener;

    move-result-object v1

    iget v3, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$duration:F

    iget v5, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$loadedFraction:F

    invoke-interface {v1, v3, v5}, Lfr/bmartel/youtubetv/listener/IBufferStateListener;->onBufferUpdate(FF)V

    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x6

    goto :goto_2

    .line 341
    :pswitch_2
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$300(Lfr/bmartel/youtubetv/JavascriptInterface;)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 344
    iget-object v2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v2, v4}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$302(Lfr/bmartel/youtubetv/JavascriptInterface;Z)Z

    const/4 v2, 0x2

    move v7, v1

    const/4 v8, 0x2

    goto :goto_2

    .line 334
    :pswitch_3
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$300(Lfr/bmartel/youtubetv/JavascriptInterface;)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 337
    iget-object v3, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v3, v4}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$302(Lfr/bmartel/youtubetv/JavascriptInterface;Z)Z

    move v7, v1

    goto :goto_1

    .line 327
    :pswitch_4
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$200(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/YoutubeTvView;

    move-result-object v1

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/YoutubeTvView;->getPlaylistIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 328
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$200(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/YoutubeTvView;

    move-result-object v1

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/YoutubeTvView;->start()V

    .line 330
    :cond_1
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1, v3}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$302(Lfr/bmartel/youtubetv/JavascriptInterface;Z)Z

    goto :goto_0

    .line 323
    :pswitch_5
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1, v3}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$302(Lfr/bmartel/youtubetv/JavascriptInterface;Z)Z

    goto :goto_0

    .line 362
    :goto_2
    iget-object v5, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    iget-object v6, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$videoId:Ljava/lang/String;

    iget-wide v9, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$position:J

    iget v11, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$speed:F

    iget-object v12, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$200(Lfr/bmartel/youtubetv/JavascriptInterface;)Lfr/bmartel/youtubetv/YoutubeTvView;

    move-result-object v1

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/YoutubeTvView;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v13

    invoke-static/range {v5 .. v13}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$500(Lfr/bmartel/youtubetv/JavascriptInterface;Ljava/lang/String;ZIJFLjava/lang/String;Landroid/media/session/MediaSession;)V

    .line 365
    :cond_2
    iget-object v1, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->this$0:Lfr/bmartel/youtubetv/JavascriptInterface;

    invoke-static {v1}, Lfr/bmartel/youtubetv/JavascriptInterface;->access$000(Lfr/bmartel/youtubetv/JavascriptInterface;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/bmartel/youtubetv/listener/IPlayerListener;

    .line 366
    iget-wide v3, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$position:J

    iget v5, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$speed:F

    iget v6, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$duration:F

    new-instance v7, Lfr/bmartel/youtubetv/model/VideoInfo;

    iget-object v2, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$videoId:Ljava/lang/String;

    iget-object v9, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$videoAuthor:Ljava/lang/String;

    iget-object v10, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$title:Ljava/lang/String;

    iget-object v11, p0, Lfr/bmartel/youtubetv/JavascriptInterface$3;->val$qualityLevels:Ljava/lang/String;

    invoke-static {v11}, Lfr/bmartel/youtubetv/utils/WebviewUtils;->parseQualityLevels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v7, v2, v9, v10, v11}, Lfr/bmartel/youtubetv/model/VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v2, v0

    invoke-interface/range {v1 .. v7}, Lfr/bmartel/youtubetv/listener/IPlayerListener;->onPlayerStateChange(Lfr/bmartel/youtubetv/model/VideoState;JFFLfr/bmartel/youtubetv/model/VideoInfo;)V

    goto :goto_3

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
