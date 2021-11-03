.class public final enum Lmediabrowser/model/configuration/ImageSavingConvention;
.super Ljava/lang/Enum;
.source "ImageSavingConvention.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/configuration/ImageSavingConvention;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/configuration/ImageSavingConvention;

.field public static final enum Compatible:Lmediabrowser/model/configuration/ImageSavingConvention;

.field public static final enum Legacy:Lmediabrowser/model/configuration/ImageSavingConvention;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lmediabrowser/model/configuration/ImageSavingConvention;

    const-string v1, "Legacy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/configuration/ImageSavingConvention;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/ImageSavingConvention;->Legacy:Lmediabrowser/model/configuration/ImageSavingConvention;

    .line 6
    new-instance v0, Lmediabrowser/model/configuration/ImageSavingConvention;

    const-string v1, "Compatible"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/configuration/ImageSavingConvention;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/ImageSavingConvention;->Compatible:Lmediabrowser/model/configuration/ImageSavingConvention;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lmediabrowser/model/configuration/ImageSavingConvention;

    sget-object v1, Lmediabrowser/model/configuration/ImageSavingConvention;->Legacy:Lmediabrowser/model/configuration/ImageSavingConvention;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/configuration/ImageSavingConvention;->Compatible:Lmediabrowser/model/configuration/ImageSavingConvention;

    aput-object v1, v0, v3

    sput-object v0, Lmediabrowser/model/configuration/ImageSavingConvention;->$VALUES:[Lmediabrowser/model/configuration/ImageSavingConvention;

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

.method public static forValue(I)Lmediabrowser/model/configuration/ImageSavingConvention;
    .locals 1

    .line 15
    invoke-static {}, Lmediabrowser/model/configuration/ImageSavingConvention;->values()[Lmediabrowser/model/configuration/ImageSavingConvention;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/configuration/ImageSavingConvention;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/configuration/ImageSavingConvention;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/configuration/ImageSavingConvention;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/configuration/ImageSavingConvention;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/configuration/ImageSavingConvention;->$VALUES:[Lmediabrowser/model/configuration/ImageSavingConvention;

    invoke-virtual {v0}, [Lmediabrowser/model/configuration/ImageSavingConvention;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/configuration/ImageSavingConvention;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 10
    invoke-virtual {p0}, Lmediabrowser/model/configuration/ImageSavingConvention;->ordinal()I

    move-result v0

    return v0
.end method
