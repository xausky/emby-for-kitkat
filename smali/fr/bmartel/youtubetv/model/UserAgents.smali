.class public final enum Lfr/bmartel/youtubetv/model/UserAgents;
.super Ljava/lang/Enum;
.source "UserAgents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/bmartel/youtubetv/model/UserAgents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/bmartel/youtubetv/model/UserAgents;

.field public static final enum CHROME_DESKTOP:Lfr/bmartel/youtubetv/model/UserAgents;

.field public static final enum CHROME_IPAD:Lfr/bmartel/youtubetv/model/UserAgents;

.field public static final enum CHROME_IPHONE:Lfr/bmartel/youtubetv/model/UserAgents;

.field public static final enum CHROME_MOBILE_DESKTOP:Lfr/bmartel/youtubetv/model/UserAgents;

.field public static final enum DEFAULT:Lfr/bmartel/youtubetv/model/UserAgents;


# instance fields
.field private mIndex:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lfr/bmartel/youtubetv/model/UserAgents;

    const-string v1, "DEFAULT"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lfr/bmartel/youtubetv/model/UserAgents;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/UserAgents;->DEFAULT:Lfr/bmartel/youtubetv/model/UserAgents;

    .line 33
    new-instance v0, Lfr/bmartel/youtubetv/model/UserAgents;

    const-string v1, "CHROME_IPHONE"

    const-string v2, "Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_4 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B350 Safari/8536.25"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lfr/bmartel/youtubetv/model/UserAgents;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/UserAgents;->CHROME_IPHONE:Lfr/bmartel/youtubetv/model/UserAgents;

    .line 34
    new-instance v0, Lfr/bmartel/youtubetv/model/UserAgents;

    const-string v1, "CHROME_IPAD"

    const-string v2, "Mozilla/5.0 (iPad; CPU OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A465 Safari/8536.25"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lfr/bmartel/youtubetv/model/UserAgents;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/UserAgents;->CHROME_IPAD:Lfr/bmartel/youtubetv/model/UserAgents;

    .line 35
    new-instance v0, Lfr/bmartel/youtubetv/model/UserAgents;

    const-string v1, "CHROME_DESKTOP"

    const-string v2, "Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v2}, Lfr/bmartel/youtubetv/model/UserAgents;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/UserAgents;->CHROME_DESKTOP:Lfr/bmartel/youtubetv/model/UserAgents;

    .line 36
    new-instance v0, Lfr/bmartel/youtubetv/model/UserAgents;

    const-string v1, "CHROME_MOBILE_DESKTOP"

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.57 Safari/537.36"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v7, v2}, Lfr/bmartel/youtubetv/model/UserAgents;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/youtubetv/model/UserAgents;->CHROME_MOBILE_DESKTOP:Lfr/bmartel/youtubetv/model/UserAgents;

    const/4 v0, 0x5

    .line 31
    new-array v0, v0, [Lfr/bmartel/youtubetv/model/UserAgents;

    sget-object v1, Lfr/bmartel/youtubetv/model/UserAgents;->DEFAULT:Lfr/bmartel/youtubetv/model/UserAgents;

    aput-object v1, v0, v3

    sget-object v1, Lfr/bmartel/youtubetv/model/UserAgents;->CHROME_IPHONE:Lfr/bmartel/youtubetv/model/UserAgents;

    aput-object v1, v0, v4

    sget-object v1, Lfr/bmartel/youtubetv/model/UserAgents;->CHROME_IPAD:Lfr/bmartel/youtubetv/model/UserAgents;

    aput-object v1, v0, v5

    sget-object v1, Lfr/bmartel/youtubetv/model/UserAgents;->CHROME_DESKTOP:Lfr/bmartel/youtubetv/model/UserAgents;

    aput-object v1, v0, v6

    sget-object v1, Lfr/bmartel/youtubetv/model/UserAgents;->CHROME_MOBILE_DESKTOP:Lfr/bmartel/youtubetv/model/UserAgents;

    aput-object v1, v0, v7

    sput-object v0, Lfr/bmartel/youtubetv/model/UserAgents;->$VALUES:[Lfr/bmartel/youtubetv/model/UserAgents;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lfr/bmartel/youtubetv/model/UserAgents;->mIndex:I

    .line 43
    iput-object p4, p0, Lfr/bmartel/youtubetv/model/UserAgents;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getUserAgent(I)Lfr/bmartel/youtubetv/model/UserAgents;
    .locals 5

    .line 56
    invoke-static {}, Lfr/bmartel/youtubetv/model/UserAgents;->values()[Lfr/bmartel/youtubetv/model/UserAgents;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 57
    invoke-virtual {v3}, Lfr/bmartel/youtubetv/model/UserAgents;->getIndex()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    sget-object p0, Lfr/bmartel/youtubetv/model/UserAgents;->DEFAULT:Lfr/bmartel/youtubetv/model/UserAgents;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/bmartel/youtubetv/model/UserAgents;
    .locals 1

    .line 31
    const-class v0, Lfr/bmartel/youtubetv/model/UserAgents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/bmartel/youtubetv/model/UserAgents;

    return-object p0
.end method

.method public static values()[Lfr/bmartel/youtubetv/model/UserAgents;
    .locals 1

    .line 31
    sget-object v0, Lfr/bmartel/youtubetv/model/UserAgents;->$VALUES:[Lfr/bmartel/youtubetv/model/UserAgents;

    invoke-virtual {v0}, [Lfr/bmartel/youtubetv/model/UserAgents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/bmartel/youtubetv/model/UserAgents;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 47
    iget v0, p0, Lfr/bmartel/youtubetv/model/UserAgents;->mIndex:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lfr/bmartel/youtubetv/model/UserAgents;->mValue:Ljava/lang/String;

    return-object v0
.end method
