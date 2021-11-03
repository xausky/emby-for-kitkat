.class Lcom/google/android/exoplayer2/source/SampleDataQueue;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    }
.end annotation


# static fields
.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

.field private readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private totalBytesWritten:J

.field private writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 52
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    .line 53
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 54
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 55
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 56
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method private advanceReadTo(J)V
    .locals 2

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V
    .locals 5

    .line 362
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->wasInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->wasInitialized:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 372
    new-array v0, v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v1, 0x0

    .line 374
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 375
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    aput-object v2, v0, v1

    .line 376
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->release([Lcom/google/android/exoplayer2/upstream/Allocation;)V

    return-void
.end method

.method private postAppend(I)V
    .locals 4

    .line 404
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 405
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    :cond_0
    return-void
.end method

.method private preAppend(I)I
    .locals 6

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->wasInitialized:Z

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 392
    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->allocate()Lcom/google/android/exoplayer2/upstream/Allocation;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    .line 391
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->advanceReadTo(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 309
    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readData(J[BI)V
    .locals 5

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->advanceReadTo(J)V

    move-wide v0, p1

    move p1, p4

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    .line 329
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    sub-long/2addr v2, v0

    long-to-int p2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 330
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 331
    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 333
    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v3

    sub-int v4, p4, p1

    .line 331
    invoke-static {v2, v3, p3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p1, p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 339
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 340
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 222
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 225
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 226
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(J[BI)V

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 228
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    and-int/lit16 v7, v4, 0x80

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v4, v4, 0x7f

    move-object/from16 v8, p1

    .line 233
    iget-object v8, v8, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    .line 234
    iget-object v9, v8, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-nez v9, :cond_1

    const/16 v9, 0x10

    .line 235
    new-array v9, v9, [B

    iput-object v9, v8, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    goto :goto_1

    .line 238
    :cond_1
    iget-object v9, v8, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    invoke-static {v9, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 240
    :goto_1
    iget-object v9, v8, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    invoke-direct {v0, v2, v3, v9, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(J[BI)V

    int-to-long v9, v4

    add-long/2addr v2, v9

    if-eqz v7, :cond_2

    .line 246
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 247
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(J[BI)V

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    .line 249
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    move v9, v5

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    .line 255
    :goto_2
    iget-object v4, v8, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-eqz v4, :cond_4

    .line 256
    array-length v5, v4

    if-ge v5, v9, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object v10, v4

    goto :goto_5

    .line 257
    :cond_4
    :goto_4
    new-array v4, v9, [I

    goto :goto_3

    .line 259
    :goto_5
    iget-object v4, v8, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v4, :cond_6

    .line 260
    array-length v5, v4

    if-ge v5, v9, :cond_5

    goto :goto_7

    :cond_5
    :goto_6
    move-object v11, v4

    goto :goto_8

    .line 261
    :cond_6
    :goto_7
    new-array v4, v9, [I

    goto :goto_6

    :goto_8
    if-eqz v7, :cond_7

    mul-int/lit8 v4, v9, 0x6

    .line 265
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 266
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(J[BI)V

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 268
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_9
    if-ge v6, v9, :cond_8

    .line 270
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    aput v4, v10, v6

    .line 271
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    aput v4, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 274
    :cond_7
    aput v6, v10, v6

    .line 275
    iget v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long v12, v2, v12

    long-to-int v5, v12

    sub-int/2addr v4, v5

    aput v4, v11, v6

    .line 279
    :cond_8
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 280
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v13, v8, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v14, v4, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v15, v4, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    move/from16 v16, v4

    invoke-virtual/range {v8 .. v16}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->set(I[I[I[B[BIII)V

    .line 291
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 292
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 293
    iget v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    return-void
.end method


# virtual methods
.method public discardDownstreamTo(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    :cond_2
    return-void
.end method

.method public discardUpstreamSampleBytes(J)V
    .locals 4

    .line 78
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 79
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 88
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 89
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    .line 92
    :cond_1
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 93
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 97
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    if-ne v0, p2, :cond_4

    .line 102
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_3

    .line 81
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V

    .line 82
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 83
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 84
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    :cond_4
    :goto_3
    return-void
.end method

.method public getTotalBytesWritten()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    return-wide v0
.end method

.method public readToBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V
    .locals 6

    .line 122
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 129
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(J[BI)V

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 131
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 132
    iget v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v2, v1

    iput v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 135
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 136
    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(JLjava/nio/ByteBuffer;I)V

    .line 137
    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 138
    iget v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 141
    iget v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->resetSupplementalData(I)V

    .line 142
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(JLjava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 145
    :cond_1
    iget v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 146
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(JLjava/nio/ByteBuffer;I)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 67
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->trim()V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 181
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->preAppend(I)I

    move-result p2

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 185
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v1

    .line 183
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 191
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 193
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->postAppend(I)V

    return p1
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 199
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->preAppend(I)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 202
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    .line 200
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    sub-int/2addr p2, v0

    .line 205
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->postAppend(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
