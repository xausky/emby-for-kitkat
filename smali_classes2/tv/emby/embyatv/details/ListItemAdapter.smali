.class public Ltv/emby/embyatv/details/ListItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/details/ListItemAdapter$RowClickedListener;,
        Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;,
        Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;,
        Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;,
        Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private favoriteOnly:Z

.field private isAudioBook:Z

.field private mApplication:Ltv/emby/embyatv/TvApp;

.field private mContext:Landroid/content/Context;

.field private mDetailGotFocusListener:Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

.field private mRowSelectedListener:Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

.field private mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

.field private mUseExpandedView:Z

.field private mWatchedToggleButton:Ltv/emby/embyatv/ui/TextUnderButton;

.field private mainArtistName:Ljava/lang/String;

.field private markWatchedListener:Landroid/view/View$OnClickListener;

.field private onFiltersChanged:Ltv/emby/embyatv/model/GenericEvent;

.field private roboto:Landroid/graphics/Typeface;

.field private unwatchedOnly:Z

.field private useActualIndex:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mUseExpandedView:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    .line 74
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->roboto:Landroid/graphics/Typeface;

    .line 75
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    const-string v0, ""

    .line 82
    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mainArtistName:Ljava/lang/String;

    .line 638
    new-instance v0, Ltv/emby/embyatv/details/ListItemAdapter$15;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ListItemAdapter$15;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;)V

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->markWatchedListener:Landroid/view/View$OnClickListener;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    .line 88
    iput-boolean p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mUseExpandedView:Z

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/details/ListItemAdapter;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->unwatchedOnly:Z

    return p0
.end method

