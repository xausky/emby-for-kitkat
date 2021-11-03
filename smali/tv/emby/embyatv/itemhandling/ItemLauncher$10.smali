.class synthetic Ltv/emby/embyatv/itemhandling/ItemLauncher$10;
.super Ljava/lang/Object;
.source "ItemLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/itemhandling/ItemLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

.field static final synthetic $SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

.field static final synthetic $SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$SelectAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 506
    invoke-static {}, Lmediabrowser/model/apiclient/ConnectionState;->values()[Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v2, Lmediabrowser/model/apiclient/ConnectionState;->Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v2}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v3, Lmediabrowser/model/apiclient/ConnectionState;->SignedIn:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v4, Lmediabrowser/model/apiclient/ConnectionState;->ServerSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v4}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v5, Lmediabrowser/model/apiclient/ConnectionState;->ConnectSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v5}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    sget-object v6, Lmediabrowser/model/apiclient/ConnectionState;->ServerSelection:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v6}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 58
    :catch_4
    invoke-static {}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->values()[Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    :try_start_5
    sget-object v5, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v6, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->BaseItem:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v6}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v6, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvChannel:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v6}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v6, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Person:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v6}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v5, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Chapter:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v5}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v5

    aput v3, v2, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->Server:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v3

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->User:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->SearchHint:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvProgram:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->LiveTvRecording:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->SeriesTimer:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->GridButton:Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v3

    const/16 v4, 0xb

    aput v4, v2, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 222
    :catch_f
    invoke-static {}, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->values()[Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$SelectAction:[I

    :try_start_10
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$SelectAction:[I

    sget-object v3, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ShowDetails:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    invoke-virtual {v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemLauncher$10;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$SelectAction:[I

    sget-object v2, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->Play:Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem$SelectAction;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
