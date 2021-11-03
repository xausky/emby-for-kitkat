.class public final Landroidx/tvprovider/media/tv/TvContractCompat$Programs;
.super Ljava/lang/Object;
.source "TvContractCompat.java"

# interfaces
.implements Landroidx/tvprovider/media/tv/TvContractCompat$BaseTvColumns;
.implements Landroidx/tvprovider/media/tv/TvContractCompat$ProgramColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/TvContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Programs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/tvprovider/media/tv/TvContractCompat$Programs$Genres;
    }
.end annotation


# static fields
.field public static final COLUMN_BROADCAST_GENRE:Ljava/lang/String; = "broadcast_genre"

.field public static final COLUMN_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final COLUMN_END_TIME_UTC_MILLIS:Ljava/lang/String; = "end_time_utc_millis"

.field public static final COLUMN_EPISODE_NUMBER:Ljava/lang/String; = "episode_number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_RECORDING_PROHIBITED:Ljava/lang/String; = "recording_prohibited"

.field public static final COLUMN_SEASON_NUMBER:Ljava/lang/String; = "season_number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_START_TIME_UTC_MILLIS:Ljava/lang/String; = "start_time_utc_millis"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/program"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/program"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://android.media.tv/program"

    .line 2374
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$Programs;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
