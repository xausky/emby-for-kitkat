.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpsData"
.end annotation


# instance fields
.field public final constraintsFlagsAndReservedZero2Bits:I

.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final levelIdc:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthAspectRatio:F

.field public final profileIdc:I

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIFZZIIIZ)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->profileIdc:I

    .line 62
    iput p2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    .line 63
    iput p3, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 64
    iput p4, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    .line 65
    iput p5, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    .line 66
    iput p6, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    .line 67
    iput p7, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 68
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    .line 69
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    .line 70
    iput p10, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    .line 71
    iput p11, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    .line 72
    iput p12, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    .line 73
    iput-boolean p13, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    return-void
.end method
