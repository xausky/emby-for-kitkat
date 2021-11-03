.class public final enum Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;
.super Ljava/lang/Enum;
.source "BaseRowItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/itemhandling/BaseRowItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

.field public static final enum None:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

.field public static final enum Play:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

.field public static final enum ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 778
    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    const-string v1, "ShowDetails"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 779
    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    const-string v1, "Play"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->Play:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    .line 780
    new-instance v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    const-string v1, "None"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->None:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    const/4 v0, 0x3

    .line 777
    new-array v0, v0, [Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->Play:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->None:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    aput-object v1, v0, v4

    sput-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->$VALUES:[Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 777
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;
    .locals 1

    .line 777
    const-class v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;
    .locals 1

    .line 777
    sget-object v0, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->$VALUES:[Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    invoke-virtual {v0}, [Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    return-object v0
.end method
