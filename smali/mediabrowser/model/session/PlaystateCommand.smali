.class public final enum Lmediabrowser/model/session/PlaystateCommand;
.super Ljava/lang/Enum;
.source "PlaystateCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/session/PlaystateCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/session/PlaystateCommand;

.field public static final enum FastForward:Lmediabrowser/model/session/PlaystateCommand;

.field public static final enum NextTrack:Lmediabrowser/model/session/PlaystateCommand;

.field public static final enum Pause:Lmediabrowser/model/session/PlaystateCommand;

.field public static final enum PlayPause:Lmediabrowser/model/session/PlaystateCommand;

.field public static final enum PreviousTrack:Lmediabrowser/model/session/PlaystateCommand;

.field public static final enum Rewind:Lmediabrowser/model/session/PlaystateCommand;

.field public static final enum Seek:Lmediabrowser/model/session/PlaystateCommand;

.field public static final enum Stop:Lmediabrowser/model/session/PlaystateCommand;

.field public static final enum Unpause:Lmediabrowser/model/session/PlaystateCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 11
    new-instance v0, Lmediabrowser/model/session/PlaystateCommand;

    const-string v1, "Stop"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/session/PlaystateCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->Stop:Lmediabrowser/model/session/PlaystateCommand;

    .line 15
    new-instance v0, Lmediabrowser/model/session/PlaystateCommand;

    const-string v1, "Pause"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/session/PlaystateCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->Pause:Lmediabrowser/model/session/PlaystateCommand;

    .line 19
    new-instance v0, Lmediabrowser/model/session/PlaystateCommand;

    const-string v1, "Unpause"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/session/PlaystateCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->Unpause:Lmediabrowser/model/session/PlaystateCommand;

    .line 23
    new-instance v0, Lmediabrowser/model/session/PlaystateCommand;

    const-string v1, "NextTrack"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/session/PlaystateCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->NextTrack:Lmediabrowser/model/session/PlaystateCommand;

    .line 27
    new-instance v0, Lmediabrowser/model/session/PlaystateCommand;

    const-string v1, "PreviousTrack"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/session/PlaystateCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->PreviousTrack:Lmediabrowser/model/session/PlaystateCommand;

    .line 31
    new-instance v0, Lmediabrowser/model/session/PlaystateCommand;

    const-string v1, "Seek"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmediabrowser/model/session/PlaystateCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->Seek:Lmediabrowser/model/session/PlaystateCommand;

    .line 35
    new-instance v0, Lmediabrowser/model/session/PlaystateCommand;

    const-string v1, "Rewind"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmediabrowser/model/session/PlaystateCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->Rewind:Lmediabrowser/model/session/PlaystateCommand;

    .line 39
    new-instance v0, Lmediabrowser/model/session/PlaystateCommand;

    const-string v1, "FastForward"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmediabrowser/model/session/PlaystateCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->FastForward:Lmediabrowser/model/session/PlaystateCommand;

    .line 43
    new-instance v0, Lmediabrowser/model/session/PlaystateCommand;

    const-string v1, "PlayPause"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmediabrowser/model/session/PlaystateCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->PlayPause:Lmediabrowser/model/session/PlaystateCommand;

    const/16 v0, 0x9

    .line 6
    new-array v0, v0, [Lmediabrowser/model/session/PlaystateCommand;

    sget-object v1, Lmediabrowser/model/session/PlaystateCommand;->Stop:Lmediabrowser/model/session/PlaystateCommand;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/PlaystateCommand;->Pause:Lmediabrowser/model/session/PlaystateCommand;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/session/PlaystateCommand;->Unpause:Lmediabrowser/model/session/PlaystateCommand;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/session/PlaystateCommand;->NextTrack:Lmediabrowser/model/session/PlaystateCommand;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/session/PlaystateCommand;->PreviousTrack:Lmediabrowser/model/session/PlaystateCommand;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/session/PlaystateCommand;->Seek:Lmediabrowser/model/session/PlaystateCommand;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/session/PlaystateCommand;->Rewind:Lmediabrowser/model/session/PlaystateCommand;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/session/PlaystateCommand;->FastForward:Lmediabrowser/model/session/PlaystateCommand;

    aput-object v1, v0, v9

    sget-object v1, Lmediabrowser/model/session/PlaystateCommand;->PlayPause:Lmediabrowser/model/session/PlaystateCommand;

    aput-object v1, v0, v10

    sput-object v0, Lmediabrowser/model/session/PlaystateCommand;->$VALUES:[Lmediabrowser/model/session/PlaystateCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/session/PlaystateCommand;
    .locals 1

    .line 52
    invoke-static {}, Lmediabrowser/model/session/PlaystateCommand;->values()[Lmediabrowser/model/session/PlaystateCommand;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/session/PlaystateCommand;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/session/PlaystateCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/session/PlaystateCommand;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/session/PlaystateCommand;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/session/PlaystateCommand;->$VALUES:[Lmediabrowser/model/session/PlaystateCommand;

    invoke-virtual {v0}, [Lmediabrowser/model/session/PlaystateCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/session/PlaystateCommand;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 47
    invoke-virtual {p0}, Lmediabrowser/model/session/PlaystateCommand;->ordinal()I

    move-result v0

    return v0
.end method
