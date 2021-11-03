.class public Ltv/emby/embyatv/details/MyDetailsOverviewRow;
.super Landroidx/leanback/widget/Row;
.source "MyDetailsOverviewRow.java"


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/ui/TextUnderButton;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAudioNdx:I

.field private mDefaultMediaSourceId:Ljava/lang/String;

.field private mDefaultSubNdx:I

.field private mImageUrl:Ljava/lang/String;

.field private mInfoItem1:Ltv/emby/embyatv/model/InfoItem;

.field private mInfoItem2:Ltv/emby/embyatv/model/InfoItem;

.field private mInfoItem3:Ltv/emby/embyatv/model/InfoItem;

.field private mInfoItem4:Ltv/emby/embyatv/model/InfoItem;

.field private mItem:Lmediabrowser/model/dto/BaseItemDto;

.field private mSummary:Ljava/lang/String;

.field private mSummarySubTitle:Ljava/lang/String;

.field private mSummaryTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/leanback/widget/Row;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mDefaultAudioNdx:I

    .line 29
    iput v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mDefaultSubNdx:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mActions:Ljava/util/List;

    .line 35
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mItem:Lmediabrowser/model/dto/BaseItemDto;

    return-void
.end method


# virtual methods
.method public addAction(ILtv/emby/embyatv/ui/TextUnderButton;)V
    .locals 1

    .line 79
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mActions:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAction(Ltv/emby/embyatv/ui/TextUnderButton;)V
    .locals 1

    .line 75
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/ui/TextUnderButton;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultAudioNdx()I
    .locals 1

    .line 128
    iget v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mDefaultAudioNdx:I

    return v0
.end method

.method public getDefaultMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mDefaultMediaSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSubNdx()I
    .locals 1

    .line 130
    iget v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mDefaultSubNdx:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoItem1()Ltv/emby/embyatv/model/InfoItem;
    .locals 1

    .line 87
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mInfoItem1:Ltv/emby/embyatv/model/InfoItem;

    return-object v0
.end method

.method public getInfoItem2()Ltv/emby/embyatv/model/InfoItem;
    .locals 1

    .line 95
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mInfoItem2:Ltv/emby/embyatv/model/InfoItem;

    return-object v0
.end method

.method public getInfoItem3()Ltv/emby/embyatv/model/InfoItem;
    .locals 1

    .line 103
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mInfoItem3:Ltv/emby/embyatv/model/InfoItem;

    return-object v0
.end method

.method public getInfoItem4()Ltv/emby/embyatv/model/InfoItem;
    .locals 1

    .line 111
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mInfoItem4:Ltv/emby/embyatv/model/InfoItem;

    return-object v0
.end method

.method public getItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 72
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getSummarySubTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mSummarySubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mSummaryTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleActions()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 67
    iget-object v2, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mActions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-virtual {v2}, Ltv/emby/embyatv/ui/TextUnderButton;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hideAction(Ltv/emby/embyatv/ui/TextUnderButton;)V
    .locals 1

    const/16 v0, 0x8

    .line 83
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    return-void
.end method

.method public setDefaultAudioNdx(I)V
    .locals 0

    .line 129
    iput p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mDefaultAudioNdx:I

    return-void
.end method

.method public setDefaultMediaSourceId(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mDefaultMediaSourceId:Ljava/lang/String;

    return-void
.end method

.method public setDefaultSubNdx(I)V
    .locals 0

    .line 131
    iput p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mDefaultSubNdx:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setInfoItem1(Ltv/emby/embyatv/model/InfoItem;)V
    .locals 0

    .line 91
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mInfoItem1:Ltv/emby/embyatv/model/InfoItem;

    return-void
.end method

.method public setInfoItem2(Ltv/emby/embyatv/model/InfoItem;)V
    .locals 0

    .line 99
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mInfoItem2:Ltv/emby/embyatv/model/InfoItem;

    return-void
.end method

.method public setInfoItem3(Ltv/emby/embyatv/model/InfoItem;)V
    .locals 0

    .line 107
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mInfoItem3:Ltv/emby/embyatv/model/InfoItem;

    return-void
.end method

.method public setInfoItem4(Ltv/emby/embyatv/model/InfoItem;)V
    .locals 0

    .line 115
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mInfoItem4:Ltv/emby/embyatv/model/InfoItem;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setSummarySubTitle(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mSummarySubTitle:Ljava/lang/String;

    return-void
.end method

.method public setSummaryTitle(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Ltv/emby/embyatv/details/MyDetailsOverviewRow;->mSummaryTitle:Ljava/lang/String;

    return-void
.end method
