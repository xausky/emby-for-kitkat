.class public final enum Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;
.super Ljava/lang/Enum;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/PlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

.field public static final enum BUFFERING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

.field public static final enum ERROR:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

.field public static final enum IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

.field public static final enum PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

.field public static final enum PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

.field public static final enum SEEKING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

.field public static final enum UNDEFINED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1756
    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    const-string v1, "PLAYING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    const-string v1, "PAUSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    const-string v1, "BUFFERING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->BUFFERING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    const-string v1, "IDLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    const-string v1, "SEEKING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->SEEKING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    const-string v1, "UNDEFINED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->UNDEFINED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    const-string v1, "ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->ERROR:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    const/4 v0, 0x7

    .line 1755
    new-array v0, v0, [Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->BUFFERING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    aput-object v1, v0, v4

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    aput-object v1, v0, v5

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->SEEKING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    aput-object v1, v0, v6

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->UNDEFINED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    aput-object v1, v0, v7

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->ERROR:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    aput-object v1, v0, v8

    sput-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->$VALUES:[Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1755
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;
    .locals 1

    .line 1755
    const-class v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;
    .locals 1

    .line 1755
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->$VALUES:[Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-virtual {v0}, [Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    return-object v0
.end method
