.class public final Landroidx/tvprovider/media/tv/TvContractCompat$PreviewPrograms;
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
    name = "PreviewPrograms"
.end annotation


# static fields
.field public static final COLUMN_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final COLUMN_WEIGHT:Ljava/lang/String; = "weight"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/preview_program"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/preview_program"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://android.media.tv/preview_program"

    .line 2822
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroidx/tvprovider/media/tv/TvContractCompat$PreviewPrograms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
