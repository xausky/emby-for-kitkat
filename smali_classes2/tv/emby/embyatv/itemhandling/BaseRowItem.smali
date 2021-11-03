.class public Ltv/emby/embyatv/itemhandling/BaseRowItem;
.super Ljava/lang/Object;
.source "BaseRowItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;,
        Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;,
        Ltv/emby/embyatv/itemhandling/BaseRowItem$RowItemUpdateTask;
    }
.end annotation


# instance fields
.field private baseItem:Lmediabrowser/model/dto/BaseItemDto;

.field private channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

.field private chapterInfo:Ltv/emby/embyatv/model/ChapterItemInfo;

.field private gridButton:Ltv/emby/embyatv/ui/GridButton;

.field private index:I

.field private isPlaying:Z

.field private lastUpdateTime:J

.field private mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private person:Lmediabrowser/model/dto/BaseItemPerson;

.field private preferParentThumb:Z

.field private preferSeriesPoster:Z

.field private searchHint:Lmediabrowser/model/search/SearchHint;

.field private selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

.field private seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

.field private serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

.field protected staticHeight:Z

.field private type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

.field private user:Lmediabrowser/model/dto/UserDto;


# direct methods
.method public constructor <init>(ILmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0, v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V

    return-void
.end method

.method public constructor <init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V
    .locals 6

    .line 68
    sget-object v5, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;)V

    return-void
.end method

.method public constructor <init>(ILmediabrowser/model/dto/BaseItemDto;ZZLandroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 6

    .line 58
    sget-object v5, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;)V

    .line 59
    iput-object p5, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-void
.end method

.method public constructor <init>(ILmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 46
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 72
    iput p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->index:I

    .line 73
    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 74
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Program"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvProgram:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Recording"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvRecording:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    goto :goto_0

    :cond_1
    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    :goto_0
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    .line 75
    iput-boolean p3, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 76
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 77
    iput-object p5, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    return-void
.end method

.method public constructor <init>(ILmediabrowser/model/dto/BaseItemDto;ZZZ)V
    .locals 6

    .line 63
    sget-object v5, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZLtv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;)V

    .line 64
    iput-boolean p4, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    return-void
.end method

.method public constructor <init>(ILmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 46
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 81
    iput p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->index:I

    .line 82
    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    .line 83
    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvChannel:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 87
    new-instance p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p1}, Lmediabrowser/model/dto/BaseItemDto;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 88
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/dto/BaseItemDto;->setUserData(Lmediabrowser/model/dto/UserItemDataDto;)V

    .line 91
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    const-string p2, "TvChannel"

    invoke-virtual {p1, p2}, Lmediabrowser/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/apiclient/ServerInfo;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 46
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 101
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    .line 102
    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Server:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0, p1, v0, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;ZZ)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/dto/BaseItemPerson;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 46
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 112
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 114
    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Person:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/dto/UserDto;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 46
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 118
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->user:Lmediabrowser/model/dto/UserDto;

    .line 119
    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->User:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 46
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 106
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 108
    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->SeriesTimer:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/search/SearchHint;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 46
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 123
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    .line 124
    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->SearchHint:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-void
.end method

