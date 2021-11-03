.class public final enum Ltv/emby/embyatv/model/ChangeTriggerType;
.super Ljava/lang/Enum;
.source "ChangeTriggerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/model/ChangeTriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/model/ChangeTriggerType;

.field public static final enum Always:Ltv/emby/embyatv/model/ChangeTriggerType;

.field public static final enum FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

.field public static final enum GuideNeedsLoad:Ltv/emby/embyatv/model/ChangeTriggerType;

.field public static final enum LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

.field public static final enum MoviePlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

.field public static final enum MusicPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

.field public static final enum TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

.field public static final enum VideoQueueChange:Ltv/emby/embyatv/model/ChangeTriggerType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Ltv/emby/embyatv/model/ChangeTriggerType;

    const-string v1, "LibraryUpdated"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/model/ChangeTriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 8
    new-instance v0, Ltv/emby/embyatv/model/ChangeTriggerType;

    const-string v1, "MoviePlayback"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/model/ChangeTriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->MoviePlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 9
    new-instance v0, Ltv/emby/embyatv/model/ChangeTriggerType;

    const-string v1, "TvPlayback"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/model/ChangeTriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 10
    new-instance v0, Ltv/emby/embyatv/model/ChangeTriggerType;

    const-string v1, "GuideNeedsLoad"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ltv/emby/embyatv/model/ChangeTriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->GuideNeedsLoad:Ltv/emby/embyatv/model/ChangeTriggerType;

    .line 11
    new-instance v0, Ltv/emby/embyatv/model/ChangeTriggerType;

    const-string v1, "MusicPlayback"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ltv/emby/embyatv/model/ChangeTriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->MusicPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    new-instance v0, Ltv/emby/embyatv/model/ChangeTriggerType;

    const-string v1, "Always"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ltv/emby/embyatv/model/ChangeTriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->Always:Ltv/emby/embyatv/model/ChangeTriggerType;

    new-instance v0, Ltv/emby/embyatv/model/ChangeTriggerType;

    const-string v1, "VideoQueueChange"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ltv/emby/embyatv/model/ChangeTriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->VideoQueueChange:Ltv/emby/embyatv/model/ChangeTriggerType;

    new-instance v0, Ltv/emby/embyatv/model/ChangeTriggerType;

    const-string v1, "FavoriteUpdate"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ltv/emby/embyatv/model/ChangeTriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    const/16 v0, 0x8

    .line 6
    new-array v0, v0, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->MoviePlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v4

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->GuideNeedsLoad:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v5

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->MusicPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v6

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->Always:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v7

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->VideoQueueChange:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v8

    sget-object v1, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v1, v0, v9

    sput-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->$VALUES:[Ltv/emby/embyatv/model/ChangeTriggerType;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/model/ChangeTriggerType;
    .locals 1

    .line 6
    const-class v0, Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/model/ChangeTriggerType;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/model/ChangeTriggerType;
    .locals 1

    .line 6
    sget-object v0, Ltv/emby/embyatv/model/ChangeTriggerType;->$VALUES:[Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-virtual {v0}, [Ltv/emby/embyatv/model/ChangeTriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/model/ChangeTriggerType;

    return-object v0
.end method
