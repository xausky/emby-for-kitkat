.class final enum Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;
.super Ljava/lang/Enum;
.source "DisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/display/DisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SwitchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

.field public static final enum Both:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

.field public static final enum Rate:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

.field public static final enum Resolution:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 232
    new-instance v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    const-string v1, "Resolution"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Resolution:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    .line 233
    new-instance v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    const-string v1, "Rate"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Rate:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    .line 234
    new-instance v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    const-string v1, "Both"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Both:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    const/4 v0, 0x3

    .line 231
    new-array v0, v0, [Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    sget-object v1, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Resolution:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Rate:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Both:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    aput-object v1, v0, v4

    sput-object v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->$VALUES:[Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;
    .locals 1

    .line 231
    const-class v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;
    .locals 1

    .line 231
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->$VALUES:[Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    invoke-virtual {v0}, [Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    return-object v0
.end method
