.class public final enum Lmediabrowser/model/mediainfo/TransportStreamTimestamp;
.super Ljava/lang/Enum;
.source "TransportStreamTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/mediainfo/TransportStreamTimestamp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

.field public static final enum None:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

.field public static final enum Valid:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

.field public static final enum Zero:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->None:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    .line 6
    new-instance v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    const-string v1, "Zero"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->Zero:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    .line 7
    new-instance v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    const-string v1, "Valid"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->Valid:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    sget-object v1, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->None:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->Zero:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->Valid:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    aput-object v1, v0, v4

    sput-object v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->$VALUES:[Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

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

.method public static forValue(I)Lmediabrowser/model/mediainfo/TransportStreamTimestamp;
    .locals 1

    .line 16
    invoke-static {}, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->values()[Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/mediainfo/TransportStreamTimestamp;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/mediainfo/TransportStreamTimestamp;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->$VALUES:[Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    invoke-virtual {v0}, [Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 11
    invoke-virtual {p0}, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->ordinal()I

    move-result v0

    return v0
.end method
