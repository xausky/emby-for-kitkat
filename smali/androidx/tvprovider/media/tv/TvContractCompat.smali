.class public final Landroidx/tvprovider/media/tv/TvContractCompat;
.super Ljava/lang/Object;
.source "TvContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;,
        Landroidx/tvprovider/media/tv/TvContractCompat$PreviewPrograms;,
        Landroidx/tvprovider/media/tv/TvContractCompat$RecordedPrograms;,
        Landroidx/tvprovider/media/tv/TvContractCompat$Programs;,
        Landroidx/tvprovider/media/tv/TvContractCompat$Channels;,
        Landroidx/tvprovider/media/tv/TvContractCompat$PreviewProgramColumns;,
        Landroidx/tvprovider/media/tv/TvContractCompat$ProgramColumns;,
        Landroidx/tvprovider/media/tv/TvContractCompat$BaseTvColumns;
    }
.end annotation


# static fields
.field public static final ACTION_CHANNEL_BROWSABLE_REQUESTED:Ljava/lang/String; = "android.media.tv.action.CHANNEL_BROWSABLE_REQUESTED"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final ACTION_INITIALIZE_PROGRAMS:Ljava/lang/String; = "android.media.tv.action.INITIALIZE_PROGRAMS"

.field public static final ACTION_PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT:Ljava/lang/String; = "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

.field public static final ACTION_PREVIEW_PROGRAM_BROWSABLE_DISABLED:Ljava/lang/String; = "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

.field public static final ACTION_REQUEST_CHANNEL_BROWSABLE:Ljava/lang/String; = "android.media.tv.action.REQUEST_CHANNEL_BROWSABLE"

.field public static final ACTION_WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED:Ljava/lang/String; = "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

.field public static final AUTHORITY:Ljava/lang/String; = "android.media.tv"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.media.tv.extra.CHANNEL_ID"

.field public static final EXTRA_COLUMN_NAME:Ljava/lang/String; = "android.media.tv.extra.COLUMN_NAME"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final EXTRA_DATA_TYPE:Ljava/lang/String; = "android.media.tv.extra.DATA_TYPE"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final EXTRA_DEFAULT_VALUE:Ljava/lang/String; = "android.media.tv.extra.DEFAULT_VALUE"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final EXTRA_EXISTING_COLUMN_NAMES:Ljava/lang/String; = "android.media.tv.extra.EXISTING_COLUMN_NAMES"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.tv.extra.PACKAGE_NAME"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final EXTRA_PREVIEW_PROGRAM_ID:Ljava/lang/String; = "android.media.tv.extra.PREVIEW_PROGRAM_ID"

.field public static final EXTRA_WATCH_NEXT_PROGRAM_ID:Ljava/lang/String; = "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

.field public static final METHOD_ADD_COLUMN:Ljava/lang/String; = "add_column"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final METHOD_GET_COLUMNS:Ljava/lang/String; = "get_columns"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final PARAM_BROWSABLE_ONLY:Ljava/lang/String; = "browsable_only"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final PARAM_CANONICAL_GENRE:Ljava/lang/String; = "canonical_genre"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final PARAM_CHANNEL:Ljava/lang/String; = "channel"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final PARAM_END_TIME:Ljava/lang/String; = "end_time"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final PARAM_INPUT:Ljava/lang/String; = "input"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final PARAM_START_TIME:Ljava/lang/String; = "start_time"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final PATH_CHANNEL:Ljava/lang/String; = "channel"

.field private static final PATH_PASSTHROUGH:Ljava/lang/String; = "passthrough"

.field private static final PATH_PREVIEW_PROGRAM:Ljava/lang/String; = "preview_program"

.field private static final PATH_PROGRAM:Ljava/lang/String; = "program"

.field private static final PATH_RECORDED_PROGRAM:Ljava/lang/String; = "recorded_program"

.field private static final PATH_WATCH_NEXT_PROGRAM:Ljava/lang/String; = "watch_next_program"

