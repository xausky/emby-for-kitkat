.class final Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;
.super Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.source "TsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
    }
.end annotation


# static fields
.field private static final MINIMUM_SEARCH_RANGE_BYTES:I = 0x3ac

.field private static final SEEK_TOLERANCE_US:J = 0x186a0L

.field private static final TIMESTAMP_SEARCH_BYTES:I = 0x1b8a0


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;JJI)V
    .locals 16

    .line 42
    new-instance v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;-><init>()V

    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;

    move-object/from16 v0, p1

    move/from16 v3, p6

    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide v5, v9

    move-wide v9, v11

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method
