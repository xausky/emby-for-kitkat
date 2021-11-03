.class public final enum Lmediabrowser/model/entities/MediaStreamType;
.super Ljava/lang/Enum;
.source "MediaStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/MediaStreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/MediaStreamType;

.field public static final enum Audio:Lmediabrowser/model/entities/MediaStreamType;

.field public static final enum EmbeddedImage:Lmediabrowser/model/entities/MediaStreamType;

.field public static final enum Subtitle:Lmediabrowser/model/entities/MediaStreamType;

.field public static final enum Video:Lmediabrowser/model/entities/MediaStreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lmediabrowser/model/entities/MediaStreamType;

    const-string v1, "Audio"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/entities/MediaStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    .line 15
    new-instance v0, Lmediabrowser/model/entities/MediaStreamType;

    const-string v1, "Video"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/entities/MediaStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    .line 19
    new-instance v0, Lmediabrowser/model/entities/MediaStreamType;

    const-string v1, "Subtitle"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/entities/MediaStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/MediaStreamType;->Subtitle:Lmediabrowser/model/entities/MediaStreamType;

    .line 23
    new-instance v0, Lmediabrowser/model/entities/MediaStreamType;

    const-string v1, "EmbeddedImage"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/entities/MediaStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/MediaStreamType;->EmbeddedImage:Lmediabrowser/model/entities/MediaStreamType;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lmediabrowser/model/entities/MediaStreamType;

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Subtitle:Lmediabrowser/model/entities/MediaStreamType;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->EmbeddedImage:Lmediabrowser/model/entities/MediaStreamType;

    aput-object v1, v0, v5

    sput-object v0, Lmediabrowser/model/entities/MediaStreamType;->$VALUES:[Lmediabrowser/model/entities/MediaStreamType;

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

.method public static forValue(I)Lmediabrowser/model/entities/MediaStreamType;
    .locals 1

    .line 32
    invoke-static {}, Lmediabrowser/model/entities/MediaStreamType;->values()[Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/MediaStreamType;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/entities/MediaStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/MediaStreamType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/MediaStreamType;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/entities/MediaStreamType;->$VALUES:[Lmediabrowser/model/entities/MediaStreamType;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/MediaStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/MediaStreamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 27
    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStreamType;->ordinal()I

    move-result v0

    return v0
.end method
