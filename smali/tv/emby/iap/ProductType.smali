.class public final enum Ltv/emby/iap/ProductType;
.super Ljava/lang/Enum;
.source "ProductType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/iap/ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/iap/ProductType;

.field public static final enum Product:Ltv/emby/iap/ProductType;

.field public static final enum Subscription:Ltv/emby/iap/ProductType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Ltv/emby/iap/ProductType;

    const-string v1, "Product"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/iap/ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ProductType;->Product:Ltv/emby/iap/ProductType;

    .line 8
    new-instance v0, Ltv/emby/iap/ProductType;

    const-string v1, "Subscription"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/iap/ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ProductType;->Subscription:Ltv/emby/iap/ProductType;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Ltv/emby/iap/ProductType;

    sget-object v1, Ltv/emby/iap/ProductType;->Product:Ltv/emby/iap/ProductType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/iap/ProductType;->Subscription:Ltv/emby/iap/ProductType;

    aput-object v1, v0, v3

    sput-object v0, Ltv/emby/iap/ProductType;->$VALUES:[Ltv/emby/iap/ProductType;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/iap/ProductType;
    .locals 1

    .line 6
    const-class v0, Ltv/emby/iap/ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/iap/ProductType;

    return-object p0
.end method

.method public static values()[Ltv/emby/iap/ProductType;
    .locals 1

    .line 6
    sget-object v0, Ltv/emby/iap/ProductType;->$VALUES:[Ltv/emby/iap/ProductType;

    invoke-virtual {v0}, [Ltv/emby/iap/ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/iap/ProductType;

    return-object v0
.end method
