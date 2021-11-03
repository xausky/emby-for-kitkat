.class Ltv/emby/embyatv/details/PhotoPlayerActivity$1;
.super Ljava/lang/Object;
.source "PhotoPlayerActivity.java"

# interfaces
.implements Ltv/emby/embyatv/base/IKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/PhotoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 p2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_a

    const/16 p2, 0x1e

    if-eq p1, p2, :cond_a

    const/16 p2, 0x42

    if-eq p1, p2, :cond_8

    const/16 p2, 0x60

    if-eq p1, p2, :cond_8

    const/16 p2, 0x6d

    if-eq p1, p2, :cond_8

    const/16 p2, 0x2ee

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    return v0

    .line 168
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->handlePlayKey()Z

    move-result p1

    return p1

    .line 172
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$100(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    return v1

    .line 165
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->handlePlayKey()Z

    move-result p1

    return p1

    .line 131
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupPanelVisible:Z

    if-nez p1, :cond_b

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->hasNextMediaItem()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 132
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isLoadingNext:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isTransitioning:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isPlaying:Z

    if-eqz p1, :cond_1

    .line 135
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$100(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    .line 136
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$200(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1, p2}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$300(Ltv/emby/embyatv/details/PhotoPlayerActivity;I)V

    :goto_0
    return v1

    :cond_2
    :goto_1
    return v1

    .line 145
    :pswitch_4
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupPanelVisible:Z

    if-nez p1, :cond_b

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->hasPrevMediaItem()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 146
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isLoadingPrev:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isTransitioning:Z

    if-eqz p1, :cond_3

    goto :goto_3

    .line 148
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isPlaying:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$100(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    .line 149
    :cond_4
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/MediaManager;->prevMedia()Ltv/emby/embyatv/itemhandling/BaseRowItem;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    iput-object v2, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

    .line 150
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImage:Landroid/widget/ImageView;

    iget-object v2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$400(Ltv/emby/embyatv/details/PhotoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$500(Ltv/emby/embyatv/details/PhotoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object v2, v2, Ltv/emby/embyatv/details/PhotoPlayerActivity;->prevImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPlayIcon:Landroid/widget/ImageView;

    const-string v2, "Video"

    iget-object v3, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object v3, v3, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1, p2}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$600(Ltv/emby/embyatv/details/PhotoPlayerActivity;I)V

    .line 154
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$700(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    return v1

    :cond_6
    :goto_3
    return v1

    .line 161
    :pswitch_5
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupPanelVisible:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$000(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$800(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    :goto_4
    return v1

    :cond_8
    :pswitch_6
    const-string p1, "Video"

    .line 179
    iget-object p2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p2, p2, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 180
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->nextImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 181
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p2, p2, Ltv/emby/embyatv/details/PhotoPlayerActivity;->isPlaying:Z

    iput-boolean p2, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->wasPlaying:Z

    .line 182
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$100(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    .line 183
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->currentPhoto:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-object p2, p2, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {p1, v0, p2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    return v1

    :cond_9
    return v0

    .line 124
    :cond_a
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    iget-boolean p1, p1, Ltv/emby/embyatv/details/PhotoPlayerActivity;->mPopupPanelVisible:Z

    if-eqz p1, :cond_b

    .line 125
    iget-object p1, p0, Ltv/emby/embyatv/details/PhotoPlayerActivity$1;->this$0:Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/PhotoPlayerActivity;->access$000(Ltv/emby/embyatv/details/PhotoPlayerActivity;)V

    return v1

    :cond_b
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
