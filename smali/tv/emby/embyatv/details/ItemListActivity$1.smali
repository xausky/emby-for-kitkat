.class Ltv/emby/embyatv/details/ItemListActivity$1;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Ltv/emby/embyatv/base/IKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 115
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 118
    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_1

    .line 120
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$100(Ltv/emby/embyatv/details/ItemListActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 121
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$100(Ltv/emby/embyatv/details/ItemListActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Ltv/emby/embyatv/details/ItemListActivity$1$1;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/details/ItemListActivity$1$1;-><init>(Ltv/emby/embyatv/details/ItemListActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return v1

    .line 131
    :cond_1
    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object p2

    if-eqz p2, :cond_3

    const/16 p2, 0x6d

    if-eq p1, p2, :cond_2

    const/16 p2, 0x17

    if-eq p1, p2, :cond_2

    const/16 p2, 0x60

    if-eq p1, p2, :cond_2

    const/16 p2, 0x42

    if-ne p1, p2, :cond_3

    .line 133
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$200(Ltv/emby/embyatv/details/ItemListActivity;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V

    return v1

    .line 135
    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result p2

    const/16 v2, 0x52

    const/16 v3, 0x55

    if-eqz p2, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v3, :cond_4

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 149
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->prevAudioItem()I

    return v1

    .line 145
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->nextAudioItem()I

    return v1

    .line 139
    :cond_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 140
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->pauseAudio()V

    goto :goto_0

    .line 141
    :cond_5
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->resumeAudio()V

    :goto_0
    return v1

    .line 152
    :cond_6
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object p2

    invoke-static {p1, p2, v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$300(Ltv/emby/embyatv/details/ItemListActivity;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Z)V

    return v1

    .line 155
    :cond_7
    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object p2

    const/16 v4, 0x7e

    if-eqz p2, :cond_9

    const-string p2, "Season"

    iget-object v5, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v5}, Ltv/emby/embyatv/details/ItemListActivity;->access$400(Ltv/emby/embyatv/details/ItemListActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v4, :cond_8

    goto :goto_1

    .line 159
    :cond_8
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {p2, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/details/ListItemAdapter;->play(Ljava/util/List;)V

    return v1

    .line 162
    :cond_9
    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object p2

    if-eqz p2, :cond_b

    const-string p2, "SeriesTimer"

    iget-object v5, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v5}, Ltv/emby/embyatv/details/ItemListActivity;->access$400(Ltv/emby/embyatv/details/ItemListActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    if-eq p1, v2, :cond_a

    if-eq p1, v3, :cond_a

    if-eq p1, v4, :cond_a

    goto :goto_1

    .line 167
    :cond_a
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/ItemListActivity;->access$000(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    move-result-object p2

    invoke-static {p1, p2, v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$300(Ltv/emby/embyatv/details/ItemListActivity;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Z)V

    return v1

    :cond_b
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
