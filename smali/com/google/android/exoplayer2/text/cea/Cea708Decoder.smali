.class public final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;
    }
.end annotation


# static fields
.field private static final CC_VALID_FLAG:I = 0x4

.field private static final CHARACTER_BIG_CARONS:I = 0x2a

.field private static final CHARACTER_BIG_OE:I = 0x2c

.field private static final CHARACTER_BOLD_BULLET:I = 0x35

.field private static final CHARACTER_CLOSE_DOUBLE_QUOTE:I = 0x34

.field private static final CHARACTER_CLOSE_SINGLE_QUOTE:I = 0x32

.field private static final CHARACTER_DIAERESIS_Y:I = 0x3f

.field private static final CHARACTER_ELLIPSIS:I = 0x25

.field private static final CHARACTER_FIVE_EIGHTHS:I = 0x78

.field private static final CHARACTER_HORIZONTAL_BORDER:I = 0x7d

.field private static final CHARACTER_LOWER_LEFT_BORDER:I = 0x7c

.field private static final CHARACTER_LOWER_RIGHT_BORDER:I = 0x7e

.field private static final CHARACTER_MN:I = 0x7f

.field private static final CHARACTER_NBTSP:I = 0x21

.field private static final CHARACTER_ONE_EIGHTH:I = 0x76

.field private static final CHARACTER_OPEN_DOUBLE_QUOTE:I = 0x33

.field private static final CHARACTER_OPEN_SINGLE_QUOTE:I = 0x31

.field private static final CHARACTER_SEVEN_EIGHTHS:I = 0x79

.field private static final CHARACTER_SM:I = 0x3d

.field private static final CHARACTER_SMALL_CARONS:I = 0x3a

.field private static final CHARACTER_SMALL_OE:I = 0x3c

.field private static final CHARACTER_SOLID_BLOCK:I = 0x30

.field private static final CHARACTER_THREE_EIGHTHS:I = 0x77

.field private static final CHARACTER_TM:I = 0x39

.field private static final CHARACTER_TSP:I = 0x20

.field private static final CHARACTER_UPPER_LEFT_BORDER:I = 0x7f

.field private static final CHARACTER_UPPER_RIGHT_BORDER:I = 0x7b

.field private static final CHARACTER_VERTICAL_BORDER:I = 0x7a

.field private static final COMMAND_BS:I = 0x8

.field private static final COMMAND_CLW:I = 0x88

.field private static final COMMAND_CR:I = 0xd

.field private static final COMMAND_CW0:I = 0x80

.field private static final COMMAND_CW1:I = 0x81

.field private static final COMMAND_CW2:I = 0x82

.field private static final COMMAND_CW3:I = 0x83

.field private static final COMMAND_CW4:I = 0x84

.field private static final COMMAND_CW5:I = 0x85

.field private static final COMMAND_CW6:I = 0x86

.field private static final COMMAND_CW7:I = 0x87

.field private static final COMMAND_DF0:I = 0x98

.field private static final COMMAND_DF1:I = 0x99

.field private static final COMMAND_DF2:I = 0x9a

.field private static final COMMAND_DF3:I = 0x9b

.field private static final COMMAND_DF4:I = 0x9c

.field private static final COMMAND_DF5:I = 0x9d

.field private static final COMMAND_DF6:I = 0x9e

.field private static final COMMAND_DF7:I = 0x9f

.field private static final COMMAND_DLC:I = 0x8e

.field private static final COMMAND_DLW:I = 0x8c

.field private static final COMMAND_DLY:I = 0x8d

.field private static final COMMAND_DSW:I = 0x89

.field private static final COMMAND_ETX:I = 0x3

.field private static final COMMAND_EXT1:I = 0x10

.field private static final COMMAND_EXT1_END:I = 0x17

.field private static final COMMAND_EXT1_START:I = 0x11

.field private static final COMMAND_FF:I = 0xc

.field private static final COMMAND_HCR:I = 0xe

.field private static final COMMAND_HDW:I = 0x8a

.field private static final COMMAND_NUL:I = 0x0

.field private static final COMMAND_P16_END:I = 0x1f

