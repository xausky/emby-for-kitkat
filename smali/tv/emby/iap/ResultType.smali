.class public final enum Ltv/emby/iap/ResultType;
.super Ljava/lang/Enum;
.source "ResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/iap/ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/iap/ResultType;

.field public static final enum Canceled:Ltv/emby/iap/ResultType;

.field public static final enum Failure:Ltv/emby/iap/ResultType;

.field public static final enum Success:Ltv/emby/iap/ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Ltv/emby/iap/ResultType;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/iap/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    .line 8
    new-instance v0, Ltv/emby/iap/ResultType;

    const-string v1, "Canceled"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/iap/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ResultType;->Canceled:Ltv/emby/iap/ResultType;

    .line 9
    new-instance v0, Ltv/emby/iap/ResultType;

    const-string v1, "Failure"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/iap/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ResultType;->Failure:Ltv/emby/iap/ResultType;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ltv/emby/iap/ResultType;

    sget-object v1, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/iap/ResultType;->Canceled:Ltv/emby/iap/ResultType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/iap/ResultType;->Failure:Ltv/emby/iap/ResultType;

    aput-object v1, v0, v4

    sput-object v0, Ltv/emby/iap/ResultType;->$VALUES:[Ltv/emby/iap/ResultType;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/iap/ResultType;
    .locals 1

    .line 6
    const-class v0, Ltv/emby/iap/ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/iap/ResultType;

    return-object p0
.end method

.method public static values()[Ltv/emby/iap/ResultType;
    .locals 1

    .line 6
    sget-object v0, Ltv/emby/iap/ResultType;->$VALUES:[Ltv/emby/iap/ResultType;

    invoke-virtual {v0}, [Ltv/emby/iap/ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/iap/ResultType;

    return-object v0
.end method
