.class public final Landroidx/tvprovider/media/tv/WatchNextProgram;
.super Landroidx/tvprovider/media/tv/BasePreviewProgram;
.source "WatchNextProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;,
        Landroidx/tvprovider/media/tv/WatchNextProgram$WatchNextType;
    }
.end annotation


# static fields
.field private static final INVALID_INT_VALUE:I = -0x1

.field private static final INVALID_LONG_VALUE:J = -0x1L

.field public static final PROJECTION:[Ljava/lang/String;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final WATCH_NEXT_TYPE_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    invoke-static {}, Landroidx/tvprovider/media/tv/WatchNextProgram;->getProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/tvprovider/media/tv/WatchNextProgram;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Landroidx/tvprovider/media/tv/BasePreviewProgram;-><init>(Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Landroidx/tvprovider/media/tv/WatchNextProgram;
    .locals 3

    .line 196
    new-instance v0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    invoke-direct {v0}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;-><init>()V

    .line 197
    invoke-static {p0, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram;->setFieldsFromCursor(Landroid/database/Cursor;Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;)V

    const-string v1, "watch_next_type"

    .line 199
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 200
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setWatchNextType(I)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    :cond_0
    const-string v1, "last_engagement_time_utc_millis"

    .line 203
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 205
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setLastEngagementTimeUtcMillis(J)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 208
    :cond_1
    invoke-virtual {v0}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->build()Landroidx/tvprovider/media/tv/WatchNextProgram;

    move-result-object p0

    return-object p0
.end method

.method private static getProjection()[Ljava/lang/String;
    .locals 4

    const-string v0, "watch_next_type"

    const-string v1, "last_engagement_time_utc_millis"

    .line 212
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 216
    sget-object v1, Landroidx/tvprovider/media/tv/BasePreviewProgram;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroidx/tvprovider/media/tv/CollectionUtils;->concatAll([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 132
    instance-of v0, p1, Landroidx/tvprovider/media/tv/WatchNextProgram;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    check-cast p1, Landroidx/tvprovider/media/tv/WatchNextProgram;

    iget-object p1, p1, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLastEngagementTimeUtcMillis()J
    .locals 2

    .line 126
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_engagement_time_utc_millis"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getWatchNextType()I
    .locals 2

    .line 117
    iget-object v0, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    const-string v1, "watch_next_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public hasAnyUpdatedValues(Landroidx/tvprovider/media/tv/WatchNextProgram;)Z
    .locals 4

    .line 144
    iget-object v0, p1, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    iget-object v2, p1, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    iget-object v3, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    invoke-static {v2, v1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Landroidx/tvprovider/media/tv/WatchNextProgram;->toContentValues(Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues(Z)Landroid/content/ContentValues;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 179
    invoke-super {p0, p1}, Landroidx/tvprovider/media/tv/BasePreviewProgram;->toContentValues(Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const-string v0, "watch_next_type"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "last_engagement_time_utc_millis"

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatchNextProgram{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/tvprovider/media/tv/WatchNextProgram;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
