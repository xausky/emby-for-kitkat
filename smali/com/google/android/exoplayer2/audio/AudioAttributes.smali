.class public final Lcom/google/android/exoplayer2/audio/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;


# instance fields
.field public final allowedCapturePolicy:I

.field private audioAttributesV21:Landroid/media/AudioAttributes;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final contentType:I

.field public final flags:I

.field public final usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    .line 111
    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    .line 112
    iput p3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    .line 113
    iput p4, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/google/android/exoplayer2/audio/AudioAttributes$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 146
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAudioAttributesV21()Landroid/media/AudioAttributes;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    .line 126
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    .line 127
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    .line 128
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 129
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 130
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->audioAttributesV21:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 155
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 157
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    add-int/2addr v1, v0

    return v1
.end method
