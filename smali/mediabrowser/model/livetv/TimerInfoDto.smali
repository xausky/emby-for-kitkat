.class public Lmediabrowser/model/livetv/TimerInfoDto;
.super Lmediabrowser/model/livetv/BaseTimerInfoDto;
.source "TimerInfoDto.java"


# instance fields
.field private ExternalSeriesTimerId:Ljava/lang/String;

.field private ProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

.field private RunTimeTicks:Ljava/lang/Long;

.field private SeriesTimerId:Ljava/lang/String;

.field private Status:Lmediabrowser/model/livetv/RecordingStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lmediabrowser/model/livetv/BaseTimerInfoDto;-><init>()V

    .line 17
    invoke-static {}, Lmediabrowser/model/livetv/RecordingStatus;->values()[Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/livetv/TimerInfoDto;->Status:Lmediabrowser/model/livetv/RecordingStatus;

    const-string v0, "Timer"

    .line 9
    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/TimerInfoDto;->setType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getExternalSeriesTimerId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lmediabrowser/model/livetv/TimerInfoDto;->ExternalSeriesTimerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 80
    iget-object v0, p0, Lmediabrowser/model/livetv/TimerInfoDto;->ProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public final getRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 65
    iget-object v0, p0, Lmediabrowser/model/livetv/TimerInfoDto;->RunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSeriesTimerId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lmediabrowser/model/livetv/TimerInfoDto;->SeriesTimerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lmediabrowser/model/livetv/RecordingStatus;
    .locals 1

    .line 20
    iget-object v0, p0, Lmediabrowser/model/livetv/TimerInfoDto;->Status:Lmediabrowser/model/livetv/RecordingStatus;

    return-object v0
.end method

.method public final setExternalSeriesTimerId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lmediabrowser/model/livetv/TimerInfoDto;->ExternalSeriesTimerId:Ljava/lang/String;

    return-void
.end method

.method public final setProgramInfo(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lmediabrowser/model/livetv/TimerInfoDto;->ProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    return-void
.end method

.method public final setRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lmediabrowser/model/livetv/TimerInfoDto;->RunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setSeriesTimerId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lmediabrowser/model/livetv/TimerInfoDto;->SeriesTimerId:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Lmediabrowser/model/livetv/RecordingStatus;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lmediabrowser/model/livetv/TimerInfoDto;->Status:Lmediabrowser/model/livetv/RecordingStatus;

    return-void
.end method
