.class Ltv/emby/embyatv/details/FullDetailsActivity$45;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->play(Lmediabrowser/model/dto/BaseItemDto;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/util/List<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;I)V
    .locals 0

    .line 1850
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->val$activity:Landroid/app/Activity;

    iput p4, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->val$pos:I

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1850
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$45;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MusicArtist"

    .line 1853
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1856
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1857
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    const-string p1, "Position"

    .line 1858
    iget v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->val$pos:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "MainItemId"

    .line 1859
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1860
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1862
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getDefaultMediaSourceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "MediaSourceId"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getDefaultMediaSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1863
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getDefaultAudioNdx()I

    move-result p1

    if-ltz p1, :cond_2

    const-string p1, "AudioStreamNdx"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getDefaultAudioNdx()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1864
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getDefaultSubNdx()I

    move-result p1

    if-ltz p1, :cond_3

    const-string p1, "SubtitleStreamNdx"

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$2300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getDefaultSubNdx()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1866
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$45;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
