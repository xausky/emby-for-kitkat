.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectData"
.end annotation


# instance fields
.field public final bottomFieldData:[B

.field public final id:I

.field public final nonModifyingColorFlag:Z

.field public final topFieldData:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    .line 1052
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    .line 1053
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    .line 1054
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    return-void
.end method
