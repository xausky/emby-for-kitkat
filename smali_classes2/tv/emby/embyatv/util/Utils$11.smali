.class final Ltv/emby/embyatv/util/Utils$11;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->play(Lmediabrowser/model/dto/BaseItemDto;IZIILjava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$activity:Landroid/content/Context;

.field final synthetic val$audioStreamNdx:I

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$mediaSourceId:Ljava/lang/String;

.field final synthetic val$pos:I

.field final synthetic val$subtitleStreamNdx:I


# direct methods
.method constructor <init>(Lmediabrowser/model/dto/BaseItemDto;Landroid/content/Context;IIILjava/lang/String;)V
    .locals 0

    .line 874
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    iput p3, p0, Ltv/emby/embyatv/util/Utils$11;->val$pos:I

    iput p4, p0, Ltv/emby/embyatv/util/Utils$11;->val$subtitleStreamNdx:I

    iput p5, p0, Ltv/emby/embyatv/util/Utils$11;->val$audioStreamNdx:I

    iput-object p6, p0, Ltv/emby/embyatv/util/Utils$11;->val$mediaSourceId:Ljava/lang/String;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 874
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$11;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Playlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "PhotoAlbum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v1, "CollectionFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "MusicAlbum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "UserView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "AudioPodcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "MusicArtist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v1, "AudioBook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/high16 v1, 0x10000000

    packed-switch v0, :pswitch_data_0

    .line 940
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/util/Utils$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MainItemId"

    .line 941
    iget-object v3, p0, Ltv/emby/embyatv/util/Utils$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Position"

    .line 942
    iget v3, p0, Ltv/emby/embyatv/util/Utils$11;->val$pos:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "SubtitleStreamNdx"

    .line 943
    iget v3, p0, Ltv/emby/embyatv/util/Utils$11;->val$subtitleStreamNdx:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "AudioStreamNdx"

    .line 944
    iget v3, p0, Ltv/emby/embyatv/util/Utils$11;->val$audioStreamNdx:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "MediaSourceId"

    .line 945
    iget-object v3, p0, Ltv/emby/embyatv/util/Utils$11;->val$mediaSourceId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    .line 948
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_8

    .line 949
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 930
    :pswitch_0
    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    new-instance v1, Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {v1}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v0, p1, v1, v4, v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>(Ljava/util/List;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;Z)V

    .line 931
    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 932
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    .line 933
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentMediaPosition(I)V

    .line 934
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    const-class v1, Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Play"

    .line 935
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 936
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 923
    :pswitch_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 924
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Lmediabrowser/model/dto/BaseItemDto;)V

    goto/16 :goto_6

    :pswitch_2
    const-string v0, "Audio"

    .line 902
    iget-object v2, p0, Ltv/emby/embyatv/util/Utils$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "music"

    iget-object v2, p0, Ltv/emby/embyatv/util/Utils$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 906
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    .line 907
    :goto_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 908
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    const-string p1, "MainItemId"

    .line 909
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Position"

    .line 910
    iget v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$pos:I

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SubtitleStreamNdx"

    .line 911
    iget v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$subtitleStreamNdx:I

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "AudioStreamNdx"

    .line 912
    iget v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$audioStreamNdx:I

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "MediaSourceId"

    .line 913
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$mediaSourceId:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_3

    .line 915
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 916
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 903
    :cond_4
    :goto_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;)V

    goto/16 :goto_6

    :pswitch_3
    const-string v0, "Video"

    .line 883
    iget-object v2, p0, Ltv/emby/embyatv/util/Utils$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 884
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;)V

    goto :goto_6

    .line 887
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    const-string v0, ""

    .line 888
    :goto_4
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 889
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    const-string p1, "MainItemId"

    .line 890
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Position"

    .line 891
    iget v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$pos:I

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SubtitleStreamNdx"

    .line 892
    iget v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$subtitleStreamNdx:I

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "AudioStreamNdx"

    .line 893
    iget v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$audioStreamNdx:I

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "MediaSourceId"

    .line 894
    iget-object v0, p0, Ltv/emby/embyatv/util/Utils$11;->val$mediaSourceId:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_7

    .line 896
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 897
    :cond_7
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 880
    :pswitch_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;)V

    goto :goto_6

    .line 950
    :cond_8
    :goto_5
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$11;->val$activity:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d5e7041 -> :sswitch_8
        -0x711b8e54 -> :sswitch_7
        -0x6cef0992 -> :sswitch_6
        -0xc06ded0 -> :sswitch_5
        0x3caabb6 -> :sswitch_4
        0x46a98b6a -> :sswitch_3
        0x4a5a0ccc -> :sswitch_2
        0x56e63b7d -> :sswitch_1
        0x73e0e5f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
