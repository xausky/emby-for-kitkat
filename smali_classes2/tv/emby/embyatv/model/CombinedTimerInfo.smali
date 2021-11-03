.class public Ltv/emby/embyatv/model/CombinedTimerInfo;
.super Ljava/lang/Object;
.source "CombinedTimerInfo.java"


# instance fields
.field private programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

.field private seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;


# direct methods
.method public constructor <init>(Lmediabrowser/model/livetv/BaseTimerInfoDto;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    instance-of v0, p1, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    iput-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    .line 13
    :cond_0
    instance-of v0, p1, Lmediabrowser/model/livetv/TimerInfoDto;

    if-eqz v0, :cond_1

    check-cast p1, Lmediabrowser/model/livetv/TimerInfoDto;

    iput-object p1, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    :cond_1
    return-void
.end method


# virtual methods
.method public getIsPostPaddingRequired()Z
    .locals 1

    .line 43
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getIsPostPaddingRequired()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/TimerInfoDto;->getIsPostPaddingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsPrePaddingRequired()Z
    .locals 1

    .line 39
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getIsPrePaddingRequired()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/TimerInfoDto;->getIsPrePaddingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKeepUpTo()I
    .locals 1

    .line 51
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getKeepUpTo()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPostPaddingSeconds()I
    .locals 1

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getPostPaddingSeconds()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/TimerInfoDto;->getPostPaddingSeconds()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPrePaddingSeconds()I
    .locals 1

    .line 25
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getPrePaddingSeconds()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/TimerInfoDto;->getPrePaddingSeconds()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProgramTimer()Lmediabrowser/model/livetv/TimerInfoDto;
    .locals 1

    .line 17
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    return-object v0
.end method

.method public getRecordAnyChannel()Z
    .locals 1

    .line 67
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getRecordAnyChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRecordAnyTime()Z
    .locals 1

    .line 75
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getRecordAnyTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRecordNewOnly()Z
    .locals 1

    .line 59
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getRecordNewOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSeriesTimer()Lmediabrowser/model/livetv/SeriesTimerInfoDto;
    .locals 1

    .line 16
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    return-object v0
.end method

.method public getSkipEpisodesInLibrary()Z
    .locals 1

    .line 83
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getSkipEpisodesInLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setKeepUpTo(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setKeepUpTo(I)V

    :cond_0
    return-void
.end method

.method public setPostPaddingSeconds(I)V
    .locals 1

    .line 33
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setPostPaddingSeconds(I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/TimerInfoDto;->setPostPaddingSeconds(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPrePaddingSeconds(I)V
    .locals 1

    .line 20
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setPrePaddingSeconds(I)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->programTimer:Lmediabrowser/model/livetv/TimerInfoDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/TimerInfoDto;->setPrePaddingSeconds(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRecordAnyChannel(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setRecordAnyChannel(Z)V

    :cond_0
    return-void
.end method

.method public setRecordAnyTime(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setRecordAnyTime(Z)V

    :cond_0
    return-void
.end method

.method public setRecordNewOnly(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setRecordNewOnly(Z)V

    :cond_0
    return-void
.end method

.method public setSkipEpisodesInLibrary(Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/model/CombinedTimerInfo;->seriesTimer:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->setSkipEpisodesInLibrary(Z)V

    :cond_0
    return-void
.end method