.field public static final PERMISSION_READ_TV_LISTINGS:Ljava/lang/String; = "android.permission.READ_TV_LISTINGS"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildChannelLogoUri(J)Landroid/net/Uri;
    .locals 0

    .line 371
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildChannelLogoUri(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 380
    invoke-static {p0}, Landroid/media/tv/TvContract;->buildChannelLogoUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildChannelUri(J)Landroid/net/Uri;
    .locals 0

    .line 353
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildChannelUri(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 362
    invoke-static {p0}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildChannelsUriForInput(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 390
    invoke-static {p0}, Landroid/media/tv/TvContract;->buildChannelsUriForInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    .line 344
    invoke-static {p0}, Landroid/media/tv/TvContract;->buildInputId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildPreviewProgramUri(J)Landroid/net/Uri;
    .locals 1

    .line 469
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildPreviewProgramsUriForChannel(J)Landroid/net/Uri;
    .locals 2

    .line 478
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "channel"

    .line 479
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildPreviewProgramsUriForChannel(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 488
    invoke-static {p0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildPreviewProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildProgramUri(J)Landroid/net/Uri;
    .locals 0

    .line 399
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildProgramUri(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgramsUriForChannel(J)Landroid/net/Uri;
    .locals 0

    .line 408
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgramsUriForChannel(JJJ)Landroid/net/Uri;
    .locals 0

    .line 432
    invoke-static/range {p0 .. p5}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(JJJ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgramsUriForChannel(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 417
    invoke-static {p0}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildProgramsUriForChannel(Landroid/net/Uri;JJ)Landroid/net/Uri;
    .locals 0

    .line 447
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/tv/TvContract;->buildProgramsUriForChannel(Landroid/net/Uri;JJ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildRecordedProgramUri(J)Landroid/net/Uri;
    .locals 2

    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 457
    invoke-static {p0, p1}, Landroid/media/tv/TvContract;->buildRecordedProgramUri(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 459
    :cond_0
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$RecordedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildWatchNextProgramUri(J)Landroid/net/Uri;
    .locals 1

    .line 500
    sget-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isChannelUri(Landroid/net/Uri;)Z
    .locals 2

    .line 517
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 518
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUri(Landroid/net/Uri;)Z

    move-result p0

    return p0

    .line 520
    :cond_0
    invoke-static {p0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    .locals 2

    .line 539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 540
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    move-result p0

    return p0

    .line 542
    :cond_0
    invoke-static {p0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "passthrough"

    invoke-static {p0, v0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChannelUriForTunerInput(Landroid/net/Uri;)Z
    .locals 2

    .line 528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 529
    invoke-static {p0}, Landroid/media/tv/TvContract;->isChannelUriForTunerInput(Landroid/net/Uri;)Z

    move-result p0

    return p0

    .line 531
    :cond_0
    invoke-static {p0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "channel"

    invoke-static {p0, v0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProgramUri(Landroid/net/Uri;)Z
    .locals 2

    .line 550
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 551
    invoke-static {p0}, Landroid/media/tv/TvContract;->isProgramUri(Landroid/net/Uri;)Z

    move-result p0

    return p0

    .line 553
    :cond_0
    invoke-static {p0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "program"

    invoke-static {p0, v0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRecordedProgramUri(Landroid/net/Uri;)Z
    .locals 1

    .line 561
    invoke-static {p0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isTvUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "recorded_program"

    invoke-static {p0, v0}, Landroidx/tvprovider/media/tv/TvContractCompat;->isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTvUri(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "content"

    .line 504
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.tv"

    .line 505
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTwoSegmentUriStartingWith(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    .line 509
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 510
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static requestChannelBrowsable(Landroid/content/Context;J)V
    .locals 2

    .line 578
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 579
    invoke-static {p0, p1, p2}, Landroid/media/tv/TvContract;->requestChannelBrowsable(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method
