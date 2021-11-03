.class public Ltv/emby/embyatv/util/KeyProcessor;
.super Ljava/lang/Object;
.source "KeyProcessor.java"


# static fields
.field public static final MENU_ADD_QUEUE:I = 0xb

.field public static final MENU_ADD_TO_PLAYLIST:I = 0x14

.field public static final MENU_ADD_WATCH_NEXT:I = 0x12

.field public static final MENU_ADVANCE_QUEUE:I = 0xc

.field public static final MENU_DELETE:I = 0x11

.field public static final MENU_DISLIKE:I = 0x3

.field public static final MENU_EDIT_SUBS:I = 0x15

.field public static final MENU_FORGET:I = 0x10

.field public static final MENU_GOTO_NOW_PLAYING:I = 0xe

.field public static final MENU_INSTANT_MIX:I = 0xf

.field public static final MENU_LIKE:I = 0x2

.field public static final MENU_MARK_FAVORITE:I = 0x0

.field public static final MENU_MARK_PLAYED:I = 0x6

.field public static final MENU_PLAY:I = 0x8

.field public static final MENU_PLAY_FIRST_UNWATCHED:I = 0xa

.field public static final MENU_PLAY_FROM_HERE:I = 0x13

.field public static final MENU_PLAY_SHUFFLE:I = 0x9

.field public static final MENU_REMOVE_FROM_QUEUE:I = 0xd

.field public static final MENU_UNDISLIKE:I = 0x5

.field public static final MENU_UNLIKE:I = 0x4

.field public static final MENU_UNMARK_FAVORITE:I = 0x1

.field public static final MENU_UNMARK_PLAYED:I = 0x7

.field private static currentItemIsFolder:Z

.field private static isMusic:Z

.field private static mCurrentActivity:Ltv/emby/embyatv/base/BaseActivity;

.field private static mCurrentItem:Lmediabrowser/model/dto/BaseItemDto;

.field private static mCurrentItemId:Ljava/lang/String;

.field private static mCurrentRowItemNdx:I

