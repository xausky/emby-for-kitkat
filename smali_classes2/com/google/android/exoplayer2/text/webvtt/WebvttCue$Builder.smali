.class public Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
.super Ljava/lang/Object;
.source "WebvttCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder$TextAlignment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebvttCueBuilder"

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x2

.field public static final TEXT_ALIGNMENT_END:I = 0x3

.field public static final TEXT_ALIGNMENT_LEFT:I = 0x4

.field public static final TEXT_ALIGNMENT_RIGHT:I = 0x5

.field public static final TEXT_ALIGNMENT_START:I = 0x1


# instance fields
.field private endTime:J

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private position:F

.field private positionAnchor:I

.field private startTime:J

.field private text:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textAlignment:I

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->reset()V

    return-void
.end method

.method private static computeLine(FI)F
    .locals 4

    const v0, -0x800001

    cmpl-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    if-ltz v3, :cond_0

    cmpl-float v3, p0, v2

    if-lez v3, :cond_1

    :cond_0
    return v2

    :cond_1
    if-eqz v1, :cond_2

    return p0

    :cond_2
    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method private static convertTextAlignment(I)Landroid/text/Layout$Alignment;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p0, :pswitch_data_0

    const-string v0, "WebvttCueBuilder"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown textAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 293
    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 290
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    .line 288
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static deriveMaxSize(IF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    .line 315
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return p1

    :pswitch_1
    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-gtz p0, :cond_0

    mul-float p1, p1, v1

    return p1

    :cond_0
    sub-float/2addr v0, p1

    mul-float v0, v0, v1

    return v0

    :pswitch_2
    sub-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static derivePosition(I)F
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :pswitch_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static derivePositionAnchor(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :cond_0
    :pswitch_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;
    .locals 15

    .line 159
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->line:F

    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineType:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->computeLine(FI)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->line:F

    .line 161
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    const v1, -0x800001

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 162
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->derivePosition(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    .line 165
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 166
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->derivePositionAnchor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 169
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->width:F

    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->deriveMaxSize(IF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->width:F

    .line 171
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->startTime:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->endTime:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->text:Ljava/lang/CharSequence;

    .line 174
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:I

    .line 175
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->convertTextAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v7

    iget v8, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->line:F

    iget v9, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineType:I

    iget v10, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    iget v11, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    iget v12, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    iget v13, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->width:F

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFLcom/google/android/exoplayer2/text/webvtt/WebvttCue$1;)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->startTime:J

    .line 141
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->endTime:J

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->text:Ljava/lang/CharSequence;

    const/4 v0, 0x2

    .line 144
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:I

    const v0, -0x800001

    .line 145
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->line:F

    const/4 v1, 0x1

    .line 147
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineType:I

    const/4 v1, 0x0

    .line 149
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    .line 150
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    const/high16 v0, -0x80000000

    .line 151
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->width:F

    return-void
.end method

.method public setEndTime(J)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 190
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->endTime:J

    return-object p0
.end method

.method public setLine(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 205
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->line:F

    return-object p0
.end method

.method public setLineAnchor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 215
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    return-object p0
.end method

.method public setLineType(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 210
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->lineType:I

    return-object p0
.end method

.method public setPosition(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 220
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->position:F

    return-object p0
.end method

.method public setPositionAnchor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 225
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    return-object p0
.end method

.method public setStartTime(J)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 185
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->startTime:J

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTextAlignment(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 200
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->textAlignment:I

    return-object p0
.end method

.method public setWidth(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;
    .locals 0

    .line 230
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCue$Builder;->width:F

    return-object p0
.end method
