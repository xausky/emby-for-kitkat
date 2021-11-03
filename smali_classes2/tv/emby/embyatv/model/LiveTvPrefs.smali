.class public Ltv/emby/embyatv/model/LiveTvPrefs;
.super Ljava/lang/Object;
.source "LiveTvPrefs.java"


# instance fields
.field public channelOrder:Ljava/lang/String;

.field public colorCodeGuide:Z

.field public compactLayout:Z

.field public favoriteChannelsOnly:Z

.field public favsAtTop:Z

.field public showHDIndicator:Z

.field public showLiveIndicator:Z

.field public showNewIndicator:Z

.field public showPremiereIndicator:Z

.field public showRatingIndicator:Z

.field public showRepeatIndicator:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DatePlayed"

    .line 8
    iput-object v0, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->channelOrder:Ljava/lang/String;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->showPremiereIndicator:Z

    .line 12
    iput-boolean v0, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->favsAtTop:Z

    .line 13
    iput-boolean v0, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->showLiveIndicator:Z

    .line 14
    iput-boolean v0, p0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRatingIndicator:Z

    return-void
.end method
