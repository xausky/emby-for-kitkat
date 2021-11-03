.class public final enum Lmediabrowser/model/livetv/ProgramAudio;
.super Ljava/lang/Enum;
.source "ProgramAudio.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/livetv/ProgramAudio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/livetv/ProgramAudio;

.field public static final enum Atmos:Lmediabrowser/model/livetv/ProgramAudio;

.field public static final enum Dolby:Lmediabrowser/model/livetv/ProgramAudio;

.field public static final enum DolbyDigital:Lmediabrowser/model/livetv/ProgramAudio;

.field public static final enum Mono:Lmediabrowser/model/livetv/ProgramAudio;

.field public static final enum Stereo:Lmediabrowser/model/livetv/ProgramAudio;

.field public static final enum Thx:Lmediabrowser/model/livetv/ProgramAudio;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lmediabrowser/model/livetv/ProgramAudio;

    const-string v1, "Mono"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/livetv/ProgramAudio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/ProgramAudio;->Mono:Lmediabrowser/model/livetv/ProgramAudio;

    .line 6
    new-instance v0, Lmediabrowser/model/livetv/ProgramAudio;

    const-string v1, "Stereo"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/livetv/ProgramAudio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/ProgramAudio;->Stereo:Lmediabrowser/model/livetv/ProgramAudio;

    .line 7
    new-instance v0, Lmediabrowser/model/livetv/ProgramAudio;

    const-string v1, "Dolby"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/livetv/ProgramAudio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/ProgramAudio;->Dolby:Lmediabrowser/model/livetv/ProgramAudio;

    .line 8
    new-instance v0, Lmediabrowser/model/livetv/ProgramAudio;

    const-string v1, "DolbyDigital"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/livetv/ProgramAudio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/ProgramAudio;->DolbyDigital:Lmediabrowser/model/livetv/ProgramAudio;

    .line 9
    new-instance v0, Lmediabrowser/model/livetv/ProgramAudio;

    const-string v1, "Thx"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/livetv/ProgramAudio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/ProgramAudio;->Thx:Lmediabrowser/model/livetv/ProgramAudio;

    .line 10
    new-instance v0, Lmediabrowser/model/livetv/ProgramAudio;

    const-string v1, "Atmos"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmediabrowser/model/livetv/ProgramAudio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/ProgramAudio;->Atmos:Lmediabrowser/model/livetv/ProgramAudio;

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [Lmediabrowser/model/livetv/ProgramAudio;

    sget-object v1, Lmediabrowser/model/livetv/ProgramAudio;->Mono:Lmediabrowser/model/livetv/ProgramAudio;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/livetv/ProgramAudio;->Stereo:Lmediabrowser/model/livetv/ProgramAudio;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/livetv/ProgramAudio;->Dolby:Lmediabrowser/model/livetv/ProgramAudio;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/livetv/ProgramAudio;->DolbyDigital:Lmediabrowser/model/livetv/ProgramAudio;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/livetv/ProgramAudio;->Thx:Lmediabrowser/model/livetv/ProgramAudio;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/livetv/ProgramAudio;->Atmos:Lmediabrowser/model/livetv/ProgramAudio;

    aput-object v1, v0, v7

    sput-object v0, Lmediabrowser/model/livetv/ProgramAudio;->$VALUES:[Lmediabrowser/model/livetv/ProgramAudio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/livetv/ProgramAudio;
    .locals 1

    .line 19
    invoke-static {}, Lmediabrowser/model/livetv/ProgramAudio;->values()[Lmediabrowser/model/livetv/ProgramAudio;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/livetv/ProgramAudio;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/livetv/ProgramAudio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/livetv/ProgramAudio;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/livetv/ProgramAudio;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/livetv/ProgramAudio;->$VALUES:[Lmediabrowser/model/livetv/ProgramAudio;

    invoke-virtual {v0}, [Lmediabrowser/model/livetv/ProgramAudio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/livetv/ProgramAudio;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 14
    invoke-virtual {p0}, Lmediabrowser/model/livetv/ProgramAudio;->ordinal()I

    move-result v0

    return v0
.end method
