.class synthetic Ltv/emby/embyatv/integration/Recommendations$2;
.super Ljava/lang/Object;
.source "Recommendations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/integration/Recommendations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$tv$emby$embyatv$integration$RecommendationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    invoke-static {}, Ltv/emby/embyatv/integration/RecommendationType;->values()[Ltv/emby/embyatv/integration/RecommendationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/emby/embyatv/integration/Recommendations$2;->$SwitchMap$tv$emby$embyatv$integration$RecommendationType:[I

    :try_start_0
    sget-object v0, Ltv/emby/embyatv/integration/Recommendations$2;->$SwitchMap$tv$emby$embyatv$integration$RecommendationType:[I

    sget-object v1, Ltv/emby/embyatv/integration/RecommendationType;->Movie:Ltv/emby/embyatv/integration/RecommendationType;

    invoke-virtual {v1}, Ltv/emby/embyatv/integration/RecommendationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Ltv/emby/embyatv/integration/Recommendations$2;->$SwitchMap$tv$emby$embyatv$integration$RecommendationType:[I

    sget-object v1, Ltv/emby/embyatv/integration/RecommendationType;->Tv:Ltv/emby/embyatv/integration/RecommendationType;

    invoke-virtual {v1}, Ltv/emby/embyatv/integration/RecommendationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
