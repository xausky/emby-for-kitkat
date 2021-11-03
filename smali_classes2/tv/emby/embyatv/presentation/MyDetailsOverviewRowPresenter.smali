.class public Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;
.super Landroidx/leanback/widget/RowPresenter;
.source "MyDetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;
    }
.end annotation


# instance fields
.field private viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/leanback/widget/RowPresenter;-><init>()V

    return-void
.end method

.method private addGenres(Landroid/widget/LinearLayout;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 15

    move-object/from16 v0, p1

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 154
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 157
    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmediabrowser/model/dto/NameIdPair;

    if-nez v4, :cond_0

    .line 158
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v4

    const-string v7, "  /  "

    const/16 v8, 0xc

    invoke-static {v4, v0, v7, v8}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 160
    :cond_0
    new-instance v4, Ltv/emby/embyatv/ui/GenreButton;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v10

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v11

    const/16 v12, 0xe

    invoke-virtual {v6}, Lmediabrowser/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v14

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Ltv/emby/embyatv/ui/GenreButton;-><init>(Landroid/content/Context;Landroid/graphics/Typeface;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/2addr v5, v3

    const/4 v4, 0x2

    if-le v5, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private addInfoToGenreRow(Ltv/emby/embyatv/model/InfoItem;)V
    .locals 5

    .line 186
    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "%s%s%s %s"

    const/4 v2, 0x4

    .line 190
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v3}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

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

    .line 191
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addInfoItem(Ltv/emby/embyatv/model/InfoItem;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Ltv/emby/embyatv/model/InfoItem;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ltv/emby/embyatv/model/InfoItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->addInfoToGenreRow(Ltv/emby/embyatv/model/InfoItem;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createRowViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->createRowViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createRowViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;
    .locals 3

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0097

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance v0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;-><init>(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;Landroid/view/View;)V

    iput-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    .line 97
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    return-object p1
.end method

.method public getButtonRow()Landroid/widget/LinearLayout;
    .locals 1

    .line 195
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getGenreRow()Landroid/widget/LinearLayout;
    .locals 1

    .line 197
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getInfoRow()Landroid/widget/LinearLayout;
    .locals 1

    .line 199
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPosterView()Landroid/widget/ImageView;
    .locals 1

    .line 196
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$500(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    .line 198
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 11

    .line 102
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 104
    check-cast p2, Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    .line 105
    check-cast p1, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    .line 107
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->setTitle(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTaglines()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTaglines()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 110
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$100(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getTaglines()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$100(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 113
    :cond_1
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$100(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_1
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    const-string v4, "Recording"

    .line 116
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Episode"

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Movie"

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Video"

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 117
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 118
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    const v7, 0x7f100440

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v6

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZZ)V

    .line 121
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->addGenres(Landroid/widget/LinearLayout;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 122
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getInfoItem1()Ltv/emby/embyatv/model/InfoItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->addInfoItem(Ltv/emby/embyatv/model/InfoItem;)V

    .line 123
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getInfoItem2()Ltv/emby/embyatv/model/InfoItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->addInfoItem(Ltv/emby/embyatv/model/InfoItem;)V

    .line 124
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getInfoItem3()Ltv/emby/embyatv/model/InfoItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->addInfoItem(Ltv/emby/embyatv/model/InfoItem;)V

    .line 125
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getInfoItem4()Ltv/emby/embyatv/model/InfoItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->addInfoItem(Ltv/emby/embyatv/model/InfoItem;)V

    .line 127
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v3

    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$500(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 128
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->allowMediaSelection(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 130
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$700(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Ltv/emby/embyatv/ui/MediaSelectorBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Ltv/emby/embyatv/ui/MediaSelectorBar;->init(Ltv/emby/embyatv/details/MyDetailsOverviewRow;)V

    goto :goto_4

    .line 132
    :cond_5
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_3

    :cond_6
    const/4 v0, 0x6

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 133
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$700(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Ltv/emby/embyatv/ui/MediaSelectorBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/MediaSelectorBar;->setVisibility(I)V

    .line 135
    :goto_4
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x71b7788b

    if-eq v4, v5, :cond_7

    goto :goto_5

    :cond_7
    const-string v4, "Person"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v1, -0x1

    :goto_6
    if-eqz v1, :cond_9

    goto :goto_7

    .line 138
    :cond_9
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$600(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 139
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    :goto_7
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 146
    invoke-virtual {p2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getActions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/TextUnderButton;

    .line 147
    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    :cond_a
    return-void
.end method

.method public requestButtonFocus()V
    .locals 2

    .line 168
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->getFirstVisibleChildNdx(Landroid/widget/LinearLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 175
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$500(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 178
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$800(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateEndTime(Ltv/emby/embyatv/model/InfoItem;)V
    .locals 2

    .line 202
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 203
    iget-object v0, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->viewHolder:Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;

    invoke-static {v1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;->access$400(Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 204
    invoke-direct {p0, p1}, Ltv/emby/embyatv/presentation/MyDetailsOverviewRowPresenter;->addInfoToGenreRow(Ltv/emby/embyatv/model/InfoItem;)V

    :cond_0
    return-void
.end method
