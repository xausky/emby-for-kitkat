.class public final Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
    }
.end annotation


# static fields
.field private static final BASIC_CHARACTER_SET:[I

.field private static final CC_FIELD_FLAG:I = 0x1

.field private static final CC_IMPLICIT_DATA_HEADER:B = -0x4t

.field private static final CC_MODE_PAINT_ON:I = 0x3

.field private static final CC_MODE_POP_ON:I = 0x2

.field private static final CC_MODE_ROLL_UP:I = 0x1

.field private static final CC_MODE_UNKNOWN:I = 0x0

.field private static final CC_TYPE_FLAG:I = 0x2

.field private static final CC_VALID_FLAG:I = 0x4

.field private static final COLUMN_INDICES:[I

.field private static final CTRL_BACKSPACE:B = 0x21t

.field private static final CTRL_CARRIAGE_RETURN:B = 0x2dt

.field private static final CTRL_DELETE_TO_END_OF_ROW:B = 0x24t

.field private static final CTRL_END_OF_CAPTION:B = 0x2ft

.field private static final CTRL_ERASE_DISPLAYED_MEMORY:B = 0x2ct

.field private static final CTRL_ERASE_NON_DISPLAYED_MEMORY:B = 0x2et

.field private static final CTRL_RESUME_CAPTION_LOADING:B = 0x20t

.field private static final CTRL_RESUME_DIRECT_CAPTIONING:B = 0x29t

.field private static final CTRL_RESUME_TEXT_DISPLAY:B = 0x2bt

.field private static final CTRL_ROLL_UP_CAPTIONS_2_ROWS:B = 0x25t

.field private static final CTRL_ROLL_UP_CAPTIONS_3_ROWS:B = 0x26t

.field private static final CTRL_ROLL_UP_CAPTIONS_4_ROWS:B = 0x27t

.field private static final CTRL_TEXT_RESTART:B = 0x2at

.field private static final DEFAULT_CAPTIONS_ROW_COUNT:I = 0x4

.field private static final NTSC_CC_CHANNEL_1:I = 0x0

.field private static final NTSC_CC_CHANNEL_2:I = 0x1

.field private static final NTSC_CC_FIELD_1:I = 0x0

.field private static final NTSC_CC_FIELD_2:I = 0x1

.field private static final ODD_PARITY_BYTE_TABLE:[Z

.field private static final ROW_INDICES:[I

.field private static final SPECIAL_CHARACTER_SET:[I

.field private static final SPECIAL_ES_FR_CHARACTER_SET:[I

.field private static final SPECIAL_PT_DE_CHARACTER_SET:[I

.field private static final STYLE_COLORS:[I

.field private static final STYLE_ITALICS:I = 0x7

.field private static final STYLE_UNCHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea608Decoder"


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final cueBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannel:I

.field private currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

.field private isCaptionValid:Z

.field private isInCaptionService:Z

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final packetLength:I

.field private repeatableControlCc1:B

.field private repeatableControlCc2:B

.field private repeatableControlSet:Z

.field private final selectedChannel:I

.field private final selectedField:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 60
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    .line 61
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    const/4 v0, 0x7

    .line 63
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->STYLE_COLORS:[I

    const/16 v0, 0x60

    .line 130
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    const/16 v0, 0x10

    .line 158
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    const/16 v0, 0x20

    .line 178
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    .line 188
    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    const/16 v0, 0x100

    .line 197
    new-array v0, v0, [Z

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    return-void

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1c
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0xff0100
        -0xffff01
        -0xff0001
        -0x10000
        -0x100
        -0xff01
    .end array-data

    :array_3
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    :array_4
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    :array_5
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    :array_6
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 256
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 257
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 260
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    const-string v0, "application/x-mp4-cea-608"

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_0

    const-string p2, "Cea608Decoder"

    const-string v0, "Invalid channel. Defaulting to CC1."

    .line 280
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 282
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    .line 276
    :pswitch_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 277
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    .line 272
    :pswitch_1
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 273
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    .line 268
    :pswitch_2
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 269
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    .line 264
    :pswitch_3
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 265
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    .line 285
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 286
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 287
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->STYLE_COLORS:[I

    return-object v0
.end method

.method private static getBasicChar(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 p0, p0, -0x20

    .line 660
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static getChannel(B)I
    .locals 0

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 577
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->build(I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v5

    .line 578
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    .line 580
    iget v5, v5, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 585
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_4

    .line 587
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/Cue;

    if-eqz v5, :cond_3

    .line 589
    iget v6, v5, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    if-eq v6, v4, :cond_2

    .line 590
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->build(I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v5

    .line 592
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method private static getExtendedEsFrChar(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x1f

    .line 692
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static getExtendedPtDeChar(B)C
    .locals 1

    and-int/lit8 p0, p0, 0x1f

    .line 697
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private static getExtendedWestEuropeanChar(BB)C
    .locals 0

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    .line 683
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedEsFrChar(B)C

    move-result p0

    return p0

    .line 686
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedPtDeChar(B)C

    move-result p0

    return p0
.end method

.method private static getSpecialNorthAmericanChar(B)C
    .locals 1

    and-int/lit8 p0, p0, 0xf

    .line 671
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method private handleMidrowCtrl(B)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x7

    .line 465
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setStyle(IZ)V

    return-void
.end method

.method private handleMiscCode(B)V
    .locals 3

    const/16 v0, 0x20

    const/4 v1, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0x29

    const/4 v2, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 530
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x21

    if-eq p1, v1, :cond_2

    const/16 v1, 0x24

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 545
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 546
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 542
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 551
    :pswitch_2
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 552
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rollUp()V

    goto :goto_0

    .line 536
    :pswitch_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 537
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne p1, v2, :cond_3

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 556
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    :cond_3
    :goto_0
    return-void

    .line 516
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    const/4 p1, 0x4

    .line 517
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    return-void

    .line 512
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 513
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    return-void

    .line 508
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 509
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    return-void

    .line 523
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    return-void

    .line 520
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePreambleAddressCode(BB)V
    .locals 5

    .line 471
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    and-int/lit8 p1, p1, 0x7

    aget p1, v0, p1

    and-int/lit8 v0, p2, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->access$100(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;)I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 483
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 484
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->access$102(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I

    :cond_3
    and-int/lit8 p1, p2, 0x10

    const/16 v0, 0x10

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    shr-int/2addr p2, v2

    and-int/lit8 p2, p2, 0x7

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    if-eqz p1, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    :cond_6
    move v2, p2

    :goto_2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setStyle(IZ)V

    if-eqz p1, :cond_7

    .line 501
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    aget p2, v0, p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->access$202(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I

    :cond_7
    return-void
.end method

.method private static isCtrlCode(B)Z
    .locals 0

    and-int/lit16 p0, p0, 0xe0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isExtendedWestEuropeanChar(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf6

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xe0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMidrowCtrlCode(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMiscCode(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf6

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPreambleAddressCode(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xc0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isRepeatable(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRepeatedCommand(ZBB)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 436
    invoke-static {p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isRepeatable(B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-byte p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    if-ne p1, p2, :cond_0

    iget-byte p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    if-ne p1, p3, :cond_0

    .line 439
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    return v1

    .line 445
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 446
    iput-byte p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 447
    iput-byte p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    goto :goto_0

    .line 451
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    :goto_0
    return v0
.end method

.method private static isServiceSwitchCommand(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSpecialNorthAmericanChar(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x30

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTabCtrlCode(BB)Z
    .locals 1

    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    const/16 p0, 0x21

    if-lt p1, p0, :cond_0

    const/16 p0, 0x23

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isXdsControlCode(B)Z
    .locals 2

    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    const/16 v1, 0xf

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeUpdateIsInCaptionService(BB)V
    .locals 2

    .line 636
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isXdsControlCode(B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 637
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    goto :goto_0

    .line 638
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isServiceSwitchCommand(B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x20

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2f

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 642
    :pswitch_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    goto :goto_0

    :cond_1
    :pswitch_1
    const/4 p1, 0x1

    .line 650
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resetCueBuilders()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setCaptionMode(I)V
    .locals 2

    .line 600
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 604
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    .line 605
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    .line 609
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setCaptionMode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 616
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_4

    .line 620
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    :cond_4
    return-void
.end method

.method private setCaptionRowCount(I)V
    .locals 1

    .line 625
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setCaptionRowCount(I)V

    return-void
.end method

.method private updateAndVerifyCurrentChannel(B)Z
    .locals 1

    .line 426
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCtrlCode(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getChannel(B)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    .line 429
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 324
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 9

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    if-lt v2, v3, :cond_11

    .line 333
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, -0x4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 334
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-byte v2, v2

    .line 335
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 336
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v5, v2, 0x1

    .line 347
    iget v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    if-eq v5, v6, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 v5, v3, 0x7f

    int-to-byte v5, v5

    and-int/lit8 v6, v4, 0x7f

    int-to-byte v6, v6

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    goto :goto_0

    .line 361
    :cond_4
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    and-int/lit8 v2, v2, 0x4

    const/4 v8, 0x4

    if-ne v2, v8, :cond_5

    .line 362
    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 367
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    invoke-direct {p0, v2, v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isRepeatedCommand(ZBB)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 372
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    if-nez v2, :cond_8

    if-eqz v7, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    :cond_7
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 381
    :cond_8
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->maybeUpdateIsInCaptionService(BB)V

    .line 382
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    if-nez v2, :cond_9

    goto :goto_0

    .line 387
    :cond_9
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->updateAndVerifyCurrentChannel(B)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    .line 392
    :cond_a
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCtrlCode(B)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 393
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isSpecialNorthAmericanChar(BB)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 394
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getSpecialNorthAmericanChar(B)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_3

    .line 395
    :cond_b
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isExtendedWestEuropeanChar(BB)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 397
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    .line 398
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedWestEuropeanChar(BB)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_3

    .line 399
    :cond_c
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isMidrowCtrlCode(BB)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 400
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleMidrowCtrl(B)V

    goto :goto_3

    .line 401
    :cond_d
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isPreambleAddressCode(BB)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 402
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handlePreambleAddressCode(BB)V

    goto :goto_3

    .line 403
    :cond_e
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isTabCtrlCode(BB)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 404
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    add-int/lit8 v6, v6, -0x20

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->access$002(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I

    goto :goto_3

    .line 405
    :cond_f
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isMiscCode(BB)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 406
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleMiscCode(B)V

    goto :goto_3

    .line 410
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getBasicChar(B)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    and-int/lit16 v1, v6, 0xe0

    if-eqz v1, :cond_7

    .line 412
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getBasicChar(B)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_3

    :cond_11
    if-eqz v1, :cond_13

    .line 419
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq p1, v0, :cond_12

    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 420
    :cond_12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    :cond_13
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 42
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 42
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2

    .line 297
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 299
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    const/4 v1, 0x4

    .line 301
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 302
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 303
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 304
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 305
    iput-byte v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 306
    iput-byte v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    .line 307
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Cea608Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
