.class public final enum Lfr/bmartel/youtubetv/model/VideoAutoHide;
.super Ljava/lang/Enum;
.source "VideoAutoHide.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/bmartel/youtubetv/model/VideoAutoHide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/bmartel/youtubetv/model/VideoAutoHide;

.field public static final enum ALWAYS_VISIBLE:Lfr/bmartel/youtubetv/model/VideoAutoHide;

.field public static final enum DEFAULT:Lfr/bmartel/youtubetv/model/VideoAutoHide;

.field public static final enum DISPLAY_AUTO:Lfr/bmartel/youtubetv/model/VideoAutoHide;


# instance fields
.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;

    const-string v1, "DEFAULT"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lfr/bmartel/youtubetv/model/VideoAutoHide;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;->DEFAULT:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    .line 36
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;

    const-string v1, "DISPLAY_AUTO"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lfr/bmartel/youtubetv/model/VideoAutoHide;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;->DISPLAY_AUTO:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    .line 37
    new-instance v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;

    const-string v1, "ALWAYS_VISIBLE"

    invoke-direct {v0, v1, v2, v3}, Lfr/bmartel/youtubetv/model/VideoAutoHide;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;->ALWAYS_VISIBLE:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lfr/bmartel/youtubetv/model/VideoAutoHide;

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoAutoHide;->DEFAULT:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    aput-object v1, v0, v3

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoAutoHide;->DISPLAY_AUTO:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    aput-object v1, v0, v4

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoAutoHide;->ALWAYS_VISIBLE:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    aput-object v1, v0, v2

    sput-object v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;->$VALUES:[Lfr/bmartel/youtubetv/model/VideoAutoHide;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lfr/bmartel/youtubetv/model/VideoAutoHide;->mIndex:I

    return-void
.end method

.method public static getVideoControls(I)Lfr/bmartel/youtubetv/model/VideoAutoHide;
    .locals 5

    .line 51
    invoke-static {}, Lfr/bmartel/youtubetv/model/VideoAutoHide;->values()[Lfr/bmartel/youtubetv/model/VideoAutoHide;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 52
    invoke-virtual {v3}, Lfr/bmartel/youtubetv/model/VideoAutoHide;->getIndex()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    sget-object p0, Lfr/bmartel/youtubetv/model/VideoAutoHide;->DEFAULT:Lfr/bmartel/youtubetv/model/VideoAutoHide;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/bmartel/youtubetv/model/VideoAutoHide;
    .locals 1

    .line 33
    const-class v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/bmartel/youtubetv/model/VideoAutoHide;

    return-object p0
.end method

.method public static values()[Lfr/bmartel/youtubetv/model/VideoAutoHide;
    .locals 1

    .line 33
    sget-object v0, Lfr/bmartel/youtubetv/model/VideoAutoHide;->$VALUES:[Lfr/bmartel/youtubetv/model/VideoAutoHide;

    invoke-virtual {v0}, [Lfr/bmartel/youtubetv/model/VideoAutoHide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/bmartel/youtubetv/model/VideoAutoHide;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 46
    iget v0, p0, Lfr/bmartel/youtubetv/model/VideoAutoHide;->mIndex:I

    return v0
.end method
