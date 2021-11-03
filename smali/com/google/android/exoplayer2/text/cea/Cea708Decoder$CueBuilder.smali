.class final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation


# static fields
.field private static final BORDER_AND_EDGE_TYPE_NONE:I = 0x0

.field private static final BORDER_AND_EDGE_TYPE_UNIFORM:I = 0x3

.field public static final COLOR_SOLID_BLACK:I

.field public static final COLOR_SOLID_WHITE:I

.field public static final COLOR_TRANSPARENT:I

.field private static final DEFAULT_PRIORITY:I = 0x4

.field private static final DIRECTION_BOTTOM_TO_TOP:I = 0x3

.field private static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final DIRECTION_TOP_TO_BOTTOM:I = 0x2

.field private static final HORIZONTAL_SIZE:I = 0xd1

.field private static final JUSTIFICATION_CENTER:I = 0x2

.field private static final JUSTIFICATION_FULL:I = 0x3

.field private static final JUSTIFICATION_LEFT:I = 0x0

.field private static final JUSTIFICATION_RIGHT:I = 0x1

.field private static final MAXIMUM_ROW_COUNT:I = 0xf

.field private static final PEN_FONT_STYLE_DEFAULT:I = 0x0

.field private static final PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS:I = 0x3

.field private static final PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS:I = 0x1

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS:I = 0x4

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS:I = 0x2

.field private static final PEN_OFFSET_NORMAL:I = 0x1

.field private static final PEN_SIZE_STANDARD:I = 0x1

