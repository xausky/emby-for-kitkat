.class Ltv/emby/embyatv/details/ItemListActivity$12;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->showMenu(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;

.field final synthetic val$ndx:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;I)V
    .locals 0

    .line 452
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$12;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iput p2, p0, Ltv/emby/embyatv/details/ItemListActivity$12;->val$ndx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 455
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$12;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Ltv/emby/embyatv/details/ItemListActivity$12;->val$ndx:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    .line 456
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x3caabb6

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x4ed245b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 461
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->queueAudioItem(Lmediabrowser/model/dto/BaseItemDto;)I

    goto :goto_2

    .line 458
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->addToVideoQueue(Lmediabrowser/model/dto/BaseItemDto;)I

    :goto_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
