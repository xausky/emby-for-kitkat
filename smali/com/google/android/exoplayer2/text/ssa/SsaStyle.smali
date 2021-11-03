.class final Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$SsaAlignment;
    }
.end annotation


# static fields
.field public static final SSA_ALIGNMENT_BOTTOM_CENTER:I = 0x2

.field public static final SSA_ALIGNMENT_BOTTOM_LEFT:I = 0x1

.field public static final SSA_ALIGNMENT_BOTTOM_RIGHT:I = 0x3

.field public static final SSA_ALIGNMENT_MIDDLE_CENTER:I = 0x5

.field public static final SSA_ALIGNMENT_MIDDLE_LEFT:I = 0x4

.field public static final SSA_ALIGNMENT_MIDDLE_RIGHT:I = 0x6

.field public static final SSA_ALIGNMENT_TOP_CENTER:I = 0x8

.field public static final SSA_ALIGNMENT_TOP_LEFT:I = 0x7

.field public static final SSA_ALIGNMENT_TOP_RIGHT:I = 0x9

.field public static final SSA_ALIGNMENT_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SsaStyle"


# instance fields
.field public final alignment:I

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->name:Ljava/lang/String;

    .line 91
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->alignment:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static fromStyleLine(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Style:"

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const-string v0, "Style:"

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    array-length v1, v0

    iget v2, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const-string v1, "SsaStyle"

    const-string v2, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    const/4 v4, 0x3

    .line 99
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget p1, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x2

    aput-object p0, v4, p1

    .line 101
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 107
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;

    iget v2, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->nameIndex:I

    aget-object v2, v0, v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "SsaStyle"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping malformed \'Style:\' line: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method private static isValidAlignment(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseAlignment(Ljava/lang/String;)I
    .locals 3

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 119
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->isValidAlignment(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :catch_0
    :cond_0
    const-string v0, "SsaStyle"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method
