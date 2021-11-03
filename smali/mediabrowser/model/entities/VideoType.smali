.class public final enum Lmediabrowser/model/entities/VideoType;
.super Ljava/lang/Enum;
.source "VideoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/VideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/VideoType;

.field public static final enum BluRay:Lmediabrowser/model/entities/VideoType;

.field public static final enum Dvd:Lmediabrowser/model/entities/VideoType;

.field public static final enum HdDvd:Lmediabrowser/model/entities/VideoType;

.field public static final enum Iso:Lmediabrowser/model/entities/VideoType;

.field public static final enum VideoFile:Lmediabrowser/model/entities/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lmediabrowser/model/entities/VideoType;

    const-string v1, "VideoFile"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/entities/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/VideoType;->VideoFile:Lmediabrowser/model/entities/VideoType;

    .line 15
    new-instance v0, Lmediabrowser/model/entities/VideoType;

    const-string v1, "Iso"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/entities/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/VideoType;->Iso:Lmediabrowser/model/entities/VideoType;

    .line 19
    new-instance v0, Lmediabrowser/model/entities/VideoType;

    const-string v1, "Dvd"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/entities/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/VideoType;->Dvd:Lmediabrowser/model/entities/VideoType;

    .line 23
    new-instance v0, Lmediabrowser/model/entities/VideoType;

    const-string v1, "BluRay"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/entities/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/VideoType;->BluRay:Lmediabrowser/model/entities/VideoType;

    .line 27
    new-instance v0, Lmediabrowser/model/entities/VideoType;

    const-string v1, "HdDvd"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/entities/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/VideoType;->HdDvd:Lmediabrowser/model/entities/VideoType;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lmediabrowser/model/entities/VideoType;

    sget-object v1, Lmediabrowser/model/entities/VideoType;->VideoFile:Lmediabrowser/model/entities/VideoType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/VideoType;->Iso:Lmediabrowser/model/entities/VideoType;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/entities/VideoType;->Dvd:Lmediabrowser/model/entities/VideoType;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/entities/VideoType;->BluRay:Lmediabrowser/model/entities/VideoType;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/entities/VideoType;->HdDvd:Lmediabrowser/model/entities/VideoType;

    aput-object v1, v0, v6

    sput-object v0, Lmediabrowser/model/entities/VideoType;->$VALUES:[Lmediabrowser/model/entities/VideoType;

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

.method public static forValue(I)Lmediabrowser/model/entities/VideoType;
    .locals 1

    .line 36
    invoke-static {}, Lmediabrowser/model/entities/VideoType;->values()[Lmediabrowser/model/entities/VideoType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/VideoType;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/entities/VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/VideoType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/VideoType;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/entities/VideoType;->$VALUES:[Lmediabrowser/model/entities/VideoType;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/VideoType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lmediabrowser/model/entities/VideoType;->ordinal()I

    move-result v0

    return v0
.end method
