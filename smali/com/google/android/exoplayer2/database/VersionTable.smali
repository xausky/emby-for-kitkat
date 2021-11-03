.class public final Lcom/google/android/exoplayer2/database/VersionTable;
.super Ljava/lang/Object;
.source "VersionTable.java"


# static fields
.field private static final COLUMN_FEATURE:Ljava/lang/String; = "feature"

.field private static final COLUMN_INSTANCE_UID:Ljava/lang/String; = "instance_uid"

.field private static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field public static final FEATURE_CACHE_CONTENT_METADATA:I = 0x1

.field public static final FEATURE_CACHE_FILE_METADATA:I = 0x2

.field public static final FEATURE_OFFLINE:I = 0x0

.field private static final PRIMARY_KEY:Ljava/lang/String; = "PRIMARY KEY (feature, instance_uid)"

.field private static final SQL_CREATE_TABLE_IF_NOT_EXISTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))"

.field private static final TABLE_NAME:Ljava/lang/String; = "ExoPlayerVersions"

.field public static final VERSION_UNSET:I = -0x1

.field private static final WHERE_FEATURE_AND_INSTANCE_UID_EQUALS:Ljava/lang/String; = "feature = ? AND instance_uid = ?"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 168
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "ExoPlayerVersions"

    .line 136
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/database/VersionTable;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v3, "ExoPlayerVersions"

    const-string v0, "version"

    .line 139
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "feature = ? AND instance_uid = ?"

    .line 144
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/database/VersionTable;->featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 140
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 148
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    if-eqz p0, :cond_1

    .line 153
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return v1

    .line 151
    :cond_2
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 p2, 0x0

    .line 152
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    .line 153
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 153
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    throw p2
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception p0

    .line 155
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public static removeVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "ExoPlayerVersions"

    .line 111
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/database/VersionTable;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ExoPlayerVersions"

    const-string v1, "feature = ? AND instance_uid = ?"

    .line 117
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/database/VersionTable;->featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 119
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public static setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))"

    .line 88
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "feature"

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "instance_uid"

    .line 91
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    .line 92
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "ExoPlayerVersions"

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 95
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method static tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "sqlite_master"

    const-string v1, "tbl_name = ?"

    const/4 v2, 0x1

    .line 161
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 162
    invoke-static {p0, v0, v1, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
