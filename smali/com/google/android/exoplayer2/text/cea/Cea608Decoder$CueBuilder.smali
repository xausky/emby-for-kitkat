.class Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    }
.end annotation


# static fields
.field private static final BASE_ROW:I = 0xf

.field private static final SCREEN_CHARWIDTH:I = 0x20


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final cueStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;",
            ">;"
        }
    .end annotation
.end field

.field private indent:I

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private tabOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    .line 767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 770
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setCaptionRowCount(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I
    .locals 0

    .line 748
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;)I
    .locals 0

    .line 748
    iget p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I
    .locals 0

    .line 748
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I
    .locals 0

    .line 748
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    return p1
.end method

.method private buildCurrentLine()Landroid/text/SpannableString;
    .locals 15

    .line 915
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 916
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 926
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_a

    .line 927
    iget-object v11, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 928
    iget-boolean v12, v11, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->underline:Z

    .line 929
    iget v13, v11, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_3

    const/4 v10, 0x7

    if-ne v13, v10, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-ne v13, v10, :cond_2

    goto :goto_2

    .line 934
    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->access$300()[I

    move-result-object v9

    aget v9, v9, v13

    :goto_2
    move v10, v14

    .line 937
    :cond_3
    iget v11, v11, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    add-int/lit8 v4, v4, 0x1

    .line 938
    iget-object v13, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_4

    iget-object v13, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget v13, v13, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-ne v11, v13, :cond_5

    goto :goto_0

    :cond_5
    if-eq v5, v3, :cond_6

    if-nez v12, :cond_6

    .line 946
    invoke-static {v0, v5, v11}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    const/4 v5, -0x1

    goto :goto_4

    :cond_6
    if-ne v5, v3, :cond_7

    if-eqz v12, :cond_7

    move v5, v11

    :cond_7
    :goto_4
    if-eq v6, v3, :cond_8

    if-nez v10, :cond_8

    .line 953
    invoke-static {v0, v6, v11}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    const/4 v6, -0x1

    goto :goto_5

    :cond_8
    if-ne v6, v3, :cond_9

    if-eqz v10, :cond_9

    move v6, v11

    :cond_9
    :goto_5
    if-eq v9, v8, :cond_0

    .line 960
    invoke-static {v0, v7, v11, v8}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    move v8, v9

    move v7, v11

    goto :goto_0

    :cond_a
    if-eq v5, v3, :cond_b

    if-eq v5, v1, :cond_b

    .line 968
    invoke-static {v0, v5, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    :cond_b
    if-eq v6, v3, :cond_c

    if-eq v6, v1, :cond_c

    .line 971
    invoke-static {v0, v6, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    :cond_c
    if-eq v7, v1, :cond_d

    .line 974
    invoke-static {v0, v7, v1, v8}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    .line 977
    :cond_d
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private static setColorSpan(Landroid/text/SpannableStringBuilder;III)V
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 994
    :cond_0
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p3, 0x21

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static setItalicSpan(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 985
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 981
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public backspace()V
    .locals 4

    .line 802
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 804
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 806
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 807
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 808
    iget v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    if-ne v3, v0, :cond_0

    .line 809
    iget v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public build(I)Lcom/google/android/exoplayer2/text/Cue;
    .locals 11

    .line 833
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 835
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 836
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 837
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 840
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 842
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 849
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v2, 0x20

    .line 851
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v2, v3

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq p1, v5, :cond_2

    goto :goto_1

    .line 855
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-ne p1, v7, :cond_4

    .line 856
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v5, 0x3

    if-lt p1, v5, :cond_3

    if-gez v3, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    .line 861
    :cond_4
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-ne p1, v7, :cond_5

    if-lez v4, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x42000000    # 32.0f

    packed-switch p1, :pswitch_data_0

    int-to-float v2, v2

    div-float/2addr v2, v8

    mul-float v2, v2, v5

    add-float/2addr v2, v4

    :goto_2
    move v8, v2

    goto :goto_3

    :pswitch_0
    rsub-int/lit8 v2, v3, 0x20

    int-to-float v2, v2

    div-float/2addr v2, v8

    mul-float v2, v2, v5

    add-float/2addr v2, v4

    goto :goto_2

    :pswitch_1
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 890
    :goto_3
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-eq v2, v6, :cond_7

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_6

    goto :goto_4

    .line 900
    :cond_6
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    const/4 v5, 0x0

    goto :goto_5

    .line 892
    :cond_7
    :goto_4
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    add-int/lit8 v0, v0, -0xf

    add-int/lit8 v2, v0, -0x2

    const/4 v5, 0x2

    .line 903
    :goto_5
    new-instance v9, Lcom/google/android/exoplayer2/text/Cue;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v4, v2

    const/4 v6, 0x1

    const v10, -0x800001

    move-object v0, v9

    move-object v2, v3

    move v3, v4

    move v4, v6

    move v6, v8

    move v7, p1

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 785
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset(I)V
    .locals 1

    .line 774
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 775
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 776
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 777
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 p1, 0xf

    .line 778
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    .line 779
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    .line 780
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    return-void
.end method

.method public rollUp()V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 825
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 826
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 827
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 828
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCaptionMode(I)V
    .locals 0

    .line 790
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    return-void
.end method

.method public setCaptionRowCount(I)V
    .locals 0

    .line 794
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    return-void
.end method

.method public setStyle(IZ)V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
