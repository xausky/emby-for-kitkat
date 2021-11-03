.class final Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;
.super Ljava/lang/Object;
.source "DefaultDownloadIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadCursorImpl"
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$1;)V
    .locals 0

    .line 414
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDownload()Lcom/google/android/exoplayer2/offline/Download;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->access$100(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public synthetic isAfterLast()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isAfterLast(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic isBeforeFirst()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isBeforeFirst(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public synthetic isFirst()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isFirst(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic isLast()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isLast(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToFirst()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToFirst(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToLast()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToLast(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToNext()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToNext(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public synthetic moveToPrevious()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToPrevious(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method
