.class public final enum Lmediabrowser/model/entities/Video3DFormat;
.super Ljava/lang/Enum;
.source "Video3DFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/Video3DFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/Video3DFormat;

.field public static final enum FullSideBySide:Lmediabrowser/model/entities/Video3DFormat;

.field public static final enum FullTopAndBottom:Lmediabrowser/model/entities/Video3DFormat;

.field public static final enum HalfSideBySide:Lmediabrowser/model/entities/Video3DFormat;

.field public static final enum HalfTopAndBottom:Lmediabrowser/model/entities/Video3DFormat;

.field public static final enum MVC:Lmediabrowser/model/entities/Video3DFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lmediabrowser/model/entities/Video3DFormat;

    const-string v1, "HalfSideBySide"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/entities/Video3DFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/Video3DFormat;->HalfSideBySide:Lmediabrowser/model/entities/Video3DFormat;

    .line 6
    new-instance v0, Lmediabrowser/model/entities/Video3DFormat;

    const-string v1, "FullSideBySide"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/entities/Video3DFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/Video3DFormat;->FullSideBySide:Lmediabrowser/model/entities/Video3DFormat;

    .line 7
    new-instance v0, Lmediabrowser/model/entities/Video3DFormat;

    const-string v1, "FullTopAndBottom"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/entities/Video3DFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/Video3DFormat;->FullTopAndBottom:Lmediabrowser/model/entities/Video3DFormat;

    .line 8
    new-instance v0, Lmediabrowser/model/entities/Video3DFormat;

    const-string v1, "HalfTopAndBottom"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/entities/Video3DFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/Video3DFormat;->HalfTopAndBottom:Lmediabrowser/model/entities/Video3DFormat;

    .line 9
    new-instance v0, Lmediabrowser/model/entities/Video3DFormat;

    const-string v1, "MVC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/entities/Video3DFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/Video3DFormat;->MVC:Lmediabrowser/model/entities/Video3DFormat;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lmediabrowser/model/entities/Video3DFormat;

    sget-object v1, Lmediabrowser/model/entities/Video3DFormat;->HalfSideBySide:Lmediabrowser/model/entities/Video3DFormat;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/Video3DFormat;->FullSideBySide:Lmediabrowser/model/entities/Video3DFormat;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/entities/Video3DFormat;->FullTopAndBottom:Lmediabrowser/model/entities/Video3DFormat;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/entities/Video3DFormat;->HalfTopAndBottom:Lmediabrowser/model/entities/Video3DFormat;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/entities/Video3DFormat;->MVC:Lmediabrowser/model/entities/Video3DFormat;

    aput-object v1, v0, v6

    sput-object v0, Lmediabrowser/model/entities/Video3DFormat;->$VALUES:[Lmediabrowser/model/entities/Video3DFormat;

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

.method public static forValue(I)Lmediabrowser/model/entities/Video3DFormat;
    .locals 1

    .line 18
    invoke-static {}, Lmediabrowser/model/entities/Video3DFormat;->values()[Lmediabrowser/model/entities/Video3DFormat;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/Video3DFormat;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/entities/Video3DFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/Video3DFormat;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/Video3DFormat;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/entities/Video3DFormat;->$VALUES:[Lmediabrowser/model/entities/Video3DFormat;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/Video3DFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/Video3DFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 13
    invoke-virtual {p0}, Lmediabrowser/model/entities/Video3DFormat;->ordinal()I

    move-result v0

    return v0
.end method