.field private static final PEN_STYLE_BACKGROUND:[I

.field private static final PEN_STYLE_EDGE_TYPE:[I

.field private static final PEN_STYLE_FONT_STYLE:[I

.field private static final RELATIVE_CUE_SIZE:I = 0x63

.field private static final VERTICAL_SIZE:I = 0x4a

.field private static final WINDOW_STYLE_FILL:[I

.field private static final WINDOW_STYLE_JUSTIFICATION:[I

.field private static final WINDOW_STYLE_PRINT_DIRECTION:[I

.field private static final WINDOW_STYLE_SCROLL_DIRECTION:[I

.field private static final WINDOW_STYLE_WORD_WRAP:[Z


# instance fields
.field private anchorId:I

.field private backgroundColor:I

.field private backgroundColorStartPosition:I

.field private final captionStringBuilder:Landroid/text/SpannableStringBuilder;

.field private defined:Z

.field private foregroundColor:I

.field private foregroundColorStartPosition:I

.field private horizontalAnchor:I

.field private italicsStartPosition:I

.field private justification:I

.field private penStyleId:I

.field private priority:I

.field private relativePositioning:Z

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

.field private rowCount:I

.field private rowLock:Z

.field private underlineStartPosition:I

.field private verticalAnchor:I

.field private visible:Z

.field private windowFillColor:I

.field private windowStyleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 803
    invoke-static {v0, v0, v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    .line 804
    invoke-static {v1, v1, v1, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    const/4 v2, 0x3

    .line 805
    invoke-static {v1, v1, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v3

    sput v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    const/4 v3, 0x7

    .line 821
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    .line 826
    new-array v4, v3, [I

    fill-array-data v4, :array_1

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    .line 831
    new-array v4, v3, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    .line 836
    new-array v4, v3, [Z

    fill-array-data v4, :array_3

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    .line 839
    new-array v4, v3, [I

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v5, v4, v1

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    const/4 v6, 0x1

    aput v5, v4, v6

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v5, v4, v0

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v5, v4, v2

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    const/4 v7, 0x4

    aput v5, v4, v7

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    const/4 v8, 0x5

    aput v5, v4, v8

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    const/4 v9, 0x6

    aput v5, v4, v9

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_FILL:[I

    .line 845
    new-array v4, v3, [I

    fill-array-data v4, :array_4

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_FONT_STYLE:[I

    .line 852
    new-array v4, v3, [I

    fill-array-data v4, :array_5

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_EDGE_TYPE:[I

    .line 857
    new-array v3, v3, [I

    sget v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v4, v3, v1

    sget v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v1, v3, v6

    sget v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v1, v3, v0

    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v0, v3, v2

    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    aput v0, v3, v7

    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    aput v0, v3, v8

    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    aput v0, v3, v9

    sput-object v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_BACKGROUND:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 890
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 891
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    return-void
.end method

.method public static getArgbColorFromCeaColor(III)I
    .locals 1

    const/4 v0, 0x0

    .line 1218
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result p0

    return p0
.end method

.method public static getArgbColorFromCeaColor(IIII)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1222
    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1223
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1224
    invoke-static {p2, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1225
    invoke-static {p3, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    const/16 v0, 0xff

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/16 p3, 0xff

    goto :goto_0

    :pswitch_1
    const/4 p3, 0x0

    goto :goto_0

    :pswitch_2
    const/16 p3, 0x7f

    :goto_0
    const/4 v2, 0x1

    if-le p0, v2, :cond_0

    const/16 p0, 0xff

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-le p1, v2, :cond_1

    const/16 p1, 0xff

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-le p2, v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 1247
    :goto_3
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public append(C)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 1082
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1085
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 1086
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    .line 1088
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    if-eq p1, v0, :cond_1

    .line 1089
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    .line 1091
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    if-eq p1, v0, :cond_2

    .line 1092
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    .line 1094
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    if-eq p1, v0, :cond_3

    .line 1095
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    .line 1098
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowLock:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    if-ge p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1099
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_7

    .line 1100
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1103
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_7
    return-void
.end method

.method public backspace()V
    .locals 3

    .line 1074
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method public build()Lcom/google/android/exoplayer2/text/cea/Cea708Cue;
    .locals 14

    .line 1138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1143
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1146
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1147
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 1148
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1151
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1156
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->justification:I

    packed-switch v1, :pswitch_data_0

    .line 1169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected justification value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->justification:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :pswitch_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 1163
    :pswitch_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 1160
    :pswitch_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v3, v1

    .line 1174
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->relativePositioning:Z

    if-eqz v1, :cond_2

    .line 1175
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    int-to-float v1, v1

    const/high16 v4, 0x42c60000    # 99.0f

    div-float/2addr v1, v4

    .line 1176
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_2

    .line 1178
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    int-to-float v1, v1

    const/high16 v4, 0x43510000    # 209.0f

    div-float/2addr v1, v4

    .line 1179
    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    int-to-float v4, v4

    const/high16 v5, 0x42940000    # 74.0f

    div-float v5, v4, v5

    :goto_2
    const v4, 0x3f666666    # 0.9f

    mul-float v1, v1, v4

    const v6, 0x3d4ccccd    # 0.05f

    add-float v7, v1, v6

    mul-float v5, v5, v4

    add-float v4, v5, v6

    .line 1193
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v1, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    .line 1195
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    rem-int/lit8 v1, v1, 0x3

    if-ne v1, v6, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    .line 1202
    :goto_3
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    div-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_5

    const/4 v9, 0x0

    goto :goto_4

    .line 1204
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    div-int/lit8 v1, v1, 0x3

    if-ne v1, v6, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x2

    .line 1210
    :goto_4
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    if-eq v1, v5, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    .line 1212
    :goto_5
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;

    const/4 v5, 0x0

    const v11, -0x800001

    iget v12, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    iget v13, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->priority:I

    move-object v1, v0

    move v6, v8

    move v8, v9

    move v9, v11

    move v11, v12

    move v12, v13

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public buildSpannableString()Landroid/text/SpannableString;
    .locals 6

    .line 1108
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1110
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1113
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1114
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1118
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    if-eq v2, v4, :cond_1

    .line 1119
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1123
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    if-eq v2, v4, :cond_2

    .line 1124
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1128
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    if-eq v2, v4, :cond_3

    .line 1129
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1134
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public clear()V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 921
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    .line 922
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    .line 923
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    .line 924
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    .line 925
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    const/4 v0, 0x0

    .line 926
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->row:I

    return-void
.end method

.method public defineWindow(ZZZIZIIIIIII)V
    .locals 11

    move-object v0, p0

    move v1, p2

    move/from16 v2, p11

    move/from16 v3, p12

    const/4 v4, 0x1

    .line 944
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defined:Z

    move v5, p1

    .line 945
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    .line 946
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowLock:Z

    move v5, p4

    .line 947
    iput v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->priority:I

    move/from16 v5, p5

    .line 948
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->relativePositioning:Z

    move/from16 v5, p6

    .line 949
    iput v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    move/from16 v5, p7

    .line 950
    iput v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    move/from16 v5, p10

    .line 951
    iput v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    .line 954
    iget v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    add-int/lit8 v6, p8, 0x1

    if-eq v5, v6, :cond_2

    .line 955
    iput v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    :goto_0
    if-eqz v1, :cond_0

    .line 958
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    if-ge v5, v6, :cond_1

    :cond_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 959
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_2

    .line 960
    :cond_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 966
    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowStyleId:I

    if-eq v1, v2, :cond_3

    .line 967
    iput v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowStyleId:I

    add-int/lit8 v1, v2, -0x1

    .line 971
    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_FILL:[I

    aget v2, v2, v1

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_TRANSPARENT:I

    sget-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v6, v6, v1

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v8, v8, v1

    sget-object v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v9, v9, v1

    sget-object v10, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v1, v10, v1

    move-object p1, p0

    move p2, v2

    move p3, v5

    move p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v1

    invoke-virtual/range {p1 .. p8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setWindowAttributes(IIZIIII)V

    :cond_3
    if-eqz v3, :cond_4

    .line 978
    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->penStyleId:I

    if-eq v1, v3, :cond_4

    .line 979
    iput v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->penStyleId:I

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 984
    sget-object v7, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v7, v7, v1

    sget-object v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v8, v8, v1

    move-object p1, p0

    move p2, v2

    move p3, v3

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p1 .. p8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenAttributes(IIIZZII)V

    .line 986
    sget v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    sget-object v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v1, v3, v1

    sget v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenColor(III)V

    :cond_4
    return-void
.end method

.method public isDefined()Z
    .locals 1

    .line 930
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defined:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 895
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 938
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 899
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->clear()V

    const/4 v0, 0x0

    .line 901
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defined:Z

    .line 902
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    const/4 v1, 0x4

    .line 903
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->priority:I

    .line 904
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->relativePositioning:Z

    .line 905
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->verticalAnchor:I

    .line 906
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->horizontalAnchor:I

    .line 907
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->anchorId:I

    const/16 v1, 0xf

    .line 908
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowCount:I

    const/4 v1, 0x1

    .line 909
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->rowLock:Z

    .line 910
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->justification:I

    .line 911
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowStyleId:I

    .line 912
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->penStyleId:I

    .line 913
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    .line 915
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    .line 916
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    return-void
.end method

.method public setPenAttributes(IIIZZII)V
    .locals 0

    .line 1008
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    const/16 p2, 0x21

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    if-nez p4, :cond_1

    .line 1010
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/StyleSpan;

    const/4 p6, 0x2

    invoke-direct {p4, p6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget p6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    iget-object p7, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1011
    invoke-virtual {p7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p7

    .line 1010
    invoke-virtual {p1, p4, p6, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1012
    iput p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 1015
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->italicsStartPosition:I

    .line 1018
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    if-eq p1, p3, :cond_2

    if-nez p5, :cond_3

    .line 1020
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    iget-object p6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1021
    invoke-virtual {p6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    .line 1020
    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1022
    iput p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    .line 1025
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->underlineStartPosition:I

    :cond_3
    :goto_1
    return-void
.end method

.method public setPenColor(III)V
    .locals 5

    .line 1033
    iget p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    const/16 v0, 0x21

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1034
    iget p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    if-eq p3, p1, :cond_0

    .line 1035
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1036
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1035
    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1040
    :cond_0
    sget p3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_WHITE:I

    if-eq p1, p3, :cond_1

    .line 1041
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColorStartPosition:I

    .line 1042
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->foregroundColor:I

    .line 1045
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    if-eq p1, v1, :cond_2

    .line 1046
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    if-eq p1, p2, :cond_2

    .line 1047
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    invoke-direct {p3, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1048
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1047
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1052
    :cond_2
    sget p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->COLOR_SOLID_BLACK:I

    if-eq p2, p1, :cond_3

    .line 1053
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColorStartPosition:I

    .line 1054
    iput p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backgroundColor:I

    :cond_3
    return-void
.end method

.method public setPenLocation(II)V
    .locals 0

    .line 1067
    iget p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->row:I

    if-eq p2, p1, :cond_0

    const/16 p2, 0xa

    .line 1068
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 1070
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->row:I

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 934
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->visible:Z

    return-void
.end method

.method public setWindowAttributes(IIZIIII)V
    .locals 0

    .line 993
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->windowFillColor:I

    .line 998
    iput p7, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->justification:I

    return-void
.end method
