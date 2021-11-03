.class synthetic Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;
.super Ljava/lang/Object;
.source "ItemRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/itemhandling/ItemRowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

.field static final synthetic $SwitchMap$tv$emby$embyatv$querying$QueryType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 890
    invoke-static {}, Ltv/emby/embyatv/model/ChangeTriggerType;->values()[Ltv/emby/embyatv/model/ChangeTriggerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    sget-object v2, Ltv/emby/embyatv/model/ChangeTriggerType;->LibraryUpdated:Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-virtual {v2}, Ltv/emby/embyatv/model/ChangeTriggerType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    sget-object v3, Ltv/emby/embyatv/model/ChangeTriggerType;->MoviePlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-virtual {v3}, Ltv/emby/embyatv/model/ChangeTriggerType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    sget-object v4, Ltv/emby/embyatv/model/ChangeTriggerType;->TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-virtual {v4}, Ltv/emby/embyatv/model/ChangeTriggerType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    sget-object v5, Ltv/emby/embyatv/model/ChangeTriggerType;->MusicPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-virtual {v5}, Ltv/emby/embyatv/model/ChangeTriggerType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    sget-object v6, Ltv/emby/embyatv/model/ChangeTriggerType;->FavoriteUpdate:Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-virtual {v6}, Ltv/emby/embyatv/model/ChangeTriggerType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    sget-object v7, Ltv/emby/embyatv/model/ChangeTriggerType;->VideoQueueChange:Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-virtual {v7}, Ltv/emby/embyatv/model/ChangeTriggerType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->GuideNeedsLoad:Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-virtual {v8}, Ltv/emby/embyatv/model/ChangeTriggerType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$model$ChangeTriggerType:[I

    sget-object v9, Ltv/emby/embyatv/model/ChangeTriggerType;->Always:Ltv/emby/embyatv/model/ChangeTriggerType;

    invoke-virtual {v9}, Ltv/emby/embyatv/model/ChangeTriggerType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 486
    :catch_7
    invoke-static {}, Ltv/emby/embyatv/querying/QueryType;->values()[Ltv/emby/embyatv/querying/QueryType;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    :try_start_8
    sget-object v8, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v9, Ltv/emby/embyatv/querying/QueryType;->LiveTvChannel:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v9}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v8, Ltv/emby/embyatv/querying/QueryType;->AlbumArtists:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v8}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v8

    aput v1, v0, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Artists:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Genres:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LiveTvRecording:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Items:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Persons:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Episodes:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->ContinueWatching:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LatestItems:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->NextUp:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->LiveTvProgram:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Upcoming:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Season:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Views:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->SimilarSeries:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->SimilarMovies:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticPeople:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticServers:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticChapters:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticItems:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Premieres:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->StaticAudioQueueItems:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Specials:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Trailers:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Users:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->Search:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter$32;->$SwitchMap$tv$emby$embyatv$querying$QueryType:[I

    sget-object v1, Ltv/emby/embyatv/querying/QueryType;->SeriesTimer:Ltv/emby/embyatv/querying/QueryType;

    invoke-virtual {v1}, Ltv/emby/embyatv/querying/QueryType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method
