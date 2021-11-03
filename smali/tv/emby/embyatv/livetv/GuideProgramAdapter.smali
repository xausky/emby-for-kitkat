.class public Ltv/emby/embyatv/livetv/GuideProgramAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GuideProgramAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private currentCellId:I

.field private focusFirstItem:Z

.field private mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

.field private mContext:Landroid/content/Context;

.field private mInflator:Landroid/view/LayoutInflater;

.field private requestedFocusRow:I

.field private useLimitedLayout:Z

.field private useOneLineRow:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ltv/emby/embyatv/livetv/ILiveTvGuide;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->useLimitedLayout:Z

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->useOneLineRow:Z

    const/4 v2, -0x1

    .line 36
    iput v2, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->requestedFocusRow:I

    .line 37
    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->focusFirstItem:Z

    .line 80
    iput v1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->currentCellId:I

    .line 41
    iput-object p1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    return-void
.end method

.method private addPlaceHolders(Landroid/widget/LinearLayout;Lmediabrowser/model/livetv/ChannelInfoDto;I)V
    .locals 8

    .line 85
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v1}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalStartDate()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    if-lez p3, :cond_1

    .line 87
    new-instance v1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v1}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    const/16 v2, 0x3c

    if-le v2, p3, :cond_0

    move v2, p3

    :cond_0
    const-string v3, "Program"

    .line 90
    invoke-virtual {v1, v3}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    const-string v3, "Empty"

    .line 91
    invoke-virtual {v1, v3}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f100528

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/dto/BaseItemDto;->setChannelName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/dto/BaseItemDto;->setChannelNumber(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/dto/BaseItemDto;->setChannelId(Ljava/lang/String;)V

    .line 96
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->convertToUtcDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/dto/BaseItemDto;->setStartDate(Ljava/util/Date;)V

    .line 97
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const v6, 0xea60

    mul-int v6, v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->convertToUtcDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmediabrowser/model/dto/BaseItemDto;->setEndDate(Ljava/util/Date;)V

    .line 98
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    add-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 99
    new-instance v3, Ltv/emby/embyatv/ui/ProgramGridCell;

    iget-object v4, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    iget-boolean v6, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->useOneLineRow:Z

    invoke-direct {v3, v4, v5, v1, v6}, Ltv/emby/embyatv/ui/ProgramGridCell;-><init>(Landroid/content/Context;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/dto/BaseItemDto;Z)V

    .line 100
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    iget v1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->currentCellId:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->currentCellId:I

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->setId(I)V

    .line 102
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->PIXELS_PER_MINUTE:I

    mul-int v4, v4, v2

    sget v5, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->ROW_HEIGHT:I

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v3, v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->setVisibility(I)V

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v3, v1}, Ltv/emby/embyatv/ui/ProgramGridCell;->setFocusable(Z)V

    sub-int/2addr p3, v2

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private fillProgramRow(Landroid/widget/LinearLayout;Ljava/util/List;Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;",
            "Lmediabrowser/model/livetv/ChannelInfoDto;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 115
    :try_start_0
    new-instance v4, Ltv/emby/embyatv/ui/ChannelGridCell;

    iget-object v5, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mContext:Landroid/content/Context;

    iget-object v6, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-direct {v4, v5, v6, v2}, Ltv/emby/embyatv/ui/ChannelGridCell;-><init>(Landroid/content/Context;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/livetv/ChannelInfoDto;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const-wide/32 v5, 0xea60

    if-nez v4, :cond_1

    .line 118
    iget-boolean v4, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->useLimitedLayout:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x78

    goto :goto_0

    :cond_0
    iget-object v4, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v4}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalEndDate()J

    move-result-wide v7

    iget-object v4, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v4}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalStartDate()J

    move-result-wide v9

    const/4 v4, 0x0

    sub-long/2addr v7, v9

    div-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    :goto_0
    invoke-direct {v1, v0, v2, v4}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->addPlaceHolders(Landroid/widget/LinearLayout;Lmediabrowser/model/livetv/ChannelInfoDto;I)V

    goto/16 :goto_4

    .line 120
    :cond_1
    iget-object v4, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v4}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalStartDate()J

    move-result-wide v7

    const-wide/32 v9, 0x6ddd00

    add-long/2addr v9, v7

    .line 124
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmediabrowser/model/dto/BaseItemDto;

    .line 126
    invoke-virtual {v11}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 127
    iget-object v14, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v14}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalStartDate()J

    move-result-wide v14

    cmp-long v14, v12, v14

    if-gez v14, :cond_2

    iget-object v12, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v12}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalStartDate()J

    move-result-wide v12

    :cond_2
    cmp-long v14, v12, v7

    if-lez v14, :cond_3

    sub-long v7, v12, v7

    .line 130
    div-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v7

    invoke-direct {v1, v0, v2, v7}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->addPlaceHolders(Landroid/widget/LinearLayout;Lmediabrowser/model/livetv/ChannelInfoDto;I)V

    .line 132
    :cond_3
    invoke-virtual {v11}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 133
    iget-object v14, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v14}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalEndDate()J

    move-result-wide v14

    cmp-long v14, v7, v14

    if-lez v14, :cond_4

    iget-object v7, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v7}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalEndDate()J

    move-result-wide v7

    :cond_4
    const/4 v14, 0x0

    sub-long v12, v7, v12

    .line 135
    div-long/2addr v12, v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 137
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_5

    .line 138
    new-instance v13, Ltv/emby/embyatv/ui/ProgramGridCell;

    iget-object v14, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mContext:Landroid/content/Context;

    iget-object v15, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    iget-boolean v5, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->useOneLineRow:Z

    invoke-direct {v13, v14, v15, v11, v5}, Ltv/emby/embyatv/ui/ProgramGridCell;-><init>(Landroid/content/Context;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/dto/BaseItemDto;Z)V

    .line 139
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    iget v5, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->currentCellId:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->currentCellId:I

    invoke-virtual {v13, v5}, Ltv/emby/embyatv/ui/ProgramGridCell;->setId(I)V

    .line 141
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v6

    sget v11, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->PIXELS_PER_MINUTE:I

    mul-int v6, v6, v11

    sget v11, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->ROW_HEIGHT:I

    invoke-direct {v5, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v5}, Ltv/emby/embyatv/ui/ProgramGridCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {v13, v3}, Ltv/emby/embyatv/ui/ProgramGridCell;->setVisibility(I)V

    const/4 v5, 0x1

    .line 143
    invoke-virtual {v13, v5}, Ltv/emby/embyatv/ui/ProgramGridCell;->setFocusable(Z)V

    .line 146
    :cond_5
    iget-boolean v5, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->useLimitedLayout:Z

    if-eqz v5, :cond_6

    cmp-long v5, v7, v9

    if-ltz v5, :cond_6

    goto :goto_2

    :cond_6
    const-wide/32 v5, 0xea60

    goto/16 :goto_1

    .line 150
    :cond_7
    :goto_2
    iget-boolean v4, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->useLimitedLayout:Z

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v4, v1, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v4}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalEndDate()J

    move-result-wide v9

    :goto_3
    cmp-long v4, v7, v9

    if-gez v4, :cond_9

    sub-long/2addr v9, v7

    const-wide/32 v4, 0xea60

    .line 153
    div-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-direct {v1, v0, v2, v4}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->addPlaceHolders(Landroid/widget/LinearLayout;Lmediabrowser/model/livetv/ChannelInfoDto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 160
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v4, "Error building program row"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 71
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    check-cast p1, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->onBindViewHolder(Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;I)V
    .locals 3
    .param p1    # Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/livetv/ChannelInfoDto;

    .line 58
    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/livetv/TvManager;->getProgramsForChannel(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 59
    iget-object v2, p1, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;->mProgramRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 60
    iget-object v2, p1, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;->mProgramRow:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v1, v0}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->fillProgramRow(Landroid/widget/LinearLayout;Ljava/util/List;Lmediabrowser/model/livetv/ChannelInfoDto;)V

    .line 61
    iget v0, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->requestedFocusRow:I

    if-ne p2, v0, :cond_2

    .line 62
    iget-object p2, p1, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;->mProgramRow:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->focusFirstItem:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;->mProgramRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 p1, -0x1

    .line 64
    iput p1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->requestedFocusRow:I

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 49
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p2, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;-><init>(Ltv/emby/embyatv/livetv/GuideProgramAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setRequestedFocus(IZ)V
    .locals 0

    .line 76
    iput p1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->requestedFocusRow:I

    .line 77
    iput-boolean p2, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->focusFirstItem:Z

    return-void
.end method

.method public setUseLimitedLayout(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->useLimitedLayout:Z

    return-void
.end method

.method public setUseOneLineRow(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter;->useOneLineRow:Z

    return-void
.end method
