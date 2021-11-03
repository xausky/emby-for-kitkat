.class public Lmediabrowser/model/session/PlaystateRequest;
.super Ljava/lang/Object;
.source "PlaystateRequest.java"


# instance fields
.field private Command:Lmediabrowser/model/session/PlaystateCommand;

.field private ControllingUserId:Ljava/lang/String;

.field private SeekPositionTicks:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lmediabrowser/model/session/PlaystateCommand;->values()[Lmediabrowser/model/session/PlaystateCommand;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/session/PlaystateRequest;->Command:Lmediabrowser/model/session/PlaystateCommand;

    return-void
.end method


# virtual methods
.method public final getCommand()Lmediabrowser/model/session/PlaystateCommand;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/session/PlaystateRequest;->Command:Lmediabrowser/model/session/PlaystateCommand;

    return-object v0
.end method

.method public final getControllingUserId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lmediabrowser/model/session/PlaystateRequest;->ControllingUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeekPositionTicks()Ljava/lang/Long;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/session/PlaystateRequest;->SeekPositionTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final setCommand(Lmediabrowser/model/session/PlaystateCommand;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/session/PlaystateRequest;->Command:Lmediabrowser/model/session/PlaystateCommand;

    return-void
.end method

.method public final setControllingUserId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmediabrowser/model/session/PlaystateRequest;->ControllingUserId:Ljava/lang/String;

    return-void
.end method

.method public final setSeekPositionTicks(Ljava/lang/Long;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/session/PlaystateRequest;->SeekPositionTicks:Ljava/lang/Long;

    return-void
.end method
