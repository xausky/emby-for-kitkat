.class public abstract Landroidx/tvprovider/media/tv/BasePreviewProgram;
.super Landroidx/tvprovider/media/tv/BaseProgram;
.source "BasePreviewProgram.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;,
        Landroidx/tvprovider/media/tv/BasePreviewProgram$TvSeriesItemType;,
        Landroidx/tvprovider/media/tv/BasePreviewProgram$InteractionType;,
        Landroidx/tvprovider/media/tv/BasePreviewProgram$Availability;,
        Landroidx/tvprovider/media/tv/BasePreviewProgram$AspectRatio;,
        Landroidx/tvprovider/media/tv/BasePreviewProgram$Type;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_UNKNOWN:I = -0x1

.field private static final AVAILABILITY_UNKNOWN:I = -0x1

.field private static final INTERACTION_TYPE_UNKNOWN:I = -0x1

.field private static final INVALID_INT_VALUE:I = -0x1

.field private static final INVALID_LONG_VALUE:J = -0x1L

.field private static final IS_BROWSABLE:I = 0x1

.field private static final IS_LIVE:I = 0x1

.field private static final IS_TRANSIENT:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final TYPE_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Landroidx/tvprovider/media/tv/BasePreviewProgram;->getProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Landroidx/tvprovider/media/tv/BaseProgram;-><init>(Landroidx/tvprovider/media/tv/BaseProgram$Builder;)V

    return-void
.end method

