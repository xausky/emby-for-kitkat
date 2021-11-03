.class public final enum Ltv/emby/iap/ErrorSeverity;
.super Ljava/lang/Enum;
.source "ErrorSeverity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/iap/ErrorSeverity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/iap/ErrorSeverity;

.field public static final enum Critical:Ltv/emby/iap/ErrorSeverity;

.field public static final enum Warning:Ltv/emby/iap/ErrorSeverity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Ltv/emby/iap/ErrorSeverity;

    const-string v1, "Warning"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/iap/ErrorSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorSeverity;->Warning:Ltv/emby/iap/ErrorSeverity;

    .line 5
    new-instance v0, Ltv/emby/iap/ErrorSeverity;

    const-string v1, "Critical"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/iap/ErrorSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorSeverity;->Critical:Ltv/emby/iap/ErrorSeverity;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Ltv/emby/iap/ErrorSeverity;

    sget-object v1, Ltv/emby/iap/ErrorSeverity;->Warning:Ltv/emby/iap/ErrorSeverity;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/iap/ErrorSeverity;->Critical:Ltv/emby/iap/ErrorSeverity;

    aput-object v1, v0, v3

    sput-object v0, Ltv/emby/iap/ErrorSeverity;->$VALUES:[Ltv/emby/iap/ErrorSeverity;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/iap/ErrorSeverity;
    .locals 1

    .line 3
    const-class v0, Ltv/emby/iap/ErrorSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/iap/ErrorSeverity;

    return-object p0
.end method

.method public static values()[Ltv/emby/iap/ErrorSeverity;
    .locals 1

    .line 3
    sget-object v0, Ltv/emby/iap/ErrorSeverity;->$VALUES:[Ltv/emby/iap/ErrorSeverity;

    invoke-virtual {v0}, [Ltv/emby/iap/ErrorSeverity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/iap/ErrorSeverity;

    return-object v0
.end method
