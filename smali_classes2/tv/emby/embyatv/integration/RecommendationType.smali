.class public final enum Ltv/emby/embyatv/integration/RecommendationType;
.super Ljava/lang/Enum;
.source "RecommendationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/embyatv/integration/RecommendationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/embyatv/integration/RecommendationType;

.field public static final enum Movie:Ltv/emby/embyatv/integration/RecommendationType;

.field public static final enum Tv:Ltv/emby/embyatv/integration/RecommendationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Ltv/emby/embyatv/integration/RecommendationType;

    const-string v1, "Movie"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/emby/embyatv/integration/RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    .line 5
    new-instance v0, Ltv/emby/embyatv/integration/RecommendationType;

    const-string v1, "Tv"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ltv/emby/embyatv/integration/RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/embyatv/integration/RecommendationType;->Tv:Ltv/emby/embyatv/integration/RecommendationType;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Ltv/emby/embyatv/integration/RecommendationType;

    sget-object v1, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/embyatv/integration/RecommendationType;->Tv:Ltv/emby/embyatv/integration/RecommendationType;

    aput-object v1, v0, v3

    sput-object v0, Ltv/emby/embyatv/integration/RecommendationType;->$VALUES:[Ltv/emby/embyatv/integration/RecommendationType;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/embyatv/integration/RecommendationType;
    .locals 1

    .line 3
    const-class v0, Ltv/emby/embyatv/integration/RecommendationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/integration/RecommendationType;

    return-object p0
.end method

.method public static values()[Ltv/emby/embyatv/integration/RecommendationType;
    .locals 1

    .line 3
    sget-object v0, Ltv/emby/embyatv/integration/RecommendationType;->$VALUES:[Ltv/emby/embyatv/integration/RecommendationType;

    invoke-virtual {v0}, [Ltv/emby/embyatv/integration/RecommendationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/embyatv/integration/RecommendationType;

    return-object v0
.end method
