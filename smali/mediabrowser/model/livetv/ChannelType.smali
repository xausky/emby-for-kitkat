.class public final enum Lmediabrowser/model/livetv/ChannelType;
.super Ljava/lang/Enum;
.source "ChannelType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/livetv/ChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/livetv/ChannelType;

.field public static final enum Radio:Lmediabrowser/model/livetv/ChannelType;

.field public static final enum TV:Lmediabrowser/model/livetv/ChannelType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lmediabrowser/model/livetv/ChannelType;

    const-string v1, "TV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/livetv/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/ChannelType;->TV:Lmediabrowser/model/livetv/ChannelType;

    .line 16
    new-instance v0, Lmediabrowser/model/livetv/ChannelType;

    const-string v1, "Radio"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/livetv/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/ChannelType;->Radio:Lmediabrowser/model/livetv/ChannelType;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lmediabrowser/model/livetv/ChannelType;

    sget-object v1, Lmediabrowser/model/livetv/ChannelType;->TV:Lmediabrowser/model/livetv/ChannelType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/livetv/ChannelType;->Radio:Lmediabrowser/model/livetv/ChannelType;

    aput-object v1, v0, v3

    sput-object v0, Lmediabrowser/model/livetv/ChannelType;->$VALUES:[Lmediabrowser/model/livetv/ChannelType;

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

.method public static forValue(I)Lmediabrowser/model/livetv/ChannelType;
    .locals 1

    .line 25
    invoke-static {}, Lmediabrowser/model/livetv/ChannelType;->values()[Lmediabrowser/model/livetv/ChannelType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/livetv/ChannelType;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/livetv/ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/livetv/ChannelType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/livetv/ChannelType;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/livetv/ChannelType;->$VALUES:[Lmediabrowser/model/livetv/ChannelType;

    invoke-virtual {v0}, [Lmediabrowser/model/livetv/ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/livetv/ChannelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lmediabrowser/model/livetv/ChannelType;->ordinal()I

    move-result v0

    return v0
.end method
