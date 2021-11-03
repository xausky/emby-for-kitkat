.class public final Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;
.super Ljava/lang/Object;
.source "TvContractCompat.java"

# interfaces
.implements Landroidx/tvprovider/media/tv/TvContractCompat$BaseTvColumns;
.implements Landroidx/tvprovider/media/tv/TvContractCompat$ProgramColumns;
.implements Landroidx/tvprovider/media/tv/TvContractCompat$PreviewProgramColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/TvContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WatchNextPrograms"
.end annotation


# static fields
.field public static final COLUMN_LAST_ENGAGEMENT_TIME_UTC_MILLIS:Ljava/lang/String; = "last_engagement_time_utc_millis"

.field public static final COLUMN_WATCH_NEXT_TYPE:Ljava/lang/String; = "watch_next_type"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/watch_next_program"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/watch_next_program"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final WATCH_NEXT_TYPE_CONTINUE:I = 0x0

.field public static final WATCH_NEXT_TYPE_NEW:I = 0x2

.field public static final WATCH_NEXT_TYPE_NEXT:I = 0x1

.field public static final WATCH_NEXT_TYPE_WATCHLIST:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://android.media.tv/watch_next_program"

    .line 2871
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
