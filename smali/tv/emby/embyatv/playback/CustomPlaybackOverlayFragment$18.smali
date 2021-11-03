.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 628
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 1

    .line 632
    instance-of p3, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 633
    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 635
    sget-object p3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$58;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 657
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "pref_cast_nav_warn"

    const/4 p4, 0x1

    invoke-interface {p1, p3, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 658
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p3, p3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f1006a9

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f100638

    .line 659
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f1003b8

    new-instance p4, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$2;

    invoke-direct {p4, p0, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$2;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    .line 660
    invoke-virtual {p1, p3, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f100050

    const/4 p4, 0x0

    .line 666
    invoke-virtual {p1, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f1003b9

    new-instance p4, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$1;

    invoke-direct {p4, p0, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18$1;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    .line 667
    invoke-virtual {p1, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 674
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 676
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    goto/16 :goto_0

    .line 652
    :pswitch_1
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->playSoundEffect(I)V

    .line 653
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 654
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getChannelInfo()Lmediabrowser/model/livetv/ChannelInfoDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :pswitch_2
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->playSoundEffect(I)V

    .line 644
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 645
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->programIsRecording(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 646
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->handleInProgressPlaybackRequest(Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :pswitch_3
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getChapterInfo()Ltv/emby/embyatv/model/ChapterItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/model/ChapterItemInfo;->getStartPositionTicks()J

    move-result-wide p1

    const-wide/16 p3, 0x2710

    div-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 639
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ltv/emby/embyatv/playback/PlaybackController;->seek(J)V

    .line 640
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    goto :goto_0

    .line 680
    :cond_2
    instance-of p3, p2, Lmediabrowser/model/livetv/ChannelInfoDto;

    if-eqz p3, :cond_3

    .line 681
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->playSoundEffect(I)V

    .line 682
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 683
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    check-cast p2, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 628
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
