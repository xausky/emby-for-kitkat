.class final enum Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;
.super Ljava/lang/Enum;
.source "CancellationToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediabrowser/apiinteraction/tasks/CancellationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TokenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

.field public static final enum FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

.field public static final enum NOT_FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    new-instance v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    const-string v1, "NOT_FIXED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->NOT_FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    const/4 v0, 0x2

    new-array v0, v0, [Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    sget-object v1, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->NOT_FIXED:Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    aput-object v1, v0, v3

    sput-object v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->$VALUES:[Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;
    .locals 1

    .line 25
    const-class v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    return-object p0
.end method

.method public static values()[Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;
    .locals 1

    .line 25
    sget-object v0, Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->$VALUES:[Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    invoke-virtual {v0}, [Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/apiinteraction/tasks/CancellationToken$TokenState;

    return-object v0
.end method
