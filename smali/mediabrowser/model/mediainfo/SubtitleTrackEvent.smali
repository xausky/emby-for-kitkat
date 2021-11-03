.class public Lmediabrowser/model/mediainfo/SubtitleTrackEvent;
.super Ljava/lang/Object;
.source "SubtitleTrackEvent.java"


# instance fields
.field private EndPositionTicks:J

.field private Id:Ljava/lang/String;

.field private StartPositionTicks:J

.field private Text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEndPositionTicks()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->EndPositionTicks:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartPositionTicks()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->StartPositionTicks:J

    return-wide v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->Text:Ljava/lang/String;

    return-object v0
.end method

.method public final setEndPositionTicks(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->EndPositionTicks:J

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setStartPositionTicks(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->StartPositionTicks:J

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->Text:Ljava/lang/String;

    return-void
.end method
