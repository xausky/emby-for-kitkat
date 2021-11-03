.class public final enum Ltv/emby/embyatv/base/CustomMessage;
.super Ljava/lang/Enum;
.source "CustomMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/base/CustomMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/base/CustomMessage;

.field public static final enum ActionComplete:Ltv/emby/embyatv/base/CustomMessage;

.field public static final enum LongPressBack:Ltv/emby/embyatv/base/CustomMessage;

.field public static final enum RefreshCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

.field public static final enum RefreshRows:Ltv/emby/embyatv/base/CustomMessage;

.field public static final enum RemoveCurrentItem:Ltv/emby/embyatv/base/CustomMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Ltv/emby/embyatv/base/CustomMessage;

    const-string v1, "RefreshCurrentItem"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/base/CustomMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/base/CustomMessage;->RefreshCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    .line 8
    new-instance v0, Ltv/emby/embyatv/base/CustomMessage;

    const-string v1, "RemoveCurrentItem"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/base/CustomMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/base/CustomMessage;->RemoveCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    new-instance v0, Ltv/emby/embyatv/base/CustomMessage;

    const-string v1, "ActionComplete"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/base/CustomMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/base/CustomMessage;->ActionComplete:Ltv/emby/embyatv/base/CustomMessage;

    new-instance v0, Ltv/emby/embyatv/base/CustomMessage;

    const-string v1, "RefreshRows"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ltv/emby/embyatv/base/CustomMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/base/CustomMessage;->RefreshRows:Ltv/emby/embyatv/base/CustomMessage;

    new-instance v0, Ltv/emby/embyatv/base/CustomMessage;

    const-string v1, "LongPressBack"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ltv/emby/embyatv/base/CustomMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/base/CustomMessage;->LongPressBack:Ltv/emby/embyatv/base/CustomMessage;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Ltv/emby/embyatv/base/CustomMessage;

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->RefreshCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->RemoveCurrentItem:Ltv/emby/embyatv/base/CustomMessage;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->ActionComplete:Ltv/emby/embyatv/base/CustomMessage;

    aput-object v1, v0, v4

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->RefreshRows:Ltv/emby/embyatv/base/CustomMessage;

    aput-object v1, v0, v5

    sget-object v1, Ltv/emby/embyatv/base/CustomMessage;->LongPressBack:Ltv/emby/embyatv/base/CustomMessage;

    aput-object v1, v0, v6

    sput-object v0, Ltv/emby/embyatv/base/CustomMessage;->$VALUES:[Ltv/emby/embyatv/base/CustomMessage;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/base/CustomMessage;
    .locals 1

    .line 6
    const-class v0, Ltv/emby/embyatv/base/CustomMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/base/CustomMessage;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/base/CustomMessage;
    .locals 1

    .line 6
    sget-object v0, Ltv/emby/embyatv/base/CustomMessage;->$VALUES:[Ltv/emby/embyatv/base/CustomMessage;

    invoke-virtual {v0}, [Ltv/emby/embyatv/base/CustomMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/base/CustomMessage;

    return-object v0
.end method