.method private static getProjection()[Ljava/lang/String;
    .locals 27

    const-string v0, "internal_provider_id"

    const-string v1, "preview_video_uri"

    const-string v2, "last_playback_position_millis"

    const-string v3, "duration_millis"

    const-string v4, "intent_uri"

    const-string v5, "transient"

    const-string v6, "type"

    const-string v7, "poster_art_aspect_ratio"

    const-string v8, "poster_thumbnail_aspect_ratio"

    const-string v9, "logo_uri"

    const-string v10, "availability"

    const-string v11, "starting_price"

    const-string v12, "offer_price"

    const-string v13, "release_date"

    const-string v14, "item_count"

    const-string v15, "live"

    const-string v16, "interaction_type"

    const-string v17, "interaction_count"

    const-string v18, "author"

    const-string v19, "browsable"

    const-string v20, "content_id"

    const-string v21, "logo_content_description"

    const-string v22, "genre"

    const-string v23, "start_time_utc_millis"

    const-string v24, "end_time_utc_millis"

    const-string v25, "preview_audio_uri"

    const-string v26, "tv_series_item_type"

    .line 591
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    .line 620
    sget-object v1, Landroidx/tvprovider/media/tv/BaseProgram;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroidx/tvprovider/media/tv/CollectionUtils;->concatAll([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static setFieldsFromCursor(Landroid/database/Cursor;Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;)V
    .locals 5

    .line 469
    invoke-static {p0, p1}, Landroidx/tvprovider/media/tv/BaseProgram;->setFieldsFromCursor(Landroid/database/Cursor;Landroidx/tvprovider/media/tv/BaseProgram$Builder;)V

    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1d

    const-string v0, "internal_provider_id"

    .line 473
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 474
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_0
    const-string v0, "preview_video_uri"

    .line 478
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 479
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setPreviewVideoUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_1
    const-string v0, "last_playback_position_millis"

    .line 482
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 484
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 485
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setLastPlaybackPositionMillis(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_2
    const-string v0, "duration_millis"

    .line 488
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 489
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 490
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setDurationMillis(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_3
    const-string v0, "intent_uri"

    .line 492
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 493
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 494
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setIntentUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_4
    const-string v0, "transient"

    .line 496
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_6

    .line 497
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 498
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setTransient(Z)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_6
    const-string v0, "type"

    .line 500
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 501
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 502
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_7
    const-string v0, "poster_art_aspect_ratio"

    .line 504
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    .line 506
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 507
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setPosterArtAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_8
    const-string v0, "poster_thumbnail_aspect_ratio"

    .line 510
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 511
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 512
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setThumbnailAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_9
    const-string v0, "logo_uri"

    .line 514
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 515
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 516
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setLogoUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_a
    const-string v0, "availability"

    .line 518
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    .line 519
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 520
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setAvailability(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_b
    const-string v0, "starting_price"

    .line 522
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    .line 523
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 524
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setStartingPrice(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_c
    const-string v0, "offer_price"

    .line 526
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    .line 527
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 528
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setOfferPrice(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_d
    const-string v0, "release_date"

    .line 530
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e

    .line 531
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 532
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setReleaseDate(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_e
    const-string v0, "item_count"

    .line 534
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_f

    .line 535
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 536
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setItemCount(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_f
    const-string v0, "live"

    .line 538
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 539
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 540
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_1

    :cond_10
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setLive(Z)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_11
    const-string v0, "interaction_type"

    .line 542
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    .line 543
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 544
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setInteractionType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_12
    const-string v0, "interaction_count"

    .line 546
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    .line 547
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 548
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setInteractionCount(J)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_13
    const-string v0, "author"

    .line 550
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_14

    .line 551
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 552
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setAuthor(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_14
    const-string v0, "browsable"

    .line 554
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 555
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 556
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    invoke-virtual {p1, v1}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setBrowsable(Z)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_16
    const-string v0, "content_id"

    .line 558
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_17

    .line 559
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 560
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setContentId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_17
    const-string v0, "logo_content_description"

    .line 562
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_18

    .line 564
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 565
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setLogoContentDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_18
    const-string v0, "genre"

    .line 567
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_19

    .line 568
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 569
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setGenre(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_19
    const-string v0, "start_time_utc_millis"

    .line 571
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1a

    .line 572
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 573
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setStartTimeUtcMillis(J)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_1a
    const-string v0, "end_time_utc_millis"

    .line 575
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 576
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 577
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setEndTimeUtcMillis(J)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_1b
    const-string v0, "preview_audio_uri"

    .line 579
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1c

    .line 580
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 581
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setPreviewAudioUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_1c
    const-string v0, "tv_series_item_type"

    .line 583
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1d

    .line 584
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 585
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setTvSeriesItemType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_1d
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 403
    instance-of v0, p1, Landroidx/tvprovider/media/tv/BasePreviewProgram;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 406
    :cond_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    check-cast p1, Landroidx/tvprovider/media/tv/BasePreviewProgram;

    iget-object p1, p1, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 2

    .line 336
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "author"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailability()I
    .locals 2

    .line 267
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "availability"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 2

    .line 353
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "content_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMillis()I
    .locals 2

    .line 186
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "duration_millis"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getEndTimeUtcMillis()J
    .locals 2

    .line 388
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "end_time_utc_millis"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .line 371
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "genre"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "intent_uri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 205
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIntentUri()Landroid/net/Uri;
    .locals 2

    .line 195
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "intent_uri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInteractionCount()J
    .locals 2

    .line 327
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "interaction_count"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getInteractionType()I
    .locals 2

    .line 318
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "interaction_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getInternalProviderId()Ljava/lang/String;
    .locals 2

    .line 159
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "internal_provider_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 300
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "item_count"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLastPlaybackPositionMillis()I
    .locals 2

    .line 177
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_playback_position_millis"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLogoContentDescription()Ljava/lang/String;
    .locals 2

    .line 363
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "logo_content_description"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogoUri()Landroid/net/Uri;
    .locals 2

    .line 258
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "logo_uri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getOfferPrice()Ljava/lang/String;
    .locals 2

    .line 284
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "offer_price"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosterArtAspectRatio()I
    .locals 2

    .line 239
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "poster_art_aspect_ratio"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPreviewAudioUri()Landroid/net/Uri;
    .locals 2

    .line 397
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "preview_audio_uri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPreviewVideoUri()Landroid/net/Uri;
    .locals 2

    .line 167
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "preview_video_uri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 2

    .line 292
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "release_date"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTimeUtcMillis()J
    .locals 2

    .line 379
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "start_time_utc_millis"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getStartingPrice()Ljava/lang/String;
    .locals 2

    .line 276
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "starting_price"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailAspectRatio()I
    .locals 2

    .line 249
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "poster_thumbnail_aspect_ratio"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTvSeriesItemType()I
    .locals 2

    .line 230
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "tv_series_item_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    .line 222
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isBrowsable()Z
    .locals 2

    .line 344
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "browsable"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLive()Z
    .locals 2

    .line 309
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "live"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTransient()Z
    .locals 2

    .line 213
    iget-object v0, p0, Landroidx/tvprovider/media/tv/BasePreviewProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "transient"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 1

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram;->toContentValues(Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues(Z)Landroid/content/ContentValues;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 427
    invoke-super {p0}, Landroidx/tvprovider/media/tv/BaseProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 428
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    const-string v1, "internal_provider_id"

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "preview_video_uri"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "last_playback_position_millis"

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "duration_millis"

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "intent_uri"

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "transient"

    .line 434
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "type"

    .line 435
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "poster_art_aspect_ratio"

    .line 436
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "poster_thumbnail_aspect_ratio"

    .line 437
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "logo_uri"

    .line 438
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "availability"

    .line 439
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "starting_price"

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "offer_price"

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "release_date"

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "item_count"

    .line 443
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "live"

    .line 444
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "interaction_count"

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "author"

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "content_id"

    .line 447
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "logo_content_description"

    .line 448
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "genre"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "start_time_utc_millis"

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "end_time_utc_millis"

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "preview_audio_uri"

    .line 452
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "tv_series_item_type"

    .line 453
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 455
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "browsable"

    .line 456
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
