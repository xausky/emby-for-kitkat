.class Ltv/emby/embyatv/details/ItemListActivity$8;
.super Ltv/emby/embyatv/playback/AudioEventListener;
.source "ItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/details/ItemListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 402
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$8;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChange(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 3

    .line 405
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got playback state change event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for item "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "<unknown>"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$8;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$1500(Ltv/emby/embyatv/details/ItemListActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$8;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$400(Ltv/emby/embyatv/details/ItemListActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "Video"

    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$8;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$400(Ltv/emby/embyatv/details/ItemListActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 408
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$8;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$1300(Ltv/emby/embyatv/details/ItemListActivity;)V

    :cond_1
    return-void
.end method
