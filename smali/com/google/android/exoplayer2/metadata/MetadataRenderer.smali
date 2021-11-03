.class public final Lcom/google/android/exoplayer2/metadata/MetadataRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MAX_PENDING_METADATA_COUNT:I = 0x5

.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

.field private decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

.field private inputStreamEnded:Z

.field private final output:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

.field private final outputHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

.field private pendingMetadataCount:I

.field private pendingMetadataIndex:I

.field private final pendingMetadataTimestamps:[J

.field private subsampleOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    sget-object v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    .line 84
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 85
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->output:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 88
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    .line 89
    new-instance p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    const/4 p1, 0x5

    .line 90
    new-array p2, p1, [Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 91
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    return-void
.end method

.method private decodeWrappedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 167
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    .line 170
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    move-result-object v1

    .line 173
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 174
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->clear()V

    .line 175
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->ensureSpaceForWrite(I)V

    .line 176
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-object v3, v3, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 177
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->flip()V

    .line 178
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;->decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decodeWrappedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    goto :goto_1

    .line 185
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private flushPendingMetadata()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 217
    iput v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    return-void
.end method

.method private invokeRenderer(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :goto_0
    return-void
.end method

.method private invokeRendererInternal(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->output:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataOutput;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 224
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/4 p1, 0x1

    return p1

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .line 192
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->flushPendingMetadata()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->flushPendingMetadata()V

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    .line 107
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    return-void
.end method

.method public render(JJ)V
    .locals 4

    .line 118
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-nez p3, :cond_3

    iget p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    if-ge p3, p4, :cond_3

    .line 119
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->clear()V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object p3

    .line 121
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    .line 123
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 124
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->isDecodeOnly()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->subsampleOffsetUs:J

    iput-wide v1, p3, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 131
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->flip()V

    .line 132
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-interface {p3, v1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;->decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    invoke-direct {p0, p3, v1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decodeWrappedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 136
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 137
    new-instance p3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p3, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 138
    iget v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/2addr v1, v2

    rem-int/2addr v1, p4

    .line 140
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    aput-object p3, v2, v1

    .line 141
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    aput-wide v2, p3, v1

    .line 142
    iget p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    goto :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne v1, v2, :cond_3

    .line 147
    iget-object p3, p3, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/Format;

    iget-wide v1, p3, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->subsampleOffsetUs:J

    .line 151
    :cond_3
    :goto_0
    iget p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    if-lez p3, :cond_4

    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    aget-wide v1, p3, v1

    cmp-long p1, v1, p1

    if-gtz p1, :cond_4

    .line 152
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 153
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRenderer(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 154
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    .line 155
    iget p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    add-int/2addr p1, v0

    rem-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 156
    iget p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    :cond_4
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 98
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 99
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 98
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 101
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1
.end method
