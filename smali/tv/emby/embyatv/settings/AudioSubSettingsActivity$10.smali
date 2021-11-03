.class synthetic Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;
.super Ljava/lang/Object;
.source "AudioSubSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/settings/AudioSubSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mediabrowser$model$configuration$SubtitlePlaybackMode:[I

.field static final synthetic $SwitchMap$tv$emby$embyatv$model$AlphaValue:[I

.field static final synthetic $SwitchMap$tv$emby$embyatv$model$ColorValue:[I

.field static final synthetic $SwitchMap$tv$emby$embyatv$model$TextSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 254
    invoke-static {}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->values()[Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$mediabrowser$model$configuration$SubtitlePlaybackMode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$mediabrowser$model$configuration$SubtitlePlaybackMode:[I

    sget-object v2, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->None:Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    invoke-virtual {v2}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$mediabrowser$model$configuration$SubtitlePlaybackMode:[I

    sget-object v3, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->Smart:Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    invoke-virtual {v3}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$mediabrowser$model$configuration$SubtitlePlaybackMode:[I

    sget-object v4, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->Always:Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    invoke-virtual {v4}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$mediabrowser$model$configuration$SubtitlePlaybackMode:[I

    sget-object v5, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->Default:Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    invoke-virtual {v5}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$mediabrowser$model$configuration$SubtitlePlaybackMode:[I

    sget-object v6, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->OnlyForced:Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    invoke-virtual {v6}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 245
    :catch_4
    invoke-static {}, Ltv/emby/embyatv/model/AlphaValue;->values()[Ltv/emby/embyatv/model/AlphaValue;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$AlphaValue:[I

    :try_start_5
    sget-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$AlphaValue:[I

    sget-object v6, Ltv/emby/embyatv/model/AlphaValue;->Normal:Ltv/emby/embyatv/model/AlphaValue;

    invoke-virtual {v6}, Ltv/emby/embyatv/model/AlphaValue;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$AlphaValue:[I

    sget-object v6, Ltv/emby/embyatv/model/AlphaValue;->Dim:Ltv/emby/embyatv/model/AlphaValue;

    invoke-virtual {v6}, Ltv/emby/embyatv/model/AlphaValue;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$AlphaValue:[I

    sget-object v6, Ltv/emby/embyatv/model/AlphaValue;->Dimmer:Ltv/emby/embyatv/model/AlphaValue;

    invoke-virtual {v6}, Ltv/emby/embyatv/model/AlphaValue;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 227
    :catch_7
    invoke-static {}, Ltv/emby/embyatv/model/TextSize;->values()[Ltv/emby/embyatv/model/TextSize;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$TextSize:[I

    :try_start_8
    sget-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$TextSize:[I

    sget-object v6, Ltv/emby/embyatv/model/TextSize;->Tiny:Ltv/emby/embyatv/model/TextSize;

    invoke-virtual {v6}, Ltv/emby/embyatv/model/TextSize;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$TextSize:[I

    sget-object v6, Ltv/emby/embyatv/model/TextSize;->Small:Ltv/emby/embyatv/model/TextSize;

    invoke-virtual {v6}, Ltv/emby/embyatv/model/TextSize;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$TextSize:[I

    sget-object v6, Ltv/emby/embyatv/model/TextSize;->Normal:Ltv/emby/embyatv/model/TextSize;

    invoke-virtual {v6}, Ltv/emby/embyatv/model/TextSize;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$TextSize:[I

    sget-object v6, Ltv/emby/embyatv/model/TextSize;->Large:Ltv/emby/embyatv/model/TextSize;

    invoke-virtual {v6}, Ltv/emby/embyatv/model/TextSize;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$TextSize:[I

    sget-object v5, Ltv/emby/embyatv/model/TextSize;->Huge:Ltv/emby/embyatv/model/TextSize;

    invoke-virtual {v5}, Ltv/emby/embyatv/model/TextSize;->ordinal()I

    move-result v5

    aput v4, v3, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 218
    :catch_c
    invoke-static {}, Ltv/emby/embyatv/model/ColorValue;->values()[Ltv/emby/embyatv/model/ColorValue;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$ColorValue:[I

    :try_start_d
    sget-object v3, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$ColorValue:[I

    sget-object v4, Ltv/emby/embyatv/model/ColorValue;->Gray:Ltv/emby/embyatv/model/ColorValue;

    invoke-virtual {v4}, Ltv/emby/embyatv/model/ColorValue;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$ColorValue:[I

    sget-object v3, Ltv/emby/embyatv/model/ColorValue;->White:Ltv/emby/embyatv/model/ColorValue;

    invoke-virtual {v3}, Ltv/emby/embyatv/model/ColorValue;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$ColorValue:[I

    sget-object v1, Ltv/emby/embyatv/model/ColorValue;->Yellow:Ltv/emby/embyatv/model/ColorValue;

    invoke-virtual {v1}, Ltv/emby/embyatv/model/ColorValue;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
