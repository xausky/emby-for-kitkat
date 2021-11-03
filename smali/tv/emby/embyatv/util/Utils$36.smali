.class synthetic Ltv/emby/embyatv/util/Utils$36;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1753
    invoke-static {}, Lmediabrowser/model/apiclient/ConnectionState;->values()[Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/emby/embyatv/util/Utils$36;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    :try_start_0
    sget-object v0, Ltv/emby/embyatv/util/Utils$36;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->SignedIn:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Ltv/emby/embyatv/util/Utils$36;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->ServerSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Ltv/emby/embyatv/util/Utils$36;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Ltv/emby/embyatv/util/Utils$36;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->ConnectSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Ltv/emby/embyatv/util/Utils$36;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->ServerSelection:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
