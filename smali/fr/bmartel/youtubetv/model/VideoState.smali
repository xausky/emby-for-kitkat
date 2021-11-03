.class public final enum Lfr/bmartel/youtubetv/model/VideoState;
.super Ljava/lang/Enum;
.source "VideoState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/bmartel/youtubetv/model/VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/bmartel/youtubetv/model/VideoState;

.field public static final enum BUFFERING:Lfr/bmartel/youtubetv/model/VideoState;

.field public static final enum ENDED:Lfr/bmartel/youtubetv/model/VideoState;

.field public static final enum PAUSED:Lfr/bmartel/youtubetv/model/VideoState;

.field public static final enum PLAYING:Lfr/bmartel/youtubetv/model/VideoState;

.field public static final enum UNSTARTED:Lfr/bmartel/youtubetv/model/VideoState;

.field public static final enum VIDEO_CUED:Lfr/bmartel/youtubetv/model/VideoState;


# instance fields
.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoState;

    const-string v1, "UNSTARTED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lfr/bmartel/youtubetv/model/VideoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoState;->UNSTARTED:Lfr/bmartel/youtubetv/model/VideoState;

    .line 34
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoState;

    const-string v1, "ENDED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lfr/bmartel/youtubetv/model/VideoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoState;->ENDED:Lfr/bmartel/youtubetv/model/VideoState;

    .line 35
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoState;

    const-string v1, "PLAYING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lfr/bmartel/youtubetv/model/VideoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoState;->PLAYING:Lfr/bmartel/youtubetv/model/VideoState;

    .line 36
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoState;

    const-string v1, "PAUSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lfr/bmartel/youtubetv/model/VideoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoState;->PAUSED:Lfr/bmartel/youtubetv/model/VideoState;

    .line 37
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoState;

    const-string v1, "BUFFERING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lfr/bmartel/youtubetv/model/VideoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoState;->BUFFERING:Lfr/bmartel/youtubetv/model/VideoState;

    .line 38
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoState;

    const-string v1, "VIDEO_CUED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lfr/bmartel/youtubetv/model/VideoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoState;->VIDEO_CUED:Lfr/bmartel/youtubetv/model/VideoState;

    const/4 v0, 0x6

    .line 31
    new-array v0, v0, [Lfr/bmartel/youtubetv/model/VideoState;

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoState;->UNSTARTED:Lfr/bmartel/youtubetv/model/VideoState;

    aput-object v1, v0, v2

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoState;->ENDED:Lfr/bmartel/youtubetv/model/VideoState;

    aput-object v1, v0, v3

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoState;->PLAYING:Lfr/bmartel/youtubetv/model/VideoState;

    aput-object v1, v0, v4

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoState;->PAUSED:Lfr/bmartel/youtubetv/model/VideoState;

    aput-object v1, v0, v5

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoState;->BUFFERING:Lfr/bmartel/youtubetv/model/VideoState;

    aput-object v1, v0, v6

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoState;->VIDEO_CUED:Lfr/bmartel/youtubetv/model/VideoState;

    aput-object v1, v0, v7

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoState;->$VALUES:[Lfr/bmartel/youtubetv/model/VideoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lfr/bmartel/youtubetv/model/VideoState;->mIndex:I

    return-void
.end method

.method public static getPlayerState(I)Lfr/bmartel/youtubetv/model/VideoState;
    .locals 5

    .line 52
    invoke-static {}, Lfr/bmartel/youtubetv/model/VideoState;->values()[Lfr/bmartel/youtubetv/model/VideoState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 53
    invoke-virtual {v3}, Lfr/bmartel/youtubetv/model/VideoState;->getIndex()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    sget-object p0, Lfr/bmartel/youtubetv/model/VideoState;->UNSTARTED:Lfr/bmartel/youtubetv/model/VideoState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/bmartel/youtubetv/model/VideoState;
    .locals 1

    .line 31
    const-class v0, Lfr/bmartel/youtubetv/model/VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/bmartel/youtubetv/model/VideoState;

    return-object p0
.end method

.method public static values()[Lfr/bmartel/youtubetv/model/VideoState;
    .locals 1

    .line 31
    sget-object v0, Lfr/bmartel/youtubetv/model/VideoState;->$VALUES:[Lfr/bmartel/youtubetv/model/VideoState;

    invoke-virtual {v0}, [Lfr/bmartel/youtubetv/model/VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/bmartel/youtubetv/model/VideoState;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 47
    iget v0, p0, Lfr/bmartel/youtubetv/model/VideoState;->mIndex:I

    return v0
.end method