.method public constructor <init>(Ltv/emby/embyatv/model/ChapterItemInfo;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 46
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 128
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->chapterInfo:Ltv/emby/embyatv/model/ChapterItemInfo;

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 130
    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Chapter:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-void
.end method

.method public constructor <init>(Ltv/emby/embyatv/ui/GridButton;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    .line 45
    iput-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    .line 46
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    iput-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 134
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->gridButton:Ltv/emby/embyatv/ui/GridButton;

    .line 135
    sget-object p1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->GridButton:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->updateAsChannelOrProgram()V

    return-void
.end method

.method static synthetic access$202(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/model/livetv/ChannelInfoDto;)Lmediabrowser/model/livetv/ChannelInfoDto;
    .locals 0

    .line 31
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    return-object p1
.end method

.method static synthetic access$300(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->notifyChanged()V

    return-void
.end method

.method static synthetic access$400(Ltv/emby/embyatv/itemhandling/BaseRowItem;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 31
    iget-object p0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p0
.end method

.method static synthetic access$402(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 31
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p1
.end method

.method private getTimerBadge()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 691
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRecordingStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->Cancelled:Lmediabrowser/model/livetv/RecordingStatus;

    if-eq v0, v1, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 692
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f08016a

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f080166

    goto :goto_0

    .line 693
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private notifyChanged()V
    .locals 3

    .line 200
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->mAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->notifyItemRangeChanged(II)V

    .line 201
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->lastUpdateTime:J

    return-void
.end method

.method private updateAsChannelOrProgram()V
    .locals 4

    .line 205
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvProgram:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvChannel:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 207
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem$1;-><init>(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    invoke-virtual {v1, v0, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvChannelAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getBackdropImageUrl()Ljava/lang/String;
    .locals 3

    .line 648
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 650
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getConnectionManager()Lmediabrowser/apiinteraction/IConnectionManager;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-interface {v1, v2}, Lmediabrowser/apiinteraction/IConnectionManager;->GetApiClient(Lmediabrowser/model/dto/IHasServerId;)Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgeImage()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 662
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 674
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getHasPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f080136

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 679
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRecordingStatus()Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->InProgress:Lmediabrowser/model/livetv/RecordingStatus;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getTimerBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 665
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Program"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getTimerBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 667
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 682
    :pswitch_4
    invoke-direct {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getTimerBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 687
    :cond_1
    :goto_0
    :pswitch_5
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public getBaseItem()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 145
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    .line 397
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelInfo()Lmediabrowser/model/livetv/ChannelInfoDto;
    .locals 1

    .line 152
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    return-object v0
.end method

.method public getChapterInfo()Ltv/emby/embyatv/model/ChapterItemInfo;
    .locals 1

    .line 148
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->chapterInfo:Ltv/emby/embyatv/model/ChapterItemInfo;

    return-object v0
.end method

.method public getChildCount()I
    .locals 3

    .line 610
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 613
    :pswitch_1
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MusicArtist"

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1

    :goto_0
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getChildCountStr()Ljava/lang/String;
    .locals 4

    .line 638
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    const-string v0, "Playlist"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCumulativeRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCumulativeRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 641
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCreatedMs()J
    .locals 2

    .line 698
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 701
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCreatedMs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 724
    :goto_1
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDefaultImageResource()I
    .locals 4

    .line 279
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 281
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "homevideos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "tvshows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "photos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "movies"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "livetv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v3, "playlists"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_7
    const-string v1, "musicvideos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v0, 0x7f08017d

    return v0

    :pswitch_1
    const v0, 0x7f080180

    return v0

    :pswitch_2
    const v0, 0x7f08017c

    return v0

    :pswitch_3
    const v0, 0x7f080181

    return v0

    :pswitch_4
    const v0, 0x7f08017a

    return v0

    :pswitch_5
    const v0, 0x7f08017b

    return v0

    :pswitch_6
    const v0, 0x7f08017f

    return v0

    :cond_2
    :goto_2
    const v0, 0x7f080179

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7a9a8643 -> :sswitch_7
        -0x6f36471f -> :sswitch_6
        -0x41b5cb92 -> :sswitch_5
        -0x3fac58bd -> :sswitch_4
        -0x3af3777f -> :sswitch_3
        -0x37cbc82c -> :sswitch_2
        0x636ee25 -> :sswitch_1
        0x708a0cf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getFullName()Ljava/lang/String;
    .locals 3

    .line 401
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 425
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10045d

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 422
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {v1}, Lmediabrowser/model/search/SearchHint;->getSeries()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {v2}, Lmediabrowser/model/search/SearchHint;->getSeries()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {v1}, Lmediabrowser/model/search/SearchHint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 418
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->gridButton:Ltv/emby/embyatv/ui/GridButton;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/GridButton;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 414
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 420
    :pswitch_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 410
    :pswitch_5
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->chapterInfo:Ltv/emby/embyatv/model/ChapterItemInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/ChapterItemInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    :pswitch_6
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemPerson;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 416
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :pswitch_8
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->GetFullName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGridButton()Ltv/emby/embyatv/ui/GridButton;
    .locals 1

    .line 156
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->gridButton:Ltv/emby/embyatv/ui/GridButton;

    return-object v0
.end method

.method public getImageUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 253
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 266
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getPrimaryImageUrl(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 263
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getPrimaryImageUrl(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 261
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-static {p1, v0, p2}, Ltv/emby/embyatv/util/Utils;->getThumbImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 259
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-static {p1, v0, p2}, Ltv/emby/embyatv/util/Utils;->getBannerImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getIndex()I
    .locals 1

    .line 140
    iget v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->index:I

    return v0
.end method

.method public getIsWatched()Z
    .locals 1

    .line 275
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 2

    .line 457
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 476
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {v0}, Lmediabrowser/model/search/SearchHint;->getItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "GridButton"

    return-object v0

    .line 468
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 470
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 478
    :pswitch_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 466
    :pswitch_5
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->chapterInfo:Ltv/emby/embyatv/model/ChapterItemInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/ChapterItemInfo;->getItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 464
    :pswitch_6
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemPerson;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 472
    :pswitch_7
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 462
    :pswitch_8
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;
    .locals 1

    .line 163
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 429
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 453
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10045d

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 444
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {v0}, Lmediabrowser/model/search/SearchHint;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 448
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->gridButton:Ltv/emby/embyatv/ui/GridButton;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/GridButton;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 440
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 450
    :pswitch_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 442
    :pswitch_5
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->chapterInfo:Ltv/emby/embyatv/model/ChapterItemInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/ChapterItemInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :pswitch_6
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemPerson;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 446
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "Audio"

    .line 434
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPerson()Lmediabrowser/model/dto/BaseItemPerson;
    .locals 1

    .line 147
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    return-object v0
.end method

.method public getPreferParentThumb()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    return v0
.end method

.method public getPreferSeriesPoster()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    return v0
.end method

.method public getPrimaryImageUrl(I)Ljava/lang/String;
    .locals 6

    .line 306
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v1

    .line 329
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {p1}, Lmediabrowser/model/search/SearchHint;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->IsEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {p1}, Lmediabrowser/model/search/SearchHint;->getItemId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {v1}, Lmediabrowser/model/search/SearchHint;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Ltv/emby/embyatv/util/Utils;->getImageUrl(Ljava/lang/String;Lmediabrowser/model/entities/ImageType;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    .line 330
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchHint;->getThumbImageItemId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->IsEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {p1}, Lmediabrowser/model/search/SearchHint;->getThumbImageItemId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {v1}, Lmediabrowser/model/search/SearchHint;->getThumbImageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Ltv/emby/embyatv/util/Utils;->getImageUrl(Ljava/lang/String;Lmediabrowser/model/entities/ImageType;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    .line 324
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://tv.emby.embyatv/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->gridButton:Ltv/emby/embyatv/ui/GridButton;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/GridButton;->getImageIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string p1, "android.resource://tv.emby.embyatv/2131231117"

    return-object p1

    .line 316
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->user:Lmediabrowser/model/dto/UserDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/UserDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 326
    :pswitch_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/livetv/SeriesTimerInfoDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 318
    :pswitch_5
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->chapterInfo:Ltv/emby/embyatv/model/ChapterItemInfo;

    invoke-virtual {p1}, Ltv/emby/embyatv/model/ChapterItemInfo;->getImagePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 314
    :pswitch_6
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemPerson;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 309
    :pswitch_7
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    iget-boolean v4, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferSeriesPoster:Z

    move v5, p1

    invoke-static/range {v0 .. v5}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 320
    :pswitch_8
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getHasPrimaryImage()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/livetv/ChannelInfoDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    .line 312
    :pswitch_9
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ltv/emby/embyatv/util/Utils;->getThumbImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-boolean v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->preferParentThumb:Z

    invoke-static {v0, v1, v2, p1}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZI)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 153
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public getRecordingInfo()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 154
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public getResumeTicks()J
    .locals 2

    .line 271
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getResumePositionTicks()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getRuntimeTicks()J
    .locals 6

    .line 583
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 587
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_0
    return-wide v1

    .line 603
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    sub-long v1, v0, v2

    :cond_1
    return-wide v1

    :goto_0
    :pswitch_3
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getSearchHint()Lmediabrowser/model/search/SearchHint;
    .locals 1

    .line 151
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    return-object v0
.end method

.method public getSecondarySubText()Ljava/lang/String;
    .locals 2

    .line 658
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne v0, v1, :cond_1

    const-string v0, "Movie"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailer"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSelectAction()Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;
    .locals 1

    .line 762
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->selectAction:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    return-object v0
.end method

.method public getSeriesTimerInfo()Lmediabrowser/model/livetv/SeriesTimerInfoDto;
    .locals 1

    .line 155
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    return-object v0
.end method

.method public getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;
    .locals 1

    .line 149
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    return-object v0
.end method

.method public getSortChar()Ljava/lang/String;
    .locals 3

    .line 388
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-object v1

    .line 390
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getSubText()Ljava/lang/String;
    .locals 4

    .line 494
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    .line 514
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getLastActivityDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v1, 0x7f10051d

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 509
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 510
    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 519
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getRecordAnyChannel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "All Channels"

    goto :goto_3

    :cond_3
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getChannelName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getDayPattern()Lmediabrowser/model/livetv/DayPattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->chapterInfo:Ltv/emby/embyatv/model/ChapterItemInfo;

    invoke-virtual {v0}, Ltv/emby/embyatv/model/ChapterItemInfo;->getStartPositionTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->formatMillis(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 499
    :pswitch_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemPerson;->getRole()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemPerson;->getRole()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemPerson;->getType()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    .line 497
    :pswitch_5
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->GetSubName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 504
    :pswitch_6
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    const-string v0, ""

    :goto_5
    return-object v0

    .line 506
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    const-string v1, ""

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_7
    const-string v1, ""

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 517
    :cond_8
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {v0}, Lmediabrowser/model/search/SearchHint;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSubText2()Ljava/lang/String;
    .locals 2

    .line 485
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 487
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->GetSubName2(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    .line 555
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 576
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->buildOverview(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 560
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_0
    :pswitch_2
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 526
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 541
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->searchHint:Lmediabrowser/model/search/SearchHint;

    invoke-virtual {v0}, Lmediabrowser/model/search/SearchHint;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "GridButton"

    return-object v0

    :pswitch_2
    const-string v0, "SeriesTimer"

    return-object v0

    .line 533
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemPerson;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 543
    :pswitch_4
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->channelInfo:Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 531
    :pswitch_5
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_0
    :pswitch_6
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUser()Lmediabrowser/model/dto/UserDto;
    .locals 1

    .line 150
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->user:Lmediabrowser/model/dto/UserDto;

    return-object v0
.end method

.method public isBaseItem()Z
    .locals 2

    .line 160
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChapter()Z
    .locals 2

    .line 158
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Chapter:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFavorite()Z
    .locals 2

    .line 336
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :goto_0
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isFolder()Z
    .locals 2

    .line 164
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPerson()Z
    .locals 2

    .line 159
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Person:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayed()Z
    .locals 2

    .line 362
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 366
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :goto_0
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isPlaying()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isPlaying:Z

    return v0
.end method

.method public isStaticHeight()Z
    .locals 1

    .line 766
    iget-boolean v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->staticHeight:Z

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 238
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v2

    .line 246
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->seriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 244
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->chapterInfo:Ltv/emby/embyatv/model/ChapterItemInfo;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 242
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->person:Lmediabrowser/model/dto/BaseItemPerson;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 240
    :pswitch_3
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 4

    .line 728
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 731
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$2;

    invoke-direct {v3, p0, p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$2;-><init>(Ltv/emby/embyatv/itemhandling/BaseRowItem;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setIndex(I)V
    .locals 0

    .line 142
    iput p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->index:I

    return-void
.end method

.method public setIsPlaying(Z)V
    .locals 0

    .line 769
    iput-boolean p1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isPlaying:Z

    return-void
.end method

.method public showCardInfoOverlay()Z
    .locals 2

    .line 165
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->type:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_1

    const-string v0, "Folder"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 166
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PhotoAlbum"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UserView"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 167
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CollectionFolder"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Photo"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Video"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 168
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Person"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Playlist"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MusicArtist"

    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->baseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 169
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateIfNeeded()V
    .locals 6

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    iget-wide v2, p0, Ltv/emby/embyatv/itemhandling/BaseRowItem;->lastUpdateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 175
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$3;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$RowItemUpdateTask;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem$RowItemUpdateTask;-><init>(Ltv/emby/embyatv/itemhandling/BaseRowItem$1;)V

    new-array v1, v1, [Ltv/emby/embyatv/itemhandling/BaseRowItem;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem$RowItemUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method
