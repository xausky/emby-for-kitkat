.class public final enum Lfr/bmartel/youtubetv/model/ThumbnailQuality;
.super Ljava/lang/Enum;
.source "ThumbnailQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/bmartel/youtubetv/model/ThumbnailQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/bmartel/youtubetv/model/ThumbnailQuality;

.field public static final enum DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

.field public static final enum HQ_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

.field public static final enum MAXRES_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

.field public static final enum MQ_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

.field public static final enum SD_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;


# instance fields
.field private mIndex:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    .line 39
    new-instance v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    const-string v1, "HQ_DEFAULT"

    const-string v2, "hqdefault"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->HQ_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    .line 43
    new-instance v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    const-string v1, "MQ_DEFAULT"

    const-string v2, "mqdefault"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->MQ_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    .line 47
    new-instance v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    const-string v1, "SD_DEFAULT"

    const-string v2, "sddefault"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v2}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->SD_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    .line 51
    new-instance v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    const-string v1, "MAXRES_DEFAULT"

    const-string v2, "maxresdefault"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v7, v2}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->MAXRES_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    const/4 v0, 0x5

    .line 31
    new-array v0, v0, [Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    sget-object v1, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    aput-object v1, v0, v3

    sget-object v1, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->HQ_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    aput-object v1, v0, v4

    sget-object v1, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->MQ_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    aput-object v1, v0, v5

    sget-object v1, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->SD_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    aput-object v1, v0, v6

    sget-object v1, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->MAXRES_DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    aput-object v1, v0, v7

    sput-object v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->$VALUES:[Lfr/bmartel/youtubetv/model/ThumbnailQuality;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->mIndex:I

    .line 58
    iput-object p4, p0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getThumbnail(I)Lfr/bmartel/youtubetv/model/ThumbnailQuality;
    .locals 5

    .line 71
    invoke-static {}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->values()[Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 72
    invoke-virtual {v3}, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->getIndex()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    sget-object p0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->DEFAULT:Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/bmartel/youtubetv/model/ThumbnailQuality;
    .locals 1

    .line 31
    const-class v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    return-object p0
.end method

.method public static values()[Lfr/bmartel/youtubetv/model/ThumbnailQuality;
    .locals 1

    .line 31
    sget-object v0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->$VALUES:[Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    invoke-virtual {v0}, [Lfr/bmartel/youtubetv/model/ThumbnailQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/bmartel/youtubetv/model/ThumbnailQuality;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 62
    iget v0, p0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->mIndex:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lfr/bmartel/youtubetv/model/ThumbnailQuality;->mValue:Ljava/lang/String;

    return-object v0
.end method
