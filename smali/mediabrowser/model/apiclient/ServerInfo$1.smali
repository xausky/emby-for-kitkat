.class synthetic Lmediabrowser/model/apiclient/ServerInfo$1;
.super Ljava/lang/Object;
.source "ServerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediabrowser/model/apiclient/ServerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mediabrowser$model$apiclient$ConnectionMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 158
    invoke-static {}, Lmediabrowser/model/apiclient/ConnectionMode;->values()[Lmediabrowser/model/apiclient/ConnectionMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmediabrowser/model/apiclient/ServerInfo$1;->$SwitchMap$mediabrowser$model$apiclient$ConnectionMode:[I

    :try_start_0
    sget-object v0, Lmediabrowser/model/apiclient/ServerInfo$1;->$SwitchMap$mediabrowser$model$apiclient$ConnectionMode:[I

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionMode;->Local:Lmediabrowser/model/apiclient/ConnectionMode;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lmediabrowser/model/apiclient/ServerInfo$1;->$SwitchMap$mediabrowser$model$apiclient$ConnectionMode:[I

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionMode;->Manual:Lmediabrowser/model/apiclient/ConnectionMode;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lmediabrowser/model/apiclient/ServerInfo$1;->$SwitchMap$mediabrowser$model$apiclient$ConnectionMode:[I

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionMode;->Remote:Lmediabrowser/model/apiclient/ConnectionMode;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
