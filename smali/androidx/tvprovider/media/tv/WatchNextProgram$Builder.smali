.class public final Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;
.super Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;
.source "WatchNextProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/tvprovider/media/tv/WatchNextProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<",
        "Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/tvprovider/media/tv/WatchNextProgram;)V
    .locals 1

    .line 235
    invoke-direct {p0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;-><init>()V

    .line 236
    new-instance v0, Landroid/content/ContentValues;

    iget-object p1, p1, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->mValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public build()Landroidx/tvprovider/media/tv/WatchNextProgram;
    .locals 1

    .line 274
    new-instance v0, Landroidx/tvprovider/media/tv/WatchNextProgram;

    invoke-direct {v0, p0}, Landroidx/tvprovider/media/tv/WatchNextProgram;-><init>(Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;)V

    return-object v0
.end method

.method public setLastEngagementTimeUtcMillis(J)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;
    .locals 2

    .line 265
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_engagement_time_utc_millis"

    .line 266
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 265
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public setWatchNextType(I)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;
    .locals 2

    .line 252
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->mValues:Landroid/content/ContentValues;

    const-string v1, "watch_next_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method
