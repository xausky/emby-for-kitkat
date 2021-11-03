.class Ltv/emby/embyatv/eventhandling/TvApiEventListener$3;
.super Lmediabrowser/apiinteraction/Response;
.source "TvApiEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/eventhandling/TvApiEventListener;->onPlayCommand(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/session/PlayRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/querying/ItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/eventhandling/TvApiEventListener;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/eventhandling/TvApiEventListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Ltv/emby/embyatv/eventhandling/TvApiEventListener$3;->this$0:Ltv/emby/embyatv/eventhandling/TvApiEventListener;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/eventhandling/TvApiEventListener$3;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 5

    .line 194
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 196
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dto/BaseItemDto;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x3caabb6

    if-eq v3, v4, :cond_1

    const v4, 0x4ed245b

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "Video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "Audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 209
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->clearAudioQueue()V

    .line 211
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;)V

    goto :goto_2

    .line 198
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    .line 199
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dto/BaseItemDto;

    aget-object p1, p1, v1

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 202
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Position"

    .line 203
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 205
    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
