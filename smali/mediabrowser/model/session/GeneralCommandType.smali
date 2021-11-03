.class public final enum Lmediabrowser/model/session/GeneralCommandType;
.super Ljava/lang/Enum;
.source "GeneralCommandType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/session/GeneralCommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum Back:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum ChannelDown:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum ChannelUp:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum DisplayContent:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum DisplayMessage:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum GoHome:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum GoToSearch:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum GoToSettings:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum MoveDown:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum MoveLeft:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum MoveRight:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum MoveUp:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum Mute:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum NextLetter:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum PageDown:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum PageUp:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum PreviousLetter:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum Select:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum SendKey:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum SendString:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum SetAudioStreamIndex:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum SetMaxStreamingBitrate:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum SetRepeatMode:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum SetSubtitleStreamIndex:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum SetVolume:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum TakeScreenshot:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum ToggleContextMenu:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum ToggleFullscreen:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum ToggleMute:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum ToggleOsd:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum Unmute:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum VolumeDown:Lmediabrowser/model/session/GeneralCommandType;

.field public static final enum VolumeUp:Lmediabrowser/model/session/GeneralCommandType;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/session/GeneralCommandType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "MoveUp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->MoveUp:Lmediabrowser/model/session/GeneralCommandType;

    .line 9
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "MoveDown"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->MoveDown:Lmediabrowser/model/session/GeneralCommandType;

    .line 10
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "MoveLeft"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->MoveLeft:Lmediabrowser/model/session/GeneralCommandType;

    .line 11
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "MoveRight"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->MoveRight:Lmediabrowser/model/session/GeneralCommandType;

    .line 12
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "PageUp"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->PageUp:Lmediabrowser/model/session/GeneralCommandType;

    .line 13
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "PageDown"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->PageDown:Lmediabrowser/model/session/GeneralCommandType;

    .line 14
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "PreviousLetter"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->PreviousLetter:Lmediabrowser/model/session/GeneralCommandType;

    .line 15
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "NextLetter"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->NextLetter:Lmediabrowser/model/session/GeneralCommandType;

    .line 16
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "ToggleOsd"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->ToggleOsd:Lmediabrowser/model/session/GeneralCommandType;

    .line 17
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "ToggleContextMenu"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->ToggleContextMenu:Lmediabrowser/model/session/GeneralCommandType;

    .line 18
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "Select"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->Select:Lmediabrowser/model/session/GeneralCommandType;

    .line 19
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "Back"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->Back:Lmediabrowser/model/session/GeneralCommandType;

    .line 20
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "TakeScreenshot"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->TakeScreenshot:Lmediabrowser/model/session/GeneralCommandType;

    .line 21
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "SendKey"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->SendKey:Lmediabrowser/model/session/GeneralCommandType;

    .line 22
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "SendString"

    const/16 v15, 0xe

    const/16 v14, 0xe

    invoke-direct {v0, v1, v15, v14}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->SendString:Lmediabrowser/model/session/GeneralCommandType;

    .line 23
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "GoHome"

    const/16 v14, 0xf

    const/16 v15, 0xf

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->GoHome:Lmediabrowser/model/session/GeneralCommandType;

    .line 24
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "GoToSettings"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->GoToSettings:Lmediabrowser/model/session/GeneralCommandType;

    .line 25
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "VolumeUp"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->VolumeUp:Lmediabrowser/model/session/GeneralCommandType;

    .line 26
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "VolumeDown"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->VolumeDown:Lmediabrowser/model/session/GeneralCommandType;

    .line 27
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "Mute"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->Mute:Lmediabrowser/model/session/GeneralCommandType;

    .line 28
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "Unmute"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->Unmute:Lmediabrowser/model/session/GeneralCommandType;

    .line 29
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "ToggleMute"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->ToggleMute:Lmediabrowser/model/session/GeneralCommandType;

    .line 30
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "SetVolume"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->SetVolume:Lmediabrowser/model/session/GeneralCommandType;

    .line 31
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "SetAudioStreamIndex"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->SetAudioStreamIndex:Lmediabrowser/model/session/GeneralCommandType;

    .line 32
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "SetSubtitleStreamIndex"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->SetSubtitleStreamIndex:Lmediabrowser/model/session/GeneralCommandType;

    .line 33
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "ToggleFullscreen"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->ToggleFullscreen:Lmediabrowser/model/session/GeneralCommandType;

    .line 34
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "DisplayContent"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->DisplayContent:Lmediabrowser/model/session/GeneralCommandType;

    .line 35
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "GoToSearch"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->GoToSearch:Lmediabrowser/model/session/GeneralCommandType;

    .line 36
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "DisplayMessage"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->DisplayMessage:Lmediabrowser/model/session/GeneralCommandType;

    .line 37
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "SetRepeatMode"

    const/16 v14, 0x1d

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->SetRepeatMode:Lmediabrowser/model/session/GeneralCommandType;

    .line 38
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "ChannelUp"

    const/16 v14, 0x1e

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->ChannelUp:Lmediabrowser/model/session/GeneralCommandType;

    .line 39
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "ChannelDown"

    const/16 v14, 0x1f

    invoke-direct {v0, v1, v14, v14}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->ChannelDown:Lmediabrowser/model/session/GeneralCommandType;

    .line 40
    new-instance v0, Lmediabrowser/model/session/GeneralCommandType;

    const-string v1, "SetMaxStreamingBitrate"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15, v14}, Lmediabrowser/model/session/GeneralCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->SetMaxStreamingBitrate:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v0, 0x21

    .line 6
    new-array v0, v0, [Lmediabrowser/model/session/GeneralCommandType;

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->MoveUp:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->MoveDown:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->MoveLeft:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->MoveRight:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->PageUp:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->PageDown:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->PreviousLetter:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->NextLetter:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v9

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->ToggleOsd:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v10

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->ToggleContextMenu:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v11

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->Select:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v12

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->Back:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v13

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->TakeScreenshot:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SendKey:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SendString:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->GoHome:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->GoToSettings:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->VolumeUp:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->VolumeDown:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->Mute:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->Unmute:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->ToggleMute:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SetVolume:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SetAudioStreamIndex:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SetSubtitleStreamIndex:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->ToggleFullscreen:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->DisplayContent:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->GoToSearch:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->DisplayMessage:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SetRepeatMode:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->ChannelUp:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->ChannelDown:Lmediabrowser/model/session/GeneralCommandType;

    aput-object v1, v0, v14

    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->SetMaxStreamingBitrate:Lmediabrowser/model/session/GeneralCommandType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sput-object v0, Lmediabrowser/model/session/GeneralCommandType;->$VALUES:[Lmediabrowser/model/session/GeneralCommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lmediabrowser/model/session/GeneralCommandType;->intValue:I

    .line 62
    invoke-static {}, Lmediabrowser/model/session/GeneralCommandType;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/session/GeneralCommandType;
    .locals 1

    .line 72
    invoke-static {}, Lmediabrowser/model/session/GeneralCommandType;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/session/GeneralCommandType;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/session/GeneralCommandType;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lmediabrowser/model/session/GeneralCommandType;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lmediabrowser/model/session/GeneralCommandType;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lmediabrowser/model/session/GeneralCommandType;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/session/GeneralCommandType;->mappings:Ljava/util/HashMap;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/session/GeneralCommandType;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/session/GeneralCommandType;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/session/GeneralCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/session/GeneralCommandType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/session/GeneralCommandType;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/session/GeneralCommandType;->$VALUES:[Lmediabrowser/model/session/GeneralCommandType;

    invoke-virtual {v0}, [Lmediabrowser/model/session/GeneralCommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/session/GeneralCommandType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 67
    iget v0, p0, Lmediabrowser/model/session/GeneralCommandType;->intValue:I

    return v0
.end method