.method static synthetic access$002(Ltv/emby/embyatv/details/ListItemAdapter;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->unwatchedOnly:Z

    return p1
.end method

.method static synthetic access$100(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/model/GenericEvent;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->onFiltersChanged:Ltv/emby/embyatv/model/GenericEvent;

    return-object p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->markPlayed(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/graphics/Typeface;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->roboto:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mDetailGotFocusListener:Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    return-object p0
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mRowSelectedListener:Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/details/ListItemAdapter;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->favoriteOnly:Z

    return p0
.end method

.method static synthetic access$202(Ltv/emby/embyatv/details/ListItemAdapter;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->favoriteOnly:Z

    return p1
.end method

.method static synthetic access$300(Ltv/emby/embyatv/details/ListItemAdapter;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/details/ListItemAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->cleanItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/details/ListItemAdapter;Ljava/util/List;)I
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->getFirstUnwatchedIndex(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/TvApp;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    return-object p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/details/ListItemAdapter;)Lmediabrowser/model/livetv/SeriesTimerInfoDto;
    .locals 0

    .line 67
    iget-object p0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    return-object p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->markUnPlayed(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method private addButtons(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Lmediabrowser/model/dto/BaseItemDto;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 354
    iget-object v3, v1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mButtonRow:Landroid/widget/LinearLayout;

    .line 355
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 357
    invoke-static/range {p2 .. p2}, Ltv/emby/embyatv/util/Utils;->CanPlay(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    .line 358
    invoke-direct/range {p0 .. p0}, Ltv/emby/embyatv/details/ListItemAdapter;->canResume()Z

    move-result v4

    .line 359
    iget-boolean v6, v0, Ltv/emby/embyatv/details/ListItemAdapter;->isAudioBook:Z

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 360
    new-instance v6, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v8, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f080175

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v7, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f10058f

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ltv/emby/embyatv/details/ListItemAdapter$4;

    invoke-direct {v13, v0}, Ltv/emby/embyatv/details/ListItemAdapter$4;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;)V

    move-object v7, v6

    move/from16 v10, p3

    invoke-direct/range {v7 .. v13}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 372
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    invoke-virtual {v6}, Ltv/emby/embyatv/ui/TextUnderButton;->requestFocus()Z

    .line 376
    :cond_0
    new-instance v6, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v15, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v16, 0x7f080162

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v7, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x7f100547

    goto :goto_0

    :cond_1
    const v8, 0x7f100546

    :goto_0
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ltv/emby/embyatv/details/ListItemAdapter$5;

    invoke-direct {v7, v0, v2}, Ltv/emby/embyatv/details/ListItemAdapter$5;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    move-object v14, v6

    move/from16 v17, p3

    move-object/from16 v20, v7

    invoke-direct/range {v14 .. v20}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 391
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez v4, :cond_2

    .line 392
    invoke-virtual {v6}, Ltv/emby/embyatv/ui/TextUnderButton;->requestFocus()Z

    .line 393
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 394
    new-instance v4, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v7, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f08018f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v6, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f1005b4

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ltv/emby/embyatv/details/ListItemAdapter$6;

    invoke-direct {v12, v0, v2}, Ltv/emby/embyatv/details/ListItemAdapter$6;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    move-object v6, v4

    move/from16 v9, p3

    invoke-direct/range {v6 .. v12}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 413
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    const-string v4, "MusicAlbum"

    .line 417
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Ltv/emby/embyatv/details/ListItemAdapter;->isAudioBook:Z

    if-nez v4, :cond_4

    .line 418
    new-instance v4, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v7, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f080141

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v6, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f1004eb

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ltv/emby/embyatv/details/ListItemAdapter$7;

    invoke-direct {v12, v0, v2}, Ltv/emby/embyatv/details/ListItemAdapter$7;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    move-object v6, v4

    move/from16 v9, p3

    invoke-direct/range {v6 .. v12}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 425
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "FAV_SONGS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "SeriesTimer"

    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 429
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "VIDEO_QUEUE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "Season"

    .line 430
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getSupportsResume()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 432
    :cond_5
    new-instance v4, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v7, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, 0x7f08016e

    const v8, 0x7f08016e

    goto :goto_1

    :cond_6
    const v6, 0x7f0801b7

    const v8, 0x7f0801b7

    :goto_1
    iget-object v6, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f100613

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Ltv/emby/embyatv/details/ListItemAdapter;->markWatchedListener:Landroid/view/View$OnClickListener;

    move-object v6, v4

    move/from16 v9, p3

    invoke-direct/range {v6 .. v11}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    :cond_7
    invoke-static/range {p2 .. p2}, Ltv/emby/embyatv/util/Utils;->CanRate(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 437
    new-instance v4, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v7, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v6

    invoke-virtual {v6}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f080171

    const v8, 0x7f080171

    goto :goto_2

    :cond_8
    const v6, 0x7f0801b9

    const v8, 0x7f0801b9

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v6, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f1005f2

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ltv/emby/embyatv/details/ListItemAdapter$8;

    invoke-direct {v12, v0, v2}, Ltv/emby/embyatv/details/ListItemAdapter$8;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    move-object v6, v4

    move/from16 v9, p3

    invoke-direct/range {v6 .. v12}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 451
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9
    const-string v4, "Playlist"

    .line 456
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "VIDEO_QUEUE"

    .line 457
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 458
    new-instance v4, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v7, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f080183

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v5, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f100597

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ltv/emby/embyatv/details/ListItemAdapter$9;

    invoke-direct {v12, v0}, Ltv/emby/embyatv/details/ListItemAdapter$9;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;)V

    move-object v6, v4

    move/from16 v9, p3

    invoke-direct/range {v6 .. v12}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    :cond_a
    new-instance v4, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v14, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0801a6

    iget-object v5, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f100486

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v5, Ltv/emby/embyatv/details/ListItemAdapter$10;

    invoke-direct {v5, v0, v2}, Ltv/emby/embyatv/details/ListItemAdapter$10;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    move-object v13, v4

    move/from16 v16, p3

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 521
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    :cond_b
    iget-object v4, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v4, :cond_c

    const-string v4, "SeriesTimer"

    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 527
    new-instance v4, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v6, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f080087

    iget-object v5, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f1005a7

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ltv/emby/embyatv/details/ListItemAdapter$11;

    invoke-direct {v10, v0, v2, v1}, Ltv/emby/embyatv/details/ListItemAdapter$11;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;)V

    move-object v5, v4

    move/from16 v8, p3

    invoke-direct/range {v5 .. v10}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 536
    new-instance v1, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v12, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0801a6

    iget-object v4, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f100466

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ltv/emby/embyatv/details/ListItemAdapter$12;

    invoke-direct {v4, v0}, Ltv/emby/embyatv/details/ListItemAdapter$12;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;)V

    move-object v11, v1

    move/from16 v14, p3

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 567
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 571
    new-instance v1, Ltv/emby/embyatv/ui/TextUnderButton;

    iget-object v5, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0801b0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v4, v0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f100538

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ltv/emby/embyatv/details/ListItemAdapter$13;

    invoke-direct {v10, v0, v2}, Ltv/emby/embyatv/details/ListItemAdapter$13;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    move-object v4, v1

    move/from16 v7, p3

    invoke-direct/range {v4 .. v10}, Ltv/emby/embyatv/ui/TextUnderButton;-><init>(Landroid/content/Context;IILjava/lang/Integer;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 580
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private addGenres(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V
    .locals 10

    .line 726
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 728
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/dto/NameIdPair;

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "  /  "

    const/16 v4, 0xe

    invoke-static {v0, p2, v3, v4}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    .line 731
    new-instance v9, Ltv/emby/embyatv/ui/GenreButton;

    iget-object v4, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Ltv/emby/embyatv/details/ListItemAdapter;->roboto:Landroid/graphics/Typeface;

    const/16 v6, 0x10

    invoke-virtual {v2}, Lmediabrowser/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ltv/emby/embyatv/ui/GenreButton;-><init>(Landroid/content/Context;Landroid/graphics/Typeface;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addInfoToGenreRow(Ltv/emby/embyatv/model/InfoItem;Landroid/widget/LinearLayout;)V
    .locals 5

    .line 344
    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 345
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 346
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 347
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "%s%s%s %s"

    const/4 v2, 0x4

    .line 348
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "   \u2022   "

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p1}, Ltv/emby/embyatv/model/InfoItem;->Invert()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ltv/emby/embyatv/model/InfoItem;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ltv/emby/embyatv/model/InfoItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Ltv/emby/embyatv/model/InfoItem;->Invert()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    const-string v4, ":"

    :goto_2
    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Ltv/emby/embyatv/model/InfoItem;->Invert()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ltv/emby/embyatv/model/InfoItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ltv/emby/embyatv/model/InfoItem;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_3
    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private canResume()Z
    .locals 1

    .line 758
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->getFirstUnwatchedIndex(Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cleanItems(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/BaseItemDto;

    const-string v2, "Label"

    .line 610
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private fillCommonExpandedFields(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 4

    .line 325
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mItemName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 326
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mItemName:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 327
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mItemName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 328
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mItemName:Landroid/widget/TextView;

    invoke-static {p2}, Ltv/emby/embyatv/util/Utils;->getEpisodeTitle(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mInfoRow:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {v0, p2, v1, v2, v3}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZ)V

    .line 330
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 331
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 332
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 333
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x9d

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p2, v0, v1}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;II)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 336
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    invoke-static {v0, p2, p1}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mPoster:Landroid/widget/ImageView;

    const p2, 0x7f0801b3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private findItemIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 119
    :goto_0
    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 120
    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getFirstUnwatchedIndex(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 762
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 763
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/BaseItemDto;

    .line 764
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getSupportsResume()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getMainItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 2

    .line 127
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private isVideoContent()Z
    .locals 2

    .line 131
    invoke-direct {p0}, Ltv/emby/embyatv/details/ListItemAdapter;->getMainItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Video"

    .line 132
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private markPlayed(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 4

    .line 671
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/ListItemAdapter$16;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/ListItemAdapter$16;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;)V

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3, v2}, Lmediabrowser/apiinteraction/ApiClient;->MarkPlayedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private markUnPlayed(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 3

    .line 688
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/details/ListItemAdapter$17;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/ListItemAdapter$17;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;)V

    invoke-virtual {v0, p1, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->MarkUnplayedAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private updatePoster(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 7

    .line 705
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x969b00d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x570dbf9a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "FAV_SONGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "VIDEO_QUEUE"

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

    .line 713
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_favor_logo"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    const/16 v1, 0x258

    invoke-static {p2, v0, v1}, Ltv/emby/embyatv/util/Utils;->getLogoImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 710
    :pswitch_0
    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mPoster:Landroid/widget/ImageView;

    const p2, 0x7f0801a5

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 707
    :pswitch_1
    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mPoster:Landroid/widget/ImageView;

    const p2, 0x7f0800d3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 714
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 715
    invoke-static {p2, v4, v4}, Ltv/emby/embyatv/util/Utils;->getImageAspectRatio(Lmediabrowser/model/dto/BaseItemDto;ZZ)Ljava/lang/Double;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0xa0

    :goto_3
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    move v6, v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0xfa

    goto :goto_3

    .line 717
    :goto_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;

    move-result-object v0

    .line 720
    :cond_5
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mPoster:Landroid/widget/ImageView;

    invoke-static {p2, v0, p1}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWatched(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 738
    :cond_0
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mUseExpandedView:Z

    if-eqz v0, :cond_3

    .line 739
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mWatchedIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 740
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 741
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 742
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int p2, v3

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 743
    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 745
    :cond_2
    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const-string v0, "Video"

    .line 748
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->isAudioBook:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 749
    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mWatchedMark:Landroid/widget/TextView;

    const-string p2, "&#x2713;"

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 751
    :cond_5
    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mWatchedMark:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getFilters()[Lmediabrowser/model/querying/ItemFilter;
    .locals 2

    .line 139
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->unwatchedOnly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->favoriteOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-boolean v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->favoriteOnly:Z

    if-eqz v1, :cond_1

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    iget-boolean v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->unwatchedOnly:Z

    if-eqz v1, :cond_2

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsUnplayed:Lmediabrowser/model/querying/ItemFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lmediabrowser/model/querying/ItemFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/querying/ItemFilter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 773
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Label"

    .line 778
    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mUseExpandedView:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public isFavoriteOnly()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->favoriteOnly:Z

    return v0
.end method

.method public isUnwatchedOnly()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->unwatchedOnly:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 159
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-nez p2, :cond_11

    .line 165
    check-cast p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

    .line 167
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mTitle:Landroid/widget/TextView;

    const-string v9, "Season"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {p2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mMainInfoRow:Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v9, v8, v8}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZ)V

    .line 169
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mGenreRow:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 170
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 171
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mGenreRow:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p2}, Ltv/emby/embyatv/details/ListItemAdapter;->addGenres(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;)V

    :cond_1
    const-string p2, "MusicAlbum"

    .line 173
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 174
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSongCount()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSongCount()Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_4

    .line 176
    new-instance v9, Ltv/emby/embyatv/model/InfoItem;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v6, :cond_3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v10

    const v11, 0x7f1005c2

    :goto_2
    invoke-virtual {v10, v11}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v10

    const v11, 0x7f1005c3

    goto :goto_2

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v9, v10, p2, v6}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mGenreRow:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, p2}, Ltv/emby/embyatv/details/ListItemAdapter;->addInfoToGenreRow(Ltv/emby/embyatv/model/InfoItem;Landroid/widget/LinearLayout;)V

    .line 177
    :cond_4
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long p2, v9, v3

    if-lez p2, :cond_5

    .line 178
    new-instance p2, Ltv/emby/embyatv/model/InfoItem;

    const-string v3, ""

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    div-long/2addr v9, v1

    invoke-static {v9, v10}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v3, v1, v6}, Ltv/emby/embyatv/model/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mGenreRow:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2, v1}, Ltv/emby/embyatv/details/ListItemAdapter;->addInfoToGenreRow(Ltv/emby/embyatv/model/InfoItem;Landroid/widget/LinearLayout;)V

    .line 181
    :cond_5
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mGenreRow:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mGenreRow:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    :cond_6
    sget p2, Ltv/emby/embyatv/details/ItemListActivity;->BUTTON_SIZE:I

    invoke-direct {p0, p1, v0, p2}, Ltv/emby/embyatv/details/ListItemAdapter;->addButtons(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Lmediabrowser/model/dto/BaseItemDto;I)V

    .line 184
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 185
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 187
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/details/ListItemAdapter$1;

    invoke-direct {v3, p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$1;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;)V

    invoke-virtual {p2, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_4

    .line 194
    :cond_8
    iget-object v1, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_4
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string p2, "Season"

    .line 198
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "Series"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v6, :cond_b

    invoke-virtual {p0}, Ltv/emby/embyatv/details/ListItemAdapter;->isFavoriteOnly()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p0}, Ltv/emby/embyatv/details/ListItemAdapter;->isUnwatchedOnly()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_5

    .line 224
    :cond_a
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mItemTotal:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 200
    :cond_b
    :goto_5
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object p2

    const/16 v1, 0x1c

    .line 201
    invoke-static {p2, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    .line 202
    iget-object v2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mToolbar:Landroid/widget/LinearLayout;

    new-instance v3, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/details/ListItemAdapter;->isUnwatchedOnly()Z

    move-result v4

    if-eqz v4, :cond_c

    const v4, 0x7f0801ad

    goto :goto_6

    :cond_c
    const v4, 0x7f0801ae

    :goto_6
    new-instance v7, Ltv/emby/embyatv/details/ListItemAdapter$2;

    invoke-direct {v7, p0}, Ltv/emby/embyatv/details/ListItemAdapter$2;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;)V

    invoke-direct {v3, p2, v4, v1, v7}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    iget-object v2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mToolbar:Landroid/widget/LinearLayout;

    new-instance v3, Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p0}, Ltv/emby/embyatv/details/ListItemAdapter;->isFavoriteOnly()Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0x7f080171

    goto :goto_7

    :cond_d
    const v4, 0x7f0801b9

    :goto_7
    new-instance v7, Ltv/emby/embyatv/details/ListItemAdapter$3;

    invoke-direct {v7, p0}, Ltv/emby/embyatv/details/ListItemAdapter$3;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;)V

    invoke-direct {v3, p2, v4, v1, v7}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    .line 220
    iget-object v1, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mItemTotal:Landroid/widget/TextView;

    if-ne p2, v6, :cond_e

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    const v2, 0x7f100534

    invoke-virtual {p2, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_e
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    const v3, 0x7f100615

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v8

    invoke-virtual {v2, v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_8
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mItemTotal:Landroid/widget/TextView;

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :goto_9
    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->updatePoster(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Lmediabrowser/model/dto/BaseItemDto;)V

    const-string p2, "TvChannel"

    .line 230
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "SeriesTimer"

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 232
    :cond_f
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mMiddleFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 233
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x104

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 234
    iget-object v0, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mMiddleFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mRightFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 236
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 237
    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;->mRightFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :cond_10
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mDetailGotFocusListener:Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mDetailGotFocusListener:Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    invoke-virtual {p1, v5}, Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;->onRowSelected(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V

    goto/16 :goto_19

    :cond_11
    const-string v9, "Label"

    .line 245
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 246
    check-cast p1, Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 249
    :cond_12
    check-cast p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    .line 250
    iget-object v9, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    if-eqz v9, :cond_14

    iget-object v9, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    iget-boolean v10, p0, Ltv/emby/embyatv/details/ListItemAdapter;->useActualIndex:Z

    if-eqz v10, :cond_13

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10, p2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/Integer;I)I

    move-result p2

    :cond_13
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_14
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p2

    const/4 v9, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x3caabb6

    if-eq v10, v11, :cond_16

    const v11, 0x50c7b664

    if-eq v10, v11, :cond_15

    goto :goto_a

    :cond_15
    const-string v10, "Program"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    const/4 v9, 0x1

    goto :goto_a

    :cond_16
    const-string v10, "Audio"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    const/4 v9, 0x0

    :cond_17
    :goto_a
    packed-switch v9, :pswitch_data_0

    .line 284
    iget-boolean p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mUseExpandedView:Z

    if-eqz p2, :cond_28

    .line 285
    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->fillCommonExpandedFields(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 286
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 287
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mFavIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x0

    goto/16 :goto_12

    .line 269
    :pswitch_0
    iget-boolean p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mUseExpandedView:Z

    if-eqz p2, :cond_18

    .line 270
    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->fillCommonExpandedFields(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Lmediabrowser/model/dto/BaseItemDto;)V

    goto/16 :goto_18

    .line 272
    :cond_18
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mIndexNo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_19

    const v5, 0x7f08016c

    goto :goto_b

    :cond_19
    const v5, 0x7f080166

    :goto_b
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 274
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mItemName:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_1a
    const-string v6, ""

    :goto_c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v8

    invoke-static {v8}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEpisodeTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 276
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " E"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_1b
    const-string v6, ""

    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    .line 278
    :cond_1c
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_18

    .line 253
    :pswitch_1
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1d

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1d

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p2

    :goto_e
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmediabrowser/model/dto/NameIdPair;

    invoke-virtual {p2}, Lmediabrowser/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1e

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1e

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_e

    :cond_1e
    move-object p2, v5

    .line 255
    :goto_f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f

    iget-object v9, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mainArtistName:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 256
    iget-object v7, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 258
    :cond_1f
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    :goto_10
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result p2

    if-eqz p2, :cond_20

    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v5

    :cond_20
    if-eqz v5, :cond_21

    .line 263
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    const-string v7, "*** Playing Item id %s this item Id %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-interface {p2, v7, v9}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    if-eqz v5, :cond_22

    .line 265
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    goto :goto_11

    :cond_22
    const/4 v6, 0x0

    :goto_11
    invoke-virtual {p1, v6}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->setPlaying(Z)Z

    .line 266
    iget-boolean p2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->isAudioBook:Z

    if-eqz p2, :cond_2b

    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->updateWatched(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Lmediabrowser/model/dto/BaseItemDto;)V

    goto/16 :goto_18

    :cond_23
    const/16 v5, 0x8

    .line 287
    :goto_12
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13

    .line 289
    :cond_24
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mFavIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    :goto_13
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object p2

    sget-object v5, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    if-ne p2, v5, :cond_27

    .line 292
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_26

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_25

    goto :goto_14

    .line 295
    :cond_25
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mBanner:Landroid/widget/ImageView;

    const v5, 0x7f080140

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 293
    :cond_26
    :goto_14
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mBanner:Landroid/widget/ImageView;

    const v5, 0x7f0800d1

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    :goto_15
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 299
    :cond_27
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :goto_16
    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->updateWatched(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_18

    .line 303
    :cond_28
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_29

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " S"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " E"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    :cond_29
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 305
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mItemName:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 308
    :cond_2a
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mExtraName:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    :goto_17
    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->updateWatched(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 317
    :cond_2b
    :goto_18
    iget-object p2, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mRunTime:Landroid/widget/TextView;

    if-eqz p2, :cond_2d

    .line 318
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_2c

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long/2addr v3, v1

    :cond_2c
    invoke-static {v3, v4}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object p2

    .line 319
    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->mRunTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    :goto_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 152
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const v2, 0x7f0d0097

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    const v2, 0x7f0d00b9

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    const v2, 0x7f0d0056

    goto :goto_0

    :cond_2
    const v2, 0x7f0d0057

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p2, :cond_3

    .line 153
    new-instance p2, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;

    invoke-direct {p2, p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Landroid/view/View;)V

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_4

    new-instance p2, Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;

    invoke-direct {p2, p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$LabelViewHolder;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Landroid/view/View;)V

    goto :goto_1

    :cond_4
    new-instance p2, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Landroid/view/View;)V

    :goto_1
    return-object p2
.end method

.method public play(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 585
    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->play(Ljava/util/List;I)V

    return-void
.end method

.method public play(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;I)V"
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Ltv/emby/embyatv/details/ListItemAdapter;->isVideoContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-direct {p0}, Ltv/emby/embyatv/details/ListItemAdapter;->getMainItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getPlaybackActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 594
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Position"

    .line 595
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    .line 598
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 601
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->cleanItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-boolean v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->isAudioBook:Z

    invoke-virtual {v0, p1, p2, v1}, Ltv/emby/embyatv/playback/MediaManager;->playNow(Ljava/util/List;IZ)V

    :goto_1
    return-void
.end method

.method public removeItem(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, p1}, Ltv/emby/embyatv/details/ListItemAdapter;->findItemIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 112
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public setDetailGotFocusListener(Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;)V
    .locals 0

    .line 787
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mDetailGotFocusListener:Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    .line 95
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "MusicAlbum"

    .line 96
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSupportsResume()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->isAudioBook:Z

    .line 98
    iput-boolean p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->useActualIndex:Z

    .line 99
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/NameIdPair;

    invoke-virtual {p1}, Lmediabrowser/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mainArtistName:Ljava/lang/String;

    .line 105
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/details/ListItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnFiltersChanged(Ltv/emby/embyatv/model/GenericEvent;)V
    .locals 0

    .line 91
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->onFiltersChanged:Ltv/emby/embyatv/model/GenericEvent;

    return-void
.end method

.method public setRowSelectedListener(Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;)V
    .locals 0

    .line 792
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mRowSelectedListener:Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    return-void
.end method

.method public setSeriesTimerInfo(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V
    .locals 0

    .line 782
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    return-void
.end method

.method public showRecordingOptions(Ljava/lang/String;Lmediabrowser/model/dto/BaseItemDto;Landroid/view/View;)V
    .locals 8

    .line 618
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v7

    .line 620
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 621
    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/base/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 622
    new-instance v1, Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v7, 0x2

    sub-int v5, v0, v2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v6

    move-object v2, v1

    move-object v4, p3

    invoke-direct/range {v2 .. v7}, Ltv/emby/embyatv/ui/RecordPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;Landroid/view/View;III)V

    iput-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    .line 625
    :cond_0
    iget-object p3, p0, Ltv/emby/embyatv/details/ListItemAdapter;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p3

    new-instance v0, Ltv/emby/embyatv/details/ListItemAdapter$14;

    invoke-direct {v0, p0, p2}, Ltv/emby/embyatv/details/ListItemAdapter$14;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {p3, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvSeriesTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
