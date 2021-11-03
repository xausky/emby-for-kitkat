.class public Ltv/emby/embyatv/integration/OreoChannelHelper;
.super Ljava/lang/Object;
.source "OreoChannelHelper.java"


# static fields
.field private static final APPS_LAUNCH_HOST:Ljava/lang/String; = "tv.emby.embyatv"

.field static final CHANNELS_COLUMN_BROWSABLE_INDEX:I = 0x2

.field static final CHANNELS_COLUMN_ID_INDEX:I = 0x0

.field static final CHANNELS_COLUMN_INTERNAL_PROVIDER_ID_INDEX:I = 0x1

.field static final CHANNELS_MAP_PROJECTION:[Ljava/lang/String;

.field private static final COLUMN_WATCH_NEXT_COLUMN_BROWSABLE_INDEX:I = 0x2

.field private static final COLUMN_WATCH_NEXT_ID_INDEX:I = 0x0

.field private static final COLUMN_WATCH_NEXT_INTERNAL_PROVIDER_ID_INDEX:I = 0x1

.field public static final DIRECT_ENTRY_ACTION_PATH:Ljava/lang/String; = "direct"

.field public static final DISPLAY_ITEM_ACTION_PATH:Ljava/lang/String; = "displayitem"

.field public static final PLAY_ACTION_PATH:Ljava/lang/String; = "play"

.field private static final PREVIEW_PROGRAMS_CONTENT_URI:Landroid/net/Uri;

.field static final PROGRAMS_COLUMN_ID_INDEX:I = 0x0

.field static final PROGRAMS_COLUMN_INTERNAL_INTERACTION_COUNT_INDEX:I = 0x4

.field static final PROGRAMS_COLUMN_INTERNAL_INTERACTION_TYPE_INDEX:I = 0x3

.field static final PROGRAMS_COLUMN_INTERNAL_PROVIDER_ID_INDEX:I = 0x1

.field static final PROGRAMS_COLUMN_TITLE_INDEX:I = 0x2

.field static final PROGRAMS_MAP_PROJECTION:[Ljava/lang/String;

.field private static final SCHEME:Ljava/lang/String; = "embyatv"

.field public static final START_APP_ACTION_PATH:Ljava/lang/String; = "startapp"

.field private static final WATCH_NEXT_MAP_PROJECTION:[Ljava/lang/String;

.field private static existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "internal_provider_id"

    const-string v2, "browsable"

    .line 47
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->CHANNELS_MAP_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "internal_provider_id"

    const-string v2, "title"

    const-string v3, "interaction_type"

    const-string v4, "interaction_count"

    .line 57
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->PROGRAMS_MAP_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "internal_provider_id"

    const-string v2, "browsable"

    .line 86
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->WATCH_NEXT_MAP_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://android.media.tv/preview_program"

    .line 91
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->PREVIEW_PROGRAMS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, p1, p2, p3, v0}, Ltv/emby/embyatv/integration/OreoChannelHelper;->addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)J

    move-result-wide p0

    return-wide p0
.end method

.method static addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)J
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 115
    invoke-static {}, Ltv/emby/embyatv/integration/OreoChannelHelper;->createInputId()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Landroidx/tvprovider/media/tv/Channel$Builder;

    invoke-direct {v1}, Landroidx/tvprovider/media/tv/Channel$Builder;-><init>()V

    .line 117
    invoke-virtual {v1, p1}, Landroidx/tvprovider/media/tv/Channel$Builder;->setDisplayName(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1, p2}, Landroidx/tvprovider/media/tv/Channel$Builder;->setDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object p2

    const-string v1, "TYPE_PREVIEW"

    .line 119
    invoke-virtual {p2, v1}, Landroidx/tvprovider/media/tv/Channel$Builder;->setType(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object p2

    .line 120
    invoke-virtual {p2, v0}, Landroidx/tvprovider/media/tv/Channel$Builder;->setInputId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object p2

    const-string v0, "embyatv://tv.emby.embyatv/startapp"

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/tvprovider/media/tv/Channel$Builder;->setAppLinkIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object p2

    .line 123
    invoke-virtual {p2, p0}, Landroidx/tvprovider/media/tv/Channel$Builder;->setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroidx/tvprovider/media/tv/Channel$Builder;->build()Landroidx/tvprovider/media/tv/Channel;

    move-result-object p0

    .line 126
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Channels;->CONTENT_URI:Landroid/net/Uri;

    .line 127
    invoke-virtual {p0}, Landroidx/tvprovider/media/tv/Channel;->toContentValues()Landroid/content/ContentValues;

    move-result-object p0

    .line 126
    invoke-virtual {p2, v0, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 128
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 134
    invoke-static {v1, v2, p3}, Ltv/emby/embyatv/integration/OreoChannelHelper;->writeChannelLogo(JI)V

    if-eqz p4, :cond_1

    .line 135
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroidx/tvprovider/media/tv/TvContractCompat;->requestChannelBrowsable(Landroid/content/Context;J)V

    .line 137
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string p3, "*** Added Oreo home screen channel: %s"

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p1, p4, p2

    invoke-interface {p0, p3, p4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v1

    .line 129
    :cond_2
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string p3, "**** Insert Oreo channel \'%s\' failed"

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p1, p4, p2

    invoke-interface {p0, p3, p4}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static addWatchNext(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 266
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getProviderIds()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getProviderIds()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "imdb"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 268
    :goto_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide v3, 0x3ffc71c970f7b9e0L    # 1.77778

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPrimaryImageAspectRatio()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 274
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Ltv/emby/embyatv/integration/OreoChannelHelper;->WATCH_NEXT_MAP_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 278
    :cond_2
    :goto_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 279
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 280
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 283
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 285
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v9

    invoke-virtual {v9}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 286
    invoke-static {v7, v8}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildWatchNextProgramUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 285
    invoke-virtual {v9, v7, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-ge v7, v5, :cond_2

    .line 290
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v7

    const-string v8, "Delete Oreo watch next program failed"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    .line 295
    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x12c

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 296
    :goto_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_4

    :cond_4
    const-string v2, "android.resource://tv.emby.embyatv/drawable/video"

    goto :goto_3

    .line 297
    :goto_4
    new-instance v7, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    invoke-direct {v7}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;-><init>()V

    const/4 v8, 0x4

    .line 298
    invoke-virtual {v7, v8}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object v8

    check-cast v8, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    const/4 v9, 0x3

    .line 299
    invoke-virtual {v8, v9}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setWatchNextType(I)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    move-result-object v8

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setLastEngagementTimeUtcMillis(J)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    move-result-object v8

    .line 302
    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->GetFullName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setTitle(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v8

    check-cast v8, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 303
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCanResume()Z

    move-result v9

    xor-int/2addr v5, v9

    invoke-virtual {v8, v5}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setWatchNextType(I)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    move-result-object v5

    .line 304
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object p0

    check-cast p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 305
    invoke-virtual {p0, v2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setPosterArtUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object p0

    check-cast p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    if-eqz v3, :cond_6

    .line 306
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x5

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0, v2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setPosterArtAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p0

    check-cast p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "embyatv://tv.emby.embyatv/play/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p0

    check-cast p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 309
    invoke-virtual {p0, v0}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p0

    check-cast p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 314
    invoke-virtual {p0, v1}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setContentId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 315
    invoke-virtual {v7}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->build()Landroidx/tvprovider/media/tv/WatchNextProgram;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/tvprovider/media/tv/WatchNextProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object p0

    .line 316
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 318
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_7

    .line 321
    :cond_7
    invoke-static {}, Ltv/emby/embyatv/integration/OreoChannelHelper;->ensurePlayNextItems()V

    .line 322
    sget-object p0, Ltv/emby/embyatv/integration/OreoChannelHelper;->existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;

    invoke-virtual {p0}, Ltv/emby/embyatv/integration/PlayNextItems;->getItemIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-static {}, Ltv/emby/embyatv/integration/OreoChannelHelper;->savePlayNext()V

    goto :goto_8

    .line 319
    :cond_8
    :goto_7
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string v0, "Insert watch next program failed"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    if-eqz v4, :cond_9

    .line 327
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void

    :catchall_1
    move-exception p0

    move-object v4, v2

    :goto_9
    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_a
    throw p0
.end method

.method public static clearWatchNext()V
    .locals 2

    .line 257
    invoke-static {}, Ltv/emby/embyatv/integration/OreoChannelHelper;->ensurePlayNextItems()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Ltv/emby/embyatv/integration/OreoChannelHelper;->existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;

    invoke-virtual {v1}, Ltv/emby/embyatv/integration/PlayNextItems;->getItemIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    invoke-static {v1}, Ltv/emby/embyatv/integration/OreoChannelHelper;->deleteWatchNext(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createInputId()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const-class v2, Ltv/emby/embyatv/browsing/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildInputId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static deleteChannel(J)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 153
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    invoke-static {p0, p1}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    .line 153
    invoke-virtual {v0, p0, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_0

    .line 156
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string p1, "Delete Oreo channel failed"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static deleteProgram(J)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 162
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    invoke-static {p0, p1}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildPreviewProgramUri(J)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    .line 162
    invoke-virtual {v0, p0, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_0

    .line 165
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string p1, "Delete program failed"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static deleteWatchNext(Ljava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    .line 336
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Ltv/emby/embyatv/integration/OreoChannelHelper;->WATCH_NEXT_MAP_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 340
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 341
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 344
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 345
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v6

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 346
    invoke-static {v4, v5}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildWatchNextProgramUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 345
    invoke-virtual {v6, v4, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 349
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v4, "Delete program failed"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/integration/OreoChannelHelper;->ensurePlayNextItems()V

    .line 352
    sget-object v2, Ltv/emby/embyatv/integration/OreoChannelHelper;->existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;

    invoke-virtual {v2}, Ltv/emby/embyatv/integration/PlayNextItems;->getItemIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 353
    invoke-static {}, Ltv/emby/embyatv/integration/OreoChannelHelper;->savePlayNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 360
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_4
    throw p0
.end method

.method private static ensurePlayNextItems()V
    .locals 3

    .line 232
    sget-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;

    if-nez v0, :cond_0

    .line 234
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "playnextitems.json"

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 235
    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->ReadStringFromFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 237
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    const-class v2, Ltv/emby/embyatv/integration/PlayNextItems;

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/integration/PlayNextItems;

    sput-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;

    .line 238
    sget-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;

    if-nez v0, :cond_0

    new-instance v0, Ltv/emby/embyatv/integration/PlayNextItems;

    invoke-direct {v0}, Ltv/emby/embyatv/integration/PlayNextItems;-><init>()V

    sput-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    new-instance v0, Ltv/emby/embyatv/integration/PlayNextItems;

    invoke-direct {v0}, Ltv/emby/embyatv/integration/PlayNextItems;-><init>()V

    sput-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;

    :cond_0
    :goto_0
    return-void
.end method

.method static publishLink(ILjava/lang/String;Ljava/lang/String;JLjava/lang/Integer;)J
    .locals 1

    .line 205
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 207
    new-instance v0, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    invoke-direct {v0}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;-><init>()V

    .line 208
    invoke-virtual {v0, p3, p4}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setChannelId(J)Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    move-result-object p3

    .line 209
    invoke-virtual {p3, p1}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setTitle(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object p3

    check-cast p3, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 210
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setPosterArtUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object p2

    check-cast p2, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "embyatv://tv.emby.embyatv/direct/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 211
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p2

    check-cast p2, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 213
    invoke-virtual {p2, p0}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p0

    check-cast p0, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 214
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setWeight(I)Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    move-result-object p0

    const/4 p2, 0x3

    .line 215
    invoke-virtual {p0, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setPosterArtAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p0

    check-cast p0, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    const/4 p2, 0x0

    .line 216
    invoke-virtual {p0, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p0

    check-cast p0, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 217
    invoke-virtual {p0}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->build()Landroidx/tvprovider/media/tv/PreviewProgram;

    move-result-object p0

    .line 219
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object p4, Ltv/emby/embyatv/integration/OreoChannelHelper;->PREVIEW_PROGRAMS_CONTENT_URI:Landroid/net/Uri;

    .line 220
    invoke-virtual {p0}, Landroidx/tvprovider/media/tv/PreviewProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object p0

    .line 219
    invoke-virtual {p3, p4, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 221
    sget-object p3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    return-wide p0

    .line 222
    :cond_1
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string p3, "Insert link %s in Oreo channel failed"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, p2

    invoke-interface {p0, p3, p4}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method static publishProgram(Lmediabrowser/model/dto/BaseItemDto;JLjava/lang/Integer;)J
    .locals 10

    const-string v0, "Episode"

    .line 170
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPrimaryImageAspectRatio()Ljava/lang/Double;

    move-result-object v1

    .line 172
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v4

    const/4 v5, 0x1

    const-string v2, "Movie"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x1

    xor-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x12c

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_2

    const-string v2, "Episode"

    .line 174
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.resource://tv.emby.embyatv/drawable/tv"

    goto :goto_1

    :cond_1
    return-wide v3

    .line 181
    :cond_2
    :goto_1
    new-instance v5, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    invoke-direct {v5}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;-><init>()V

    .line 182
    invoke-virtual {v5, p1, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setChannelId(J)Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    move-result-object p1

    .line 183
    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->GetFullName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setTitle(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object p1

    check-cast p1, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 184
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object p1

    check-cast p1, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 185
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setPosterArtUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object p1

    check-cast p1, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "embyatv://tv.emby.embyatv/displayitem/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 186
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p1

    check-cast p1, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 188
    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p1

    check-cast p1, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 189
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setWeight(I)Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, v0, v5

    if-lez p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x5

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p3, 0x0

    :goto_3
    invoke-virtual {p1, p3}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setPosterArtAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p1

    check-cast p1, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 191
    invoke-virtual {p1, p2}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->setType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object p1

    check-cast p1, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;

    .line 192
    invoke-virtual {p1}, Landroidx/tvprovider/media/tv/PreviewProgram$Builder;->build()Landroidx/tvprovider/media/tv/PreviewProgram;

    move-result-object p1

    .line 194
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v0, Ltv/emby/embyatv/integration/OreoChannelHelper;->PREVIEW_PROGRAMS_CONTENT_URI:Landroid/net/Uri;

    .line 195
    invoke-virtual {p1}, Landroidx/tvprovider/media/tv/PreviewProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    .line 194
    invoke-virtual {p3, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 196
    sget-object p3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_4

    .line 200
    :cond_5
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    return-wide p0

    .line 197
    :cond_6
    :goto_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p3, "Insert program %s in Oreo channel failed"

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-interface {p1, p3, v0}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v3
.end method

.method private static savePlayNext()V
    .locals 4

    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const-string v2, "playnextitems.json"

    invoke-virtual {v1, v2, v0}, Ltv/emby/embyatv/TvApp;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 249
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v2

    sget-object v3, Ltv/emby/embyatv/integration/OreoChannelHelper;->existingPlayNextItems:Ltv/emby/embyatv/integration/PlayNextItems;

    invoke-virtual {v2, v3}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 250
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 252
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "Error saving recommendations"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v0}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static updateChannel(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 143
    new-instance v0, Landroidx/tvprovider/media/tv/Channel$Builder;

    invoke-direct {v0}, Landroidx/tvprovider/media/tv/Channel$Builder;-><init>()V

    .line 144
    invoke-virtual {v0, p2}, Landroidx/tvprovider/media/tv/Channel$Builder;->setDisplayName(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object p2

    .line 145
    invoke-virtual {p2, p3}, Landroidx/tvprovider/media/tv/Channel$Builder;->setDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/Channel$Builder;

    move-result-object p2

    .line 147
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p0, p1}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object p0

    .line 148
    invoke-virtual {p2}, Landroidx/tvprovider/media/tv/Channel$Builder;->build()Landroidx/tvprovider/media/tv/Channel;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/tvprovider/media/tv/Channel;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    const/4 p2, 0x0

    .line 147
    invoke-virtual {p3, p0, p1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static writeChannelLogo(JI)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 98
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 99
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroidx/tvprovider/media/tv/ChannelLogoUtils;->storeChannelLogo(Landroid/content/Context;JLandroid/graphics/Bitmap;)Z

    return-void
.end method