.field private static final COMMAND_P16_START:I = 0x18

.field private static final COMMAND_RST:I = 0x8f

.field private static final COMMAND_SPA:I = 0x90

.field private static final COMMAND_SPC:I = 0x91

.field private static final COMMAND_SPL:I = 0x92

.field private static final COMMAND_SWA:I = 0x97

.field private static final COMMAND_TGW:I = 0x8b

.field private static final DTVCC_PACKET_DATA:I = 0x2

.field private static final DTVCC_PACKET_START:I = 0x3

.field private static final GROUP_C0_END:I = 0x1f

.field private static final GROUP_C1_END:I = 0x9f

.field private static final GROUP_C2_END:I = 0x1f

.field private static final GROUP_C3_END:I = 0x9f

.field private static final GROUP_G0_END:I = 0x7f

.field private static final GROUP_G1_END:I = 0xff

.field private static final GROUP_G2_END:I = 0x7f

.field private static final GROUP_G3_END:I = 0xff

.field private static final NUM_WINDOWS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea708Decoder"


# instance fields
.field private final ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedServiceNumber:I

.field private final serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 158
    new-instance p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 159
    new-instance p2, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 160
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    const/16 p1, 0x8

    .line 162
    new-array p2, p1, [Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    new-instance v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    return-void
.end method

.method private finalizeCurrentPacket()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->processCurrentPacket()V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 746
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->build()Lcom/google/android/exoplayer2/text/cea/Cea708Cue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 751
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private handleC0Command(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    const-string v1, "Cea708Decoder"

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    const-string v0, "Cea708Decoder"

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    const-string v0, "Cea708Decoder"

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid C0 command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 354
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 351
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backspace()V

    goto :goto_0

    .line 348
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_4
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleC1Command(I)V
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string v0, "Cea708Decoder"

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid C1 command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_0
    add-int/lit16 p1, p1, -0x98

    .line 479
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 481
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_9

    .line 482
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    goto/16 :goto_5

    .line 463
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    goto/16 :goto_5

    .line 455
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_1

    .line 457
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleSetPenLocation()V

    goto/16 :goto_5

    .line 447
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_2

    .line 449
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 451
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleSetPenColor()V

    goto/16 :goto_5

    .line 439
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_3

    .line 441
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 443
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    goto/16 :goto_5

    .line 436
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto/16 :goto_5

    .line 430
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :goto_0
    :pswitch_7
    if-gt v2, v1, :cond_9

    .line 423
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 424
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x1

    :goto_1
    if-gt p1, v1, :cond_9

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    .line 417
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :pswitch_9
    if-gt v2, v1, :cond_9

    .line 408
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 409
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_a
    const/4 p1, 0x1

    :goto_3
    if-gt p1, v1, :cond_9

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 402
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :goto_4
    :pswitch_b
    if-gt v2, v1, :cond_9

    .line 394
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 395
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->clear()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_c
    add-int/lit8 p1, p1, -0x80

    .line 387
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_9

    .line 388
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    :cond_9
    :goto_5
    :pswitch_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x97
        :pswitch_1
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

.method private handleC2Command(I)V
    .locals 1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 496
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    .line 498
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 500
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleC3Command(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 507
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 509
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 514
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 515
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleDefineWindow(I)V
    .locals 14

    .line 714
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v0, p1

    .line 718
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 719
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 720
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 721
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 722
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 724
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 725
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 727
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 729
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 730
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 732
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 733
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 735
    iget-object v12, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 736
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    move v5, p1

    .line 739
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defineWindow(ZZZIZIIIIIII)V

    return-void
.end method

.method private handleG0Character(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 522
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    :goto_0
    return-void
.end method

.method private handleG1Character(I)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    return-void
.end method

.method private handleG2Character(I)V
    .locals 3

    const/16 v0, 0x25

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const-string v0, "Cea708Decoder"

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid G2 character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 607
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 604
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 601
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 598
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 595
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 592
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 589
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 586
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 583
    :pswitch_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 577
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 574
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 571
    :pswitch_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto/16 :goto_0

    .line 568
    :pswitch_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 565
    :pswitch_e
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 562
    :pswitch_f
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 559
    :pswitch_10
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 556
    :pswitch_11
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 553
    :pswitch_12
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 550
    :pswitch_13
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 538
    :pswitch_14
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 535
    :pswitch_15
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 544
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 541
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleG3Character(I)V
    .locals 3

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 621
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    :cond_0
    const-string v0, "Cea708Decoder"

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid G3 character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    :goto_0
    return-void
.end method

.method private handleSetPenAttributes()V
    .locals 10

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 637
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 639
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 641
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenAttributes(IIIZZII)V

    return-void
.end method

.method private handleSetPenColor()V
    .locals 6

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 649
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 650
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 651
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 652
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    .line 655
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 656
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 657
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 658
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 659
    invoke-static {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    .line 662
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 663
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 664
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 665
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 666
    invoke-static {v3, v4, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    move-result v1

    .line 668
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenColor(III)V

    return-void
.end method

.method private handleSetPenLocation()V
    .locals 3

    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 677
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 678
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 680
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenLocation(II)V

    return-void
.end method

.method private handleSetWindowAttributes()V
    .locals 13

    .line 686
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 687
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 688
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 689
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 690
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v6

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 693
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 694
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 695
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 696
    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    move-result v7

    .line 698
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    .line 701
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 702
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 703
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 704
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 707
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 709
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setWindowAttributes(IIZIIII)V

    return-void
.end method

.method private processCurrentPacket()V
    .locals 9

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_0

    const-string v0, "Cea708Decoder"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v4, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but current index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (sequence number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "); ignoring packet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v4, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ge v0, v4, :cond_1

    const-string v2, "Cea708Decoder"

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid extended service number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const-string v1, "Cea708Decoder"

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceNumber is non-zero ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 291
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 300
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-lez v1, :cond_e

    .line 301
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/16 v4, 0x10

    const/16 v5, 0xff

    const/16 v6, 0x9f

    const/16 v7, 0x7f

    const/16 v8, 0x1f

    if-eq v1, v4, :cond_9

    if-gt v1, v8, :cond_5

    .line 304
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleC0Command(I)V

    goto :goto_0

    :cond_5
    if-gt v1, v7, :cond_6

    .line 307
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleG0Character(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    if-gt v1, v6, :cond_7

    .line 310
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleC1Command(I)V

    goto :goto_1

    :cond_7
    if-gt v1, v5, :cond_8

    .line 313
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleG1Character(I)V

    goto :goto_1

    :cond_8
    const-string v2, "Cea708Decoder"

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid base command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-gt v1, v8, :cond_a

    .line 322
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleC2Command(I)V

    goto :goto_0

    :cond_a
    if-gt v1, v7, :cond_b

    .line 324
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleG2Character(I)V

    goto :goto_1

    :cond_b
    if-gt v1, v6, :cond_c

    .line 327
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleC3Command(I)V

    goto :goto_0

    :cond_c
    if-gt v1, v5, :cond_d

    .line 329
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->handleG3Character(I)V

    goto :goto_1

    :cond_d
    const-string v2, "Cea708Decoder"

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid extended command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v0, :cond_f

    .line 338
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_f
    return-void
.end method

.method private resetCueBuilders()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 195
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 7

    .line 202
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 204
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_8

    .line 205
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 209
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-byte v2, v2

    .line 210
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_5

    .line 223
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    and-int/lit16 p1, v2, 0xc0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v2, 0x3f

    if-nez v0, :cond_4

    const/16 v0, 0x40

    .line 231
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 232
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v5, p1, v1

    goto :goto_2

    :cond_5
    if-ne v1, v6, :cond_6

    const/4 v3, 0x1

    .line 235
    :cond_6
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 237
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez p1, :cond_7

    const-string p1, "Cea708Decoder"

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 238
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v2, p1, v1

    .line 243
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v5, p1, v1

    .line 246
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 47
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

    .line 47
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 178
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 180
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    const/4 v1, 0x0

    .line 181
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 182
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 183
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 184
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Cea708Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

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

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
