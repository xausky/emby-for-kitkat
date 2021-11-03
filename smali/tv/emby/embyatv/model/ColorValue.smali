.class public final enum Ltv/emby/embyatv/model/ColorValue;
.super Ljava/lang/Enum;
.source "ColorValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/model/ColorValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/model/ColorValue;

.field public static final enum Gray:Ltv/emby/embyatv/model/ColorValue;

.field public static final enum White:Ltv/emby/embyatv/model/ColorValue;

.field public static final enum Yellow:Ltv/emby/embyatv/model/ColorValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Ltv/emby/embyatv/model/ColorValue;

    const-string v1, "White"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/model/ColorValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ColorValue;->White:Ltv/emby/embyatv/model/ColorValue;

    .line 5
    new-instance v0, Ltv/emby/embyatv/model/ColorValue;

    const-string v1, "Yellow"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/model/ColorValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ColorValue;->Yellow:Ltv/emby/embyatv/model/ColorValue;

    .line 6
    new-instance v0, Ltv/emby/embyatv/model/ColorValue;

    const-string v1, "Gray"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/model/ColorValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ColorValue;->Gray:Ltv/emby/embyatv/model/ColorValue;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Ltv/emby/embyatv/model/ColorValue;

    sget-object v1, Ltv/emby/embyatv/model/ColorValue;->White:Ltv/emby/embyatv/model/ColorValue;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/model/ColorValue;->Yellow:Ltv/emby/embyatv/model/ColorValue;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/model/ColorValue;->Gray:Ltv/emby/embyatv/model/ColorValue;

    aput-object v1, v0, v4

    sput-object v0, Ltv/emby/embyatv/model/ColorValue;->$VALUES:[Ltv/emby/embyatv/model/ColorValue;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/model/ColorValue;
    .locals 1

    .line 3
    const-class v0, Ltv/emby/embyatv/model/ColorValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/model/ColorValue;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/model/ColorValue;
    .locals 1

    .line 3
    sget-object v0, Ltv/emby/embyatv/model/ColorValue;->$VALUES:[Ltv/emby/embyatv/model/ColorValue;

    invoke-virtual {v0}, [Ltv/emby/embyatv/model/ColorValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/model/ColorValue;

    return-object v0
.end method