.field private static menuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 376
    new-instance v0, Ltv/emby/embyatv/util/KeyProcessor$2;

    invoke-direct {v0}, Ltv/emby/embyatv/util/KeyProcessor$2;-><init>()V

    sput-object v0, Ltv/emby/embyatv/util/KeyProcessor;->menuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HandleKey(ILtv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)Z
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    const/16 v4, 0x52

    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/16 v9, 0xe

    const/4 v10, 0x5

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x6

    const/16 v16, 0x7

    const/16 v17, -0x1

    const/4 v5, 0x1

    if-eq v0, v4, :cond_d

    const/16 v4, 0x55

    if-eq v0, v4, :cond_1

    const/16 v4, 0x64

    if-eq v0, v4, :cond_d

    const/16 v4, 0x7e

    if-eq v0, v4, :cond_1

    goto/16 :goto_7

    .line 79
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isBaseItem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Photo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->pauseAudio()V

    return v5

    .line 84
    :cond_3
    sget-object v0, Ltv/emby/embyatv/util/KeyProcessor$8;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 184
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getGridButton()Ltv/emby/embyatv/ui/GridButton;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/GridButton;->getId()I

    move-result v0

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_b

    .line 186
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->Beep()V

    .line 187
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    .line 188
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4, v0}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    invoke-virtual {v2, v1}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 175
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->Beep()V

    .line 176
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->programIsRecording(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-static {v0, v2}, Ltv/emby/embyatv/util/Utils;->handleInProgressPlaybackRequest(Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;)V

    goto :goto_1

    .line 180
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    :goto_1
    return v5

    .line 169
    :pswitch_2
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->Beep()V

    .line 171
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    return v5

    .line 147
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSearchHint()Lmediabrowser/model/search/SearchHint;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/search/SearchHint;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "BoxSet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v13, 0x8

    goto :goto_3

    :sswitch_1
    const-string v4, "Program"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v13, 0x5

    goto :goto_3

    :sswitch_2
    const-string v4, "MusicVideo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v13, 0x4

    goto :goto_3

    :sswitch_3
    const-string v4, "TvChannel"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :sswitch_4
    const-string v4, "Episode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :sswitch_5
    const-string v4, "Video"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v13, 0x3

    goto :goto_3

    :sswitch_6
    const-string v4, "Movie"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v13, 0x0

    goto :goto_3

    :sswitch_7
    const-string v4, "Series"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v13, 0x6

    goto :goto_3

    :sswitch_8
    const-string v4, "Season"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v13, 0x7

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v13, -0x1

    :goto_3
    packed-switch v13, :pswitch_data_1

    goto/16 :goto_6

    .line 162
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-static {v0, v5, v3, v2}, Ltv/emby/embyatv/util/KeyProcessor;->createPlayMenu(Lmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/base/BaseActivity;)V

    return v5

    .line 155
    :pswitch_5
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->Beep()V

    .line 157
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    return v5

    .line 87
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    .line 88
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->CanPlay(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v4

    if-nez v4, :cond_7

    return v3

    .line 89
    :cond_7
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_9
    const-string v6, "ChannelVideoItem"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x6

    goto/16 :goto_5

    :sswitch_a
    const-string v6, "Folder"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x11

    goto/16 :goto_5

    :sswitch_b
    const-string v6, "BoxSet"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xd

    goto/16 :goto_5

    :sswitch_c
    const-string v6, "Playlist"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x10

    goto/16 :goto_5

    :sswitch_d
    const-string v6, "PhotoAlbum"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x14

    goto/16 :goto_5

    :sswitch_e
    const-string v6, "Program"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x5

    goto/16 :goto_5

    :sswitch_f
    const-string v6, "CollectionFolder"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x13

    goto/16 :goto_5

    :sswitch_10
    const-string v6, "MusicVideo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    goto/16 :goto_5

    :sswitch_11
    const-string v6, "MusicAlbum"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xe

    goto/16 :goto_5

    :sswitch_12
    const-string v6, "Trailer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xa

    goto/16 :goto_5

    :sswitch_13
    const-string v6, "TvChannel"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x3

    goto/16 :goto_5

    :sswitch_14
    const-string v6, "Episode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    goto/16 :goto_5

    :sswitch_15
    const-string v6, "Video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x4

    goto :goto_5

    :sswitch_16
    const-string v6, "Photo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x15

    goto :goto_5

    :sswitch_17
    const-string v6, "Movie"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :sswitch_18
    const-string v6, "Audio"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :sswitch_19
    const-string v6, "UserView"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x12

    goto :goto_5

    :sswitch_1a
    const-string v6, "Series"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xb

    goto :goto_5

    :sswitch_1b
    const-string v7, "Season"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xc

    goto :goto_5

    :sswitch_1c
    const-string v6, "AudioPodcast"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x7

    goto :goto_5

    :sswitch_1d
    const-string v6, "MusicArtist"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xf

    goto :goto_5

    :sswitch_1e
    const-string v6, "AudioBook"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x8

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v4, -0x1

    :goto_5
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_6

    .line 131
    :pswitch_7
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->Beep()V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/emby/embyatv/details/PhotoPlayerActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play"

    .line 133
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    invoke-virtual {v2, v0}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return v5

    :pswitch_8
    const-string v0, "livetv"

    .line 125
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "playlists"

    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "photos"

    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 126
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/KeyProcessor;->isMusic(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v1

    invoke-static {v0, v5, v1, v2}, Ltv/emby/embyatv/util/KeyProcessor;->createPlayMenu(Lmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/base/BaseActivity;)V

    :cond_9
    return v5

    .line 118
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-static {v0, v5, v5, v2}, Ltv/emby/embyatv/util/KeyProcessor;->createPlayMenu(Lmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/base/BaseActivity;)V

    return v5

    .line 114
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-static {v0, v5, v3, v2}, Ltv/emby/embyatv/util/KeyProcessor;->createPlayMenu(Lmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/base/BaseActivity;)V

    return v5

    .line 91
    :pswitch_b
    instance-of v4, v1, Ltv/emby/embyatv/itemhandling/AudioQueueItem;

    if-eqz v4, :cond_a

    .line 92
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-static {v1, v0, v2}, Ltv/emby/embyatv/util/KeyProcessor;->createItemMenu(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/model/dto/UserItemDataDto;Ltv/emby/embyatv/base/BaseActivity;)V

    return v5

    .line 107
    :cond_a
    :pswitch_c
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->Beep()V

    .line 109
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    return v5

    .line 194
    :cond_b
    :goto_6
    :pswitch_d
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->hasAudioQueueItems()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 195
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->resumeAudio()V

    return v5

    :cond_c
    :goto_7
    return v3

    .line 204
    :cond_d
    sget-object v0, Ltv/emby/embyatv/util/KeyProcessor$8;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_3

    :pswitch_e
    goto/16 :goto_a

    .line 235
    :pswitch_f
    invoke-static/range {p1 .. p2}, Ltv/emby/embyatv/util/KeyProcessor;->createServerMenu(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)V

    goto/16 :goto_a

    .line 208
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2

    goto/16 :goto_8

    :sswitch_1f
    const-string v3, "ChannelVideoItem"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x5

    goto/16 :goto_9

    :sswitch_20
    const-string v3, "BoxSet"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x8

    goto/16 :goto_9

    :sswitch_21
    const-string v3, "Playlist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xb

    goto/16 :goto_9

    :sswitch_22
    const-string v3, "Program"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x4

    goto/16 :goto_9

    :sswitch_23
    const-string v3, "MusicAlbum"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x9

    goto/16 :goto_9

    :sswitch_24
    const-string v3, "Trailer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xf

    goto/16 :goto_9

    :sswitch_25
    const-string v3, "TvChannel"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    goto/16 :goto_9

    :sswitch_26
    const-string v3, "Episode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_9

    :sswitch_27
    const-string v3, "Video"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x3

    goto :goto_9

    :sswitch_28
    const-string v3, "Photo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x10

    goto :goto_9

    :sswitch_29
    const-string v6, "Movie"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_9

    :sswitch_2a
    const-string v3, "Audio"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xc

    goto :goto_9

    :sswitch_2b
    const-string v3, "Series"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x6

    goto :goto_9

    :sswitch_2c
    const-string v3, "Season"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x7

    goto :goto_9

    :sswitch_2d
    const-string v3, "AudioPodcast"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xd

    goto :goto_9

    :sswitch_2e
    const-string v3, "MusicArtist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xa

    goto :goto_9

    :sswitch_2f
    const-string v3, "AudioBook"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xe

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v3, -0x1

    :goto_9
    packed-switch v3, :pswitch_data_4

    goto :goto_a

    .line 228
    :pswitch_11
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-static {v1, v0, v2}, Ltv/emby/embyatv/util/KeyProcessor;->createItemMenu(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/model/dto/UserItemDataDto;Ltv/emby/embyatv/base/BaseActivity;)V

    :goto_a
    :pswitch_12
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x6ca0a8fd -> :sswitch_8
        -0x6c991569 -> :sswitch_7
        0x4714f10 -> :sswitch_6
        0x4ed245b -> :sswitch_5
        0x72a55db -> :sswitch_4
        0x17833001 -> :sswitch_3
        0x47d02176 -> :sswitch_2
        0x50c7b664 -> :sswitch_1
        0x76f3dab7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d5e7041 -> :sswitch_1e
        -0x711b8e54 -> :sswitch_1d
        -0x6cef0992 -> :sswitch_1c
        -0x6ca0a8fd -> :sswitch_1b
        -0x6c991569 -> :sswitch_1a
        -0xc06ded0 -> :sswitch_19
        0x3caabb6 -> :sswitch_18
        0x4714f10 -> :sswitch_17
        0x4984e12 -> :sswitch_16
        0x4ed245b -> :sswitch_15
        0x72a55db -> :sswitch_14
        0x17833001 -> :sswitch_13
        0x239c2d13 -> :sswitch_12
        0x46a98b6a -> :sswitch_11
        0x47d02176 -> :sswitch_10
        0x4a5a0ccc -> :sswitch_f
        0x50c7b664 -> :sswitch_e
        0x56e63b7d -> :sswitch_d
        0x73e0e5f2 -> :sswitch_c
        0x76f3dab7 -> :sswitch_b
        0x7dc2088e -> :sswitch_a
        0x7e12288b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_10
        :pswitch_12
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_10
        :pswitch_12
        :pswitch_e
        :pswitch_12
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7d5e7041 -> :sswitch_2f
        -0x711b8e54 -> :sswitch_2e
        -0x6cef0992 -> :sswitch_2d
        -0x6ca0a8fd -> :sswitch_2c
        -0x6c991569 -> :sswitch_2b
        0x3caabb6 -> :sswitch_2a
        0x4714f10 -> :sswitch_29
        0x4984e12 -> :sswitch_28
        0x4ed245b -> :sswitch_27
        0x72a55db -> :sswitch_26
        0x17833001 -> :sswitch_25
        0x239c2d13 -> :sswitch_24
        0x46a98b6a -> :sswitch_23
        0x50c7b664 -> :sswitch_22
        0x73e0e5f2 -> :sswitch_21
        0x76f3dab7 -> :sswitch_20
        0x7e12288b -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 42
    sget-object v0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method static synthetic access$200()Ltv/emby/embyatv/base/BaseActivity;
    .locals 1

    .line 42
    sget-object v0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentActivity:Ltv/emby/embyatv/base/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 42
    sget v0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentRowItemNdx:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 42
    sget-boolean v0, Ltv/emby/embyatv/util/KeyProcessor;->isMusic:Z

    return v0
.end method

.method static synthetic access$500(Z)V
    .locals 0

    .line 42
    invoke-static {p0}, Ltv/emby/embyatv/util/KeyProcessor;->toggleFavorite(Z)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 42
    sget-boolean v0, Ltv/emby/embyatv/util/KeyProcessor;->currentItemIsFolder:Z

    return v0
.end method

.method static synthetic access$700()V
    .locals 0

    .line 42
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->markPlayed()V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .line 42
    invoke-static {}, Ltv/emby/embyatv/util/KeyProcessor;->markUnplayed()V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/Boolean;)V
    .locals 0

    .line 42
    invoke-static {p0}, Ltv/emby/embyatv/util/KeyProcessor;->toggleLikes(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static createItemMenu(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/model/dto/UserItemDataDto;Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 10

    .line 284
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    .line 285
    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p2, v1, v2}, Ltv/emby/embyatv/util/Utils;->createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object v1

    .line 288
    instance-of v2, p0, Ltv/emby/embyatv/itemhandling/AudioQueueItem;

    const v3, 0x7f10054a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 289
    instance-of v2, p2, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v6, 0xe

    const v7, 0x7f1004d0

    invoke-interface {v2, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 290
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v6

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v7

    if-eq v6, v7, :cond_1

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const/16 v7, 0xc

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v6, v5, v7, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move v2, v8

    .line 292
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueue()Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/16 v6, 0xd

    add-int/lit8 v7, v2, 0x1

    const v8, 0x7f100583

    invoke-interface {v3, v5, v6, v2, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_9

    :cond_2
    move v7, v2

    goto/16 :goto_9

    .line 294
    :cond_3
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->CanPlay(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Photo"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 295
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "MusicAlbum"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "music"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "musicvideos"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Playlist"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "MusicArtist"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getUnplayedItemCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getUnplayedItemCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v6, 0xa

    const v7, 0x7f100548

    invoke-interface {v2, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 296
    :goto_1
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const/16 v7, 0x8

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v9, :cond_5

    const v9, 0x7f100547

    goto :goto_2

    :cond_5
    const v9, 0x7f100546

    :goto_2
    invoke-interface {v6, v5, v7, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 297
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v6, 0x9

    add-int/lit8 v7, v8, 0x1

    const v9, 0x7f1005b4

    invoke-interface {v2, v5, v6, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3

    :cond_6
    move v7, v8

    .line 298
    :goto_3
    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getAllowPlayFromHere()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v6, 0x13

    add-int/lit8 v8, v7, 0x1

    invoke-interface {v2, v5, v6, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move v7, v8

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_4
    const-string v2, "MusicAlbum"

    .line 301
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "MusicArtist"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "Audio"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "Playlist"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "Audio"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v2, 0x1

    :goto_6
    sput-boolean v2, Ltv/emby/embyatv/util/KeyProcessor;->isMusic:Z

    .line 303
    sget-boolean v2, Ltv/emby/embyatv/util/KeyProcessor;->isMusic:Z

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0xb

    add-int/lit8 v6, v7, 0x1

    const v8, 0x7f10043f

    invoke-interface {v2, v5, v3, v7, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_7

    :cond_b
    move v6, v7

    .line 305
    :goto_7
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->CanAddToPlaylist(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 306
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x14

    add-int/lit8 v7, v6, 0x1

    const-string v8, "Add to Playlist"

    invoke-interface {v2, v5, v3, v6, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v2, v7

    goto :goto_8

    :cond_c
    move v2, v6

    .line 309
    :goto_8
    sget-boolean v3, Ltv/emby/embyatv/util/KeyProcessor;->isMusic:Z

    if-eqz v3, :cond_d

    const-string v3, "Playlist"

    .line 310
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/16 v6, 0xf

    add-int/lit8 v7, v2, 0x1

    const v8, 0x7f1004eb

    invoke-interface {v3, v5, v6, v2, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_9

    :cond_d
    const-string v3, "TvChannel"

    .line 311
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Photo"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 312
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isOreoOrLater()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    .line 314
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/16 v6, 0x12

    add-int/lit8 v7, v2, 0x1

    const v8, 0x7f10061a

    invoke-interface {v3, v5, v6, v2, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move v2, v7

    :cond_e
    if-eqz p1, :cond_f

    .line 316
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 317
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v6, 0x7

    add-int/lit8 v7, v2, 0x1

    const v8, 0x7f10050c

    invoke-virtual {p2, v8}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v6, v2, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_9

    .line 319
    :cond_f
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v6, 0x6

    add-int/lit8 v7, v2, 0x1

    const v8, 0x7f10050b

    invoke-virtual {p2, v8}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v6, v2, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_9
    if-eqz p1, :cond_11

    .line 326
    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 327
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    add-int/lit8 v2, v7, 0x1

    const v3, 0x7f100582

    invoke-virtual {p2, v3}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v4, v7, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_a

    .line 329
    :cond_10
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    add-int/lit8 v2, v7, 0x1

    const v3, 0x7f10043e

    invoke-virtual {p2, v3}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v5, v7, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_a

    :cond_11
    move v2, v7

    .line 333
    :goto_a
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->CanEditSubs(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 334
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x15

    add-int/lit8 v4, v2, 0x1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    const v7, 0x7f10011d

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v3, v2, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v2, v4

    .line 337
    :cond_12
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCanDelete()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 338
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x11

    const v4, 0x7f100486

    invoke-virtual {p2, v4}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 343
    :cond_13
    sput-object v0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 344
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p0

    sput p0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentRowItemNdx:I

    .line 345
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItemId:Ljava/lang/String;

    .line 346
    sput-object p2, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 347
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p0

    sput-boolean p0, Ltv/emby/embyatv/util/KeyProcessor;->currentItemIsFolder:Z

    .line 349
    sget-object p0, Ltv/emby/embyatv/util/KeyProcessor;->menuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 350
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private static createPlayMenu(Lmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/base/BaseActivity;)V
    .locals 7

    .line 355
    invoke-virtual {p3}, Ltv/emby/embyatv/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p3, v0, v1}, Ltv/emby/embyatv/util/Utils;->createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string v2, "Playlist"

    .line 357
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PhotoAlbum"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "music"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0xa

    const v4, 0x7f100548

    invoke-interface {v2, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 358
    :goto_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/16 v4, 0x8

    add-int/lit8 v5, v2, 0x1

    const v6, 0x7f100547

    invoke-interface {v3, v1, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 359
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0x9

    add-int/lit8 v4, v5, 0x1

    const v6, 0x7f1005b4

    invoke-interface {v2, v1, v3, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    if-eqz p2, :cond_1

    .line 361
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const/16 v2, 0xb

    const v3, 0x7f10043f

    invoke-interface {p2, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 366
    :cond_1
    sput-object p0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 367
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItemId:Ljava/lang/String;

    .line 368
    sput-object p3, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 369
    sput-boolean p1, Ltv/emby/embyatv/util/KeyProcessor;->currentItemIsFolder:Z

    .line 371
    sget-object p0, Ltv/emby/embyatv/util/KeyProcessor;->menuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 372
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private static createServerMenu(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 5

    .line 260
    invoke-virtual {p1}, Ltv/emby/embyatv/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    const v4, 0x7f1004c9

    invoke-interface {v1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 262
    new-instance v1, Ltv/emby/embyatv/util/KeyProcessor$1;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/util/KeyProcessor$1;-><init>(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 280
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public static isMusic(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 2

    const-string v0, "Audio"

    .line 256
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "music"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audiobooks"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static markPlayed()V
    .locals 5

    .line 581
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItemId:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/util/KeyProcessor$3;

    invoke-direct {v3}, Ltv/emby/embyatv/util/KeyProcessor$3;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lmediabrowser/apiinteraction/ApiClient;->MarkPlayedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private static markUnplayed()V
    .locals 4

    .line 600
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItemId:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/util/KeyProcessor$4;

    invoke-direct {v3}, Ltv/emby/embyatv/util/KeyProcessor$4;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->MarkUnplayedAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private static toggleFavorite(Z)V
    .locals 4

    .line 619
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItemId:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v3, Ltv/emby/embyatv/util/KeyProcessor$5;

    invoke-direct {v3}, Ltv/emby/embyatv/util/KeyProcessor$5;-><init>()V

    invoke-virtual {v0, v1, v2, p0, v3}, Lmediabrowser/apiinteraction/ApiClient;->UpdateFavoriteStatusAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private static toggleLikes(Ljava/lang/Boolean;)V
    .locals 4

    if-nez p0, :cond_0

    .line 638
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p0

    sget-object v0, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItemId:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/util/KeyProcessor$6;

    invoke-direct {v2}, Ltv/emby/embyatv/util/KeyProcessor$6;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->ClearUserItemRatingAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 652
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/util/KeyProcessor;->mCurrentItemId:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/util/KeyProcessor$7;

    invoke-direct {v3}, Ltv/emby/embyatv/util/KeyProcessor$7;-><init>()V

    invoke-virtual {v0, v1, v2, p0, v3}, Lmediabrowser/apiinteraction/ApiClient;->UpdateUserItemRatingAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method
