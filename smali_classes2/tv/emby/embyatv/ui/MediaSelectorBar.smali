.class public Ltv/emby/embyatv/ui/MediaSelectorBar;
.super Landroid/widget/LinearLayout;
.source "MediaSelectorBar.java"


# instance fields
.field private mAudio:Ltv/emby/embyatv/ui/MediaSelector;

.field private mContext:Landroid/content/Context;

.field private mMediaSources:[Lmediabrowser/model/dto/MediaSourceInfo;

.field private mRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

.field private mSubtitles:Ltv/emby/embyatv/ui/MediaSelector;

.field private mVersions:Ltv/emby/embyatv/ui/MediaSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Lmediabrowser/model/dto/MediaSourceInfo;

    iput-object v0, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mMediaSources:[Lmediabrowser/model/dto/MediaSourceInfo;

    .line 36
    iput-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 32
    new-array p2, p2, [Lmediabrowser/model/dto/MediaSourceInfo;

    iput-object p2, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mMediaSources:[Lmediabrowser/model/dto/MediaSourceInfo;

    .line 41
    iput-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 32
    new-array p2, p2, [Lmediabrowser/model/dto/MediaSourceInfo;

    iput-object p2, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mMediaSources:[Lmediabrowser/model/dto/MediaSourceInfo;

    .line 46
    iput-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/MediaSelectorBar;)Ltv/emby/embyatv/details/MyDetailsOverviewRow;
    .locals 0

    .line 25
    iget-object p0, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/ui/MediaSelectorBar;Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->createAudioAndSubSelectors(Lmediabrowser/model/dto/MediaSourceInfo;)V

    return-void
.end method

.method static synthetic access$200(Ltv/emby/embyatv/ui/MediaSelectorBar;Ljava/util/List;I)I
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/ui/MediaSelectorBar;->findRelativeStreamNdx(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method private createAudioAndSubSelectors(Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 8

    .line 75
    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mAudio:Ltv/emby/embyatv/ui/MediaSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mAudio:Ltv/emby/embyatv/ui/MediaSelector;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/MediaSelectorBar;->removeView(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->GetAudioStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 78
    new-instance v1, Ltv/emby/embyatv/ui/MediaSelector;

    iget-object v3, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    const v4, 0x7f100452

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Ltv/emby/embyatv/ui/MediaSelectorBar;->getOptionStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v2, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    invoke-virtual {v2}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getDefaultAudioNdx()I

    move-result v2

    invoke-direct {p0, v0, v2}, Ltv/emby/embyatv/ui/MediaSelectorBar;->findRelativeSpinnerPos(Ljava/util/List;I)I

    move-result v6

    new-instance v7, Ltv/emby/embyatv/ui/MediaSelectorBar$2;

    invoke-direct {v7, p0, v0}, Ltv/emby/embyatv/ui/MediaSelectorBar$2;-><init>(Ltv/emby/embyatv/ui/MediaSelectorBar;Ljava/util/List;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Ltv/emby/embyatv/ui/MediaSelector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object v1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mAudio:Ltv/emby/embyatv/ui/MediaSelector;

    .line 90
    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mAudio:Ltv/emby/embyatv/ui/MediaSelector;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/MediaSelectorBar;->addView(Landroid/view/View;)V

    .line 93
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mSubtitles:Ltv/emby/embyatv/ui/MediaSelector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mSubtitles:Ltv/emby/embyatv/ui/MediaSelector;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/ui/MediaSelectorBar;->removeView(Landroid/view/View;)V

    .line 94
    :cond_2
    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->GetSubtitleStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 96
    new-instance v0, Lmediabrowser/model/entities/MediaStream;

    invoke-direct {v0}, Lmediabrowser/model/entities/MediaStream;-><init>()V

    const/4 v1, -0x1

    .line 97
    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/MediaStream;->setIndex(I)V

    .line 98
    iget-object v1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    const v2, 0x7f10052e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/MediaStream;->setDisplayTitle(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 99
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 100
    new-instance v0, Ltv/emby/embyatv/ui/MediaSelector;

    iget-object v3, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    const v2, 0x7f1005e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->getOptionStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    invoke-virtual {v1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getDefaultSubNdx()I

    move-result v1

    invoke-direct {p0, p1, v1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->findRelativeSpinnerPos(Ljava/util/List;I)I

    move-result v6

    new-instance v7, Ltv/emby/embyatv/ui/MediaSelectorBar$3;

    invoke-direct {v7, p0, p1}, Ltv/emby/embyatv/ui/MediaSelectorBar$3;-><init>(Ltv/emby/embyatv/ui/MediaSelectorBar;Ljava/util/List;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ltv/emby/embyatv/ui/MediaSelector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mSubtitles:Ltv/emby/embyatv/ui/MediaSelector;

    .line 112
    iget-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mSubtitles:Ltv/emby/embyatv/ui/MediaSelector;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private findMediaSourceNdx(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 151
    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private findRelativeSpinnerPos(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/entities/MediaStream;

    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v2

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private findRelativeStreamNdx(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;I)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/entities/MediaStream;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private getOptionStrings(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lmediabrowser/model/dto/MediaSourceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0I"

    const-string v4, "0i"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0P"

    const-string v4, "0p"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    const v3, 0x7f10045d

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getOptionStrings(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    .line 129
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dolby Digital"

    const-string v3, "Dolby"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUEHD"

    const-string v3, "TrueHD"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f10045d

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public init(Ltv/emby/embyatv/details/MyDetailsOverviewRow;)V
    .locals 8

    .line 50
    iput-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mRow:Ltv/emby/embyatv/details/MyDetailsOverviewRow;

    .line 51
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/MediaSelectorBar;->removeAllViews()V

    .line 53
    invoke-virtual {p1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->supportsMediaSourceSelection(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Ltv/emby/embyatv/ui/MediaSelector;

    iget-object v3, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mContext:Landroid/content/Context;

    const v4, 0x7f10060f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Ltv/emby/embyatv/ui/MediaSelectorBar;->getOptionStrings(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->getDefaultMediaSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->findMediaSourceNdx(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ltv/emby/embyatv/ui/MediaSelectorBar$1;

    invoke-direct {v7, p0}, Ltv/emby/embyatv/ui/MediaSelectorBar$1;-><init>(Ltv/emby/embyatv/ui/MediaSelectorBar;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Ltv/emby/embyatv/ui/MediaSelector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object v1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mVersions:Ltv/emby/embyatv/ui/MediaSelector;

    .line 69
    iget-object p1, p0, Ltv/emby/embyatv/ui/MediaSelectorBar;->mVersions:Ltv/emby/embyatv/ui/MediaSelector;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/MediaSourceInfo;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/ui/MediaSelectorBar;->createAudioAndSubSelectors(Lmediabrowser/model/dto/MediaSourceInfo;)V

    :cond_0
    return-void
.end method
