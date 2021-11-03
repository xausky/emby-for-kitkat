.class public final enum Ltv/emby/embyatv/model/TextSize;
.super Ljava/lang/Enum;
.source "TextSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/model/TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/model/TextSize;

.field public static final enum Huge:Ltv/emby/embyatv/model/TextSize;

.field public static final enum Large:Ltv/emby/embyatv/model/TextSize;

.field public static final enum Normal:Ltv/emby/embyatv/model/TextSize;

.field public static final enum Small:Ltv/emby/embyatv/model/TextSize;

.field public static final enum Tiny:Ltv/emby/embyatv/model/TextSize;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Ltv/emby/embyatv/model/TextSize;

    const-string v1, "Tiny"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/model/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/TextSize;->Tiny:Ltv/emby/embyatv/model/TextSize;

    .line 5
    new-instance v0, Ltv/emby/embyatv/model/TextSize;

    const-string v1, "Small"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/model/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/TextSize;->Small:Ltv/emby/embyatv/model/TextSize;

    .line 6
    new-instance v0, Ltv/emby/embyatv/model/TextSize;

    const-string v1, "Normal"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/model/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/TextSize;->Normal:Ltv/emby/embyatv/model/TextSize;

    .line 7
    new-instance v0, Ltv/emby/embyatv/model/TextSize;

    const-string v1, "Large"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ltv/emby/embyatv/model/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/TextSize;->Large:Ltv/emby/embyatv/model/TextSize;

    .line 8
    new-instance v0, Ltv/emby/embyatv/model/TextSize;

    const-string v1, "Huge"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ltv/emby/embyatv/model/TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/TextSize;->Huge:Ltv/emby/embyatv/model/TextSize;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Ltv/emby/embyatv/model/TextSize;

    sget-object v1, Ltv/emby/embyatv/model/TextSize;->Tiny:Ltv/emby/embyatv/model/TextSize;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/model/TextSize;->Small:Ltv/emby/embyatv/model/TextSize;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/model/TextSize;->Normal:Ltv/emby/embyatv/model/TextSize;

    aput-object v1, v0, v4

    sget-object v1, Ltv/emby/embyatv/model/TextSize;->Large:Ltv/emby/embyatv/model/TextSize;

    aput-object v1, v0, v5

    sget-object v1, Ltv/emby/embyatv/model/TextSize;->Huge:Ltv/emby/embyatv/model/TextSize;

    aput-object v1, v0, v6

    sput-object v0, Ltv/emby/embyatv/model/TextSize;->$VALUES:[Ltv/emby/embyatv/model/TextSize;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/model/TextSize;
    .locals 1

    .line 3
    const-class v0, Ltv/emby/embyatv/model/TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/model/TextSize;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/model/TextSize;
    .locals 1

    .line 3
    sget-object v0, Ltv/emby/embyatv/model/TextSize;->$VALUES:[Ltv/emby/embyatv/model/TextSize;

    invoke-virtual {v0}, [Ltv/emby/embyatv/model/TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/model/TextSize;

    return-object v0
.end method
