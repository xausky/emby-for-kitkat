.class public Ltv/emby/embyatv/settings/AudioSubSettingsActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "AudioSubSettingsActivity.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mAlwaysDefaultAudio:Landroid/widget/CheckBox;

.field mAudioLanguage:Landroid/widget/Spinner;

.field mBurnSSA:Landroid/widget/CheckBox;

.field mLanguageOptions:[Lmediabrowser/model/localization/LanguageCulture;

.field mSubExample:Landroid/widget/TextView;

.field mSubLanguage:Landroid/widget/Spinner;

.field mSubMode:Landroid/widget/Spinner;

.field mSubTextAlpha:Landroid/widget/Spinner;

.field mSubTextColor:Landroid/widget/Spinner;

.field mSubTextSize:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;Ljava/lang/String;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getLanguageIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getAlphaLabel(Ltv/emby/embyatv/model/AlphaValue;)Ljava/lang/String;
    .locals 2

    .line 245
    sget-object v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$AlphaValue:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/model/AlphaValue;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 249
    invoke-virtual {p1}, Ltv/emby/embyatv/model/AlphaValue;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const p1, 0x7f100489

    .line 248
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f100488

    .line 247
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f10052b

    .line 246
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getColorLabel(Ltv/emby/embyatv/model/ColorValue;)Ljava/lang/String;
    .locals 2

    .line 218
    sget-object v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$ColorValue:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/model/ColorValue;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-virtual {p1}, Ltv/emby/embyatv/model/ColorValue;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const p1, 0x7f100616

    .line 221
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f100614

    .line 220
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f1004d2

    .line 219
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 265
    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mLanguageOptions:[Lmediabrowser/model/localization/LanguageCulture;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mLanguageOptions:[Lmediabrowser/model/localization/LanguageCulture;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 267
    invoke-virtual {v3}, Lmediabrowser/model/localization/LanguageCulture;->getThreeLetterISOLanguageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lmediabrowser/model/localization/LanguageCulture;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7f10044d

    .line 271
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLanguageIndex(Ljava/lang/String;)I
    .locals 3

    .line 275
    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mLanguageOptions:[Lmediabrowser/model/localization/LanguageCulture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 276
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mLanguageOptions:[Lmediabrowser/model/localization/LanguageCulture;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 277
    iget-object v2, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mLanguageOptions:[Lmediabrowser/model/localization/LanguageCulture;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmediabrowser/model/localization/LanguageCulture;->getThreeLetterISOLanguageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getModeLabel(Lmediabrowser/model/configuration/SubtitlePlaybackMode;)Ljava/lang/String;
    .locals 2

    .line 254
    sget-object v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$mediabrowser$model$configuration$SubtitlePlaybackMode:[I

    invoke-virtual {p1}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 260
    invoke-virtual {p1}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const p1, 0x7f1004c8

    .line 259
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f10047d

    .line 258
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f10044b

    .line 257
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p1, 0x7f1005c1

    .line 256
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const p1, 0x7f10052a

    .line 255
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeLabel(Ltv/emby/embyatv/model/TextSize;)Ljava/lang/String;
    .locals 2

    .line 227
    sget-object v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$10;->$SwitchMap$tv$emby$embyatv$model$TextSize:[I

    invoke-virtual {p1}, Ltv/emby/embyatv/model/TextSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 240
    invoke-virtual {p1}, Ltv/emby/embyatv/model/TextSize;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const p1, 0x7f1004e4

    .line 238
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f1004f3

    .line 236
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f10052b

    .line 234
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p1, 0x7f1005c0

    .line 232
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const p1, 0x7f1005ef

    .line 230
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBackground()V
    .locals 2

    const v0, 0x7f0a0296

    .line 292
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 293
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 53
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00bc

    .line 54
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->setContentView(I)V

    .line 55
    iput-object p0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mActivity:Landroid/app/Activity;

    const p1, 0x7f0a0299

    .line 58
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 59
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->VersionString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getRegistrationString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0298

    .line 61
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "%s (%s)"

    .line 62
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/system/SystemInfo;->getServerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a00cb

    .line 64
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mAlwaysDefaultAudio:Landroid/widget/CheckBox;

    .line 65
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mAlwaysDefaultAudio:Landroid/widget/CheckBox;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/configuration/UserConfiguration;->getPlayDefaultAudioTrack()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mAlwaysDefaultAudio:Landroid/widget/CheckBox;

    new-instance v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$1;-><init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0a0059

    .line 74
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mAudioLanguage:Landroid/widget/Spinner;

    .line 75
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mAudioLanguage:Landroid/widget/Spinner;

    new-instance v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$2;-><init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0a02c6

    .line 89
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubLanguage:Landroid/widget/Spinner;

    .line 90
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubLanguage:Landroid/widget/Spinner;

    new-instance v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$3;-><init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-static {}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->values()[Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v0, v3

    invoke-direct {p0, v5}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getModeLabel(Lmediabrowser/model/configuration/SubtitlePlaybackMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0a02c7

    .line 107
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubMode:Landroid/widget/Spinner;

    .line 108
    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubMode:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mActivity:Landroid/app/Activity;

    const v5, 0x1090008

    invoke-direct {v2, v3, v5, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 109
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubMode:Landroid/widget/Spinner;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/configuration/UserConfiguration;->getSubtitleMode()Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 110
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubMode:Landroid/widget/Spinner;

    new-instance v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$4;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$4;-><init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 123
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;-><init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetCultures(Lmediabrowser/apiinteraction/Response;)V

    const p1, 0x7f0a02bf

    .line 147
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubExample:Landroid/widget/TextView;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-static {}, Ltv/emby/embyatv/model/TextSize;->values()[Ltv/emby/embyatv/model/TextSize;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v6, v0, v3

    invoke-direct {p0, v6}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getSizeLabel(Ltv/emby/embyatv/model/TextSize;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f0a02c2

    .line 152
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextSize:Landroid/widget/Spinner;

    .line 153
    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextSize:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v5, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 154
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextSize:Landroid/widget/Spinner;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_sub_text_size_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 155
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextSize:Landroid/widget/Spinner;

    new-instance v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$6;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$6;-><init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-static {}, Ltv/emby/embyatv/model/ColorValue;->values()[Ltv/emby/embyatv/model/ColorValue;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getColorLabel(Ltv/emby/embyatv/model/ColorValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const v0, 0x7f0a02c1

    .line 171
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextColor:Landroid/widget/Spinner;

    .line 172
    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextColor:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v5, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextColor:Landroid/widget/Spinner;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_sub_text_color_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 174
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextColor:Landroid/widget/Spinner;

    new-instance v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$7;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$7;-><init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 187
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-static {}, Ltv/emby/embyatv/model/AlphaValue;->values()[Ltv/emby/embyatv/model/AlphaValue;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getAlphaLabel(Ltv/emby/embyatv/model/AlphaValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const v0, 0x7f0a02c0

    .line 190
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextAlpha:Landroid/widget/Spinner;

    .line 191
    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextAlpha:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v5, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 192
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextAlpha:Landroid/widget/Spinner;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_sub_text_alpha_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 193
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubTextAlpha:Landroid/widget/Spinner;

    new-instance v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$8;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$8;-><init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0a007d

    .line 206
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mBurnSSA:Landroid/widget/CheckBox;

    .line 207
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mBurnSSA:Landroid/widget/CheckBox;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_burn_ssa"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mBurnSSA:Landroid/widget/CheckBox;

    new-instance v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$9;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$9;-><init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 286
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onResume()V

    .line 287
    invoke-direct {p0}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->setBackground()V

    return-void
.end method
