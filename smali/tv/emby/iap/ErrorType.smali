.class public final enum Ltv/emby/iap/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/iap/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/iap/ErrorType;

.field public static final enum General:Ltv/emby/iap/ErrorType;

.field public static final enum InvalidProduct:Ltv/emby/iap/ErrorType;

.field public static final enum UnableToCompletePurchase:Ltv/emby/iap/ErrorType;

.field public static final enum UnableToConnectToStore:Ltv/emby/iap/ErrorType;

.field public static final enum UnableToValidatePurchase:Ltv/emby/iap/ErrorType;

.field public static final enum UserCancelled:Ltv/emby/iap/ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Ltv/emby/iap/ErrorType;

    const-string v1, "UnableToConnectToStore"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->UnableToConnectToStore:Ltv/emby/iap/ErrorType;

    .line 5
    new-instance v0, Ltv/emby/iap/ErrorType;

    const-string v1, "UnableToCompletePurchase"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->UnableToCompletePurchase:Ltv/emby/iap/ErrorType;

    .line 6
    new-instance v0, Ltv/emby/iap/ErrorType;

    const-string v1, "UnableToValidatePurchase"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->UnableToValidatePurchase:Ltv/emby/iap/ErrorType;

    .line 7
    new-instance v0, Ltv/emby/iap/ErrorType;

    const-string v1, "InvalidProduct"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->InvalidProduct:Ltv/emby/iap/ErrorType;

    new-instance v0, Ltv/emby/iap/ErrorType;

    const-string v1, "General"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->General:Ltv/emby/iap/ErrorType;

    new-instance v0, Ltv/emby/iap/ErrorType;

    const-string v1, "UserCancelled"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->UserCancelled:Ltv/emby/iap/ErrorType;

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [Ltv/emby/iap/ErrorType;

    sget-object v1, Ltv/emby/iap/ErrorType;->UnableToConnectToStore:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/iap/ErrorType;->UnableToCompletePurchase:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/iap/ErrorType;->UnableToValidatePurchase:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Ltv/emby/iap/ErrorType;->InvalidProduct:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Ltv/emby/iap/ErrorType;->General:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v6

    sget-object v1, Ltv/emby/iap/ErrorType;->UserCancelled:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v7

    sput-object v0, Ltv/emby/iap/ErrorType;->$VALUES:[Ltv/emby/iap/ErrorType;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/iap/ErrorType;
    .locals 1

    .line 3
    const-class v0, Ltv/emby/iap/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/iap/ErrorType;

    return-object p0
.end method

.method public static values()[Ltv/emby/iap/ErrorType;
    .locals 1

    .line 3
    sget-object v0, Ltv/emby/iap/ErrorType;->$VALUES:[Ltv/emby/iap/ErrorType;

    invoke-virtual {v0}, [Ltv/emby/iap/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/iap/ErrorType;

    return-object v0
.end method
