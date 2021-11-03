.class public final enum Ltv/emby/embyatv/model/DisplayPriorityType;
.super Ljava/lang/Enum;
.source "DisplayPriorityType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/model/DisplayPriorityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/model/DisplayPriorityType;

.field public static final enum LiveTv:Ltv/emby/embyatv/model/DisplayPriorityType;

.field public static final enum Movies:Ltv/emby/embyatv/model/DisplayPriorityType;

.field public static final enum TvShows:Ltv/emby/embyatv/model/DisplayPriorityType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Ltv/emby/embyatv/model/DisplayPriorityType;

    const-string v1, "TvShows"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/model/DisplayPriorityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/DisplayPriorityType;->TvShows:Ltv/emby/embyatv/model/DisplayPriorityType;

    .line 8
    new-instance v0, Ltv/emby/embyatv/model/DisplayPriorityType;

    const-string v1, "LiveTv"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/model/DisplayPriorityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/DisplayPriorityType;->LiveTv:Ltv/emby/embyatv/model/DisplayPriorityType;

    .line 9
    new-instance v0, Ltv/emby/embyatv/model/DisplayPriorityType;

    const-string v1, "Movies"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/model/DisplayPriorityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/DisplayPriorityType;->Movies:Ltv/emby/embyatv/model/DisplayPriorityType;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ltv/emby/embyatv/model/DisplayPriorityType;

    sget-object v1, Ltv/emby/embyatv/model/DisplayPriorityType;->TvShows:Ltv/emby/embyatv/model/DisplayPriorityType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/model/DisplayPriorityType;->LiveTv:Ltv/emby/embyatv/model/DisplayPriorityType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/model/DisplayPriorityType;->Movies:Ltv/emby/embyatv/model/DisplayPriorityType;

    aput-object v1, v0, v4

    sput-object v0, Ltv/emby/embyatv/model/DisplayPriorityType;->$VALUES:[Ltv/emby/embyatv/model/DisplayPriorityType;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/model/DisplayPriorityType;
    .locals 1

    .line 6
    const-class v0, Ltv/emby/embyatv/model/DisplayPriorityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/model/DisplayPriorityType;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/model/DisplayPriorityType;
    .locals 1

    .line 6
    sget-object v0, Ltv/emby/embyatv/model/DisplayPriorityType;->$VALUES:[Ltv/emby/embyatv/model/DisplayPriorityType;

    invoke-virtual {v0}, [Ltv/emby/embyatv/model/DisplayPriorityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/model/DisplayPriorityType;

    return-object v0
.end method
