.class public final enum Ltv/emby/iap/SubscriptionPeriod;
.super Ljava/lang/Enum;
.source "SubscriptionPeriod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/iap/SubscriptionPeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/iap/SubscriptionPeriod;

.field public static final enum Annual:Ltv/emby/iap/SubscriptionPeriod;

.field public static final enum Monthly:Ltv/emby/iap/SubscriptionPeriod;

.field public static final enum Weekly:Ltv/emby/iap/SubscriptionPeriod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Ltv/emby/iap/SubscriptionPeriod;

    const-string v1, "Monthly"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/iap/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/SubscriptionPeriod;->Monthly:Ltv/emby/iap/SubscriptionPeriod;

    .line 8
    new-instance v0, Ltv/emby/iap/SubscriptionPeriod;

    const-string v1, "Weekly"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/iap/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/SubscriptionPeriod;->Weekly:Ltv/emby/iap/SubscriptionPeriod;

    new-instance v0, Ltv/emby/iap/SubscriptionPeriod;

    const-string v1, "Annual"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/iap/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/SubscriptionPeriod;->Annual:Ltv/emby/iap/SubscriptionPeriod;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ltv/emby/iap/SubscriptionPeriod;

    sget-object v1, Ltv/emby/iap/SubscriptionPeriod;->Monthly:Ltv/emby/iap/SubscriptionPeriod;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/iap/SubscriptionPeriod;->Weekly:Ltv/emby/iap/SubscriptionPeriod;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/iap/SubscriptionPeriod;->Annual:Ltv/emby/iap/SubscriptionPeriod;

    aput-object v1, v0, v4

    sput-object v0, Ltv/emby/iap/SubscriptionPeriod;->$VALUES:[Ltv/emby/iap/SubscriptionPeriod;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/iap/SubscriptionPeriod;
    .locals 1

    .line 6
    const-class v0, Ltv/emby/iap/SubscriptionPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/iap/SubscriptionPeriod;

    return-object p0
.end method

.method public static values()[Ltv/emby/iap/SubscriptionPeriod;
    .locals 1

    .line 6
    sget-object v0, Ltv/emby/iap/SubscriptionPeriod;->$VALUES:[Ltv/emby/iap/SubscriptionPeriod;

    invoke-virtual {v0}, [Ltv/emby/iap/SubscriptionPeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/iap/SubscriptionPeriod;

    return-object v0
.end method
