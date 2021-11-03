.class final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
.super Ljava/lang/Object;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellResolution"
.end annotation


# instance fields
.field final columns:I

.field final rows:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->columns:I

    .line 742
    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->rows:I

    return-void
.end method
