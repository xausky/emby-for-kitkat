.class public final enum Lfr/bmartel/youtubetv/model/VideoQuality;
.super Ljava/lang/Enum;
.source "VideoQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/bmartel/youtubetv/model/VideoQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum AUTO:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum HD_1080:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum HD_1440:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum HD_2160:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum HD_720:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum HIGH_RES:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum LARGE:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum MEDIUM:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum SMALL:Lfr/bmartel/youtubetv/model/VideoQuality;

.field public static final enum TINY:Lfr/bmartel/youtubetv/model/VideoQuality;


# instance fields
.field private mIndex:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 35
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "AUTO"

    const-string v2, "auto"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->AUTO:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 36
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "TINY"

    const-string v2, "tiny"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->TINY:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 37
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "SMALL"

    const-string v2, "small"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->SMALL:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 38
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "MEDIUM"

    const-string v2, "medium"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->MEDIUM:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 39
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "LARGE"

    const-string v2, "large"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v7, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->LARGE:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 40
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "HD_720"

    const-string v2, "hd720"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v8, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->HD_720:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 41
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "HD_1080"

    const-string v2, "hd1080"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->HD_1080:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 42
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "HIGH_RES"

    const-string v2, "highres"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v10, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->HIGH_RES:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 43
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "HD_1440"

    const-string v2, "hd1440"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v11, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->HD_1440:Lfr/bmartel/youtubetv/model/VideoQuality;

    .line 44
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    const-string v1, "HD_2160"

    const-string v2, "hd2160"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v12, v2}, Lfr/bmartel/youtubetv/model/VideoQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->HD_2160:Lfr/bmartel/youtubetv/model/VideoQuality;

    const/16 v0, 0xa

    .line 33
    new-array v0, v0, [Lfr/bmartel/youtubetv/model/VideoQuality;

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->AUTO:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v3

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->TINY:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v4

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->SMALL:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v5

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->MEDIUM:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v6

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->LARGE:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v7

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->HD_720:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v8

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->HD_1080:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v9

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->HIGH_RES:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v10

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->HD_1440:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v11

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoQuality;->HD_2160:Lfr/bmartel/youtubetv/model/VideoQuality;

    aput-object v1, v0, v12

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->$VALUES:[Lfr/bmartel/youtubetv/model/VideoQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lfr/bmartel/youtubetv/model/VideoQuality;->mIndex:I

    .line 51
    iput-object p4, p0, Lfr/bmartel/youtubetv/model/VideoQuality;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getVideoQuality(I)Lfr/bmartel/youtubetv/model/VideoQuality;
    .locals 5

    .line 64
    invoke-static {}, Lfr/bmartel/youtubetv/model/VideoQuality;->values()[Lfr/bmartel/youtubetv/model/VideoQuality;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    invoke-virtual {v3}, Lfr/bmartel/youtubetv/model/VideoQuality;->getIndex()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    sget-object p0, Lfr/bmartel/youtubetv/model/VideoQuality;->AUTO:Lfr/bmartel/youtubetv/model/VideoQuality;

    return-object p0
.end method

.method public static getVideoQuality(Ljava/lang/String;)Lfr/bmartel/youtubetv/model/VideoQuality;
    .locals 5

    .line 73
    invoke-static {}, Lfr/bmartel/youtubetv/model/VideoQuality;->values()[Lfr/bmartel/youtubetv/model/VideoQuality;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 74
    invoke-virtual {v3}, Lfr/bmartel/youtubetv/model/VideoQuality;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    sget-object p0, Lfr/bmartel/youtubetv/model/VideoQuality;->AUTO:Lfr/bmartel/youtubetv/model/VideoQuality;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/bmartel/youtubetv/model/VideoQuality;
    .locals 1

    .line 33
    const-class v0, Lfr/bmartel/youtubetv/model/VideoQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/bmartel/youtubetv/model/VideoQuality;

    return-object p0
.end method

.method public static values()[Lfr/bmartel/youtubetv/model/VideoQuality;
    .locals 1

    .line 33
    sget-object v0, Lfr/bmartel/youtubetv/model/VideoQuality;->$VALUES:[Lfr/bmartel/youtubetv/model/VideoQuality;

    invoke-virtual {v0}, [Lfr/bmartel/youtubetv/model/VideoQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/bmartel/youtubetv/model/VideoQuality;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 55
    iget v0, p0, Lfr/bmartel/youtubetv/model/VideoQuality;->mIndex:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lfr/bmartel/youtubetv/model/VideoQuality;->mValue:Ljava/lang/String;

    return-object v0
.end method
