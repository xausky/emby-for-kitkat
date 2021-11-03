.class public Ltv/emby/embyatv/settings/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private extPlayerLiveTvDep:[Ljava/lang/String;

.field private extPlayerVideoDep:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string v0, "pref_enable_cinema_mode"

    const-string v1, "pref_refresh_switching"

    const-string v2, "pref_audio_option"

    const-string v3, "pref_bitstream_ac3"

    const-string v4, "pref_bitstream_dts"

    .line 217
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/settings/SettingsFragment;->extPlayerVideoDep:[Ljava/lang/String;

    const-string v0, "pref_live_direct"

    const-string v1, "pref_enable_vlc_livetv"

    .line 218
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/settings/SettingsFragment;->extPlayerLiveTvDep:[Ljava/lang/String;

    return-void
.end method

.method private setBackground()V
    .locals 2

    .line 139
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0296

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 140
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updatePreference(Landroid/preference/Preference;)V
    .locals 6

    .line 221
    instance-of v0, p1, Landroid/preference/ListPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 222
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    .line 223
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_login_behavior"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pref_auto_pw_prompt"

    .line 224
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 225
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/startup/LogonCredentials;->getUserDto()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getHasPassword()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string v3, ""

    .line 227
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/startup/LogonCredentials;->getUserDto()Lmediabrowser/model/dto/UserDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 230
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f10053d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/startup/LogonCredentials;->getUserDto()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1005f0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f100507

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getConfiguredAutoCredentials()Ltv/emby/embyatv/startup/LogonCredentials;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/startup/LogonCredentials;->getUserDto()Lmediabrowser/model/dto/UserDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 235
    :cond_1
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_audio_option"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "pref_allow_dts"

    .line 239
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 240
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    const-string v2, "pref_allow_dts_hd"

    .line 241
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 242
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 243
    :cond_4
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :cond_5
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_display_theme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->isTrial()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_6

    const v2, 0x7f1005ec

    .line 245
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 247
    :cond_6
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    :cond_7
    :goto_0
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_d

    .line 252
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 253
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_live_direct"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "pref_enable_vlc_livetv"

    .line 255
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 256
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 258
    :cond_8
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_video_use_external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "pref_send_path_external"

    .line 260
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 261
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 262
    :cond_9
    iget-object v0, p0, Ltv/emby/embyatv/settings/SettingsFragment;->extPlayerVideoDep:[Ljava/lang/String;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_d

    aget-object v3, v0, v1

    .line 263
    invoke-virtual {p0, v3}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 264
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_b
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_live_tv_use_external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 268
    iget-object v0, p0, Ltv/emby/embyatv/settings/SettingsFragment;->extPlayerLiveTvDep:[Ljava/lang/String;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_d

    aget-object v3, v0, v1

    .line 269
    invoke-virtual {p0, v3}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 270
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    .line 48
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a0299

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 52
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

    .line 54
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a0298

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "%s (%s)"

    .line 55
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

    .line 58
    invoke-direct {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->setBackground()V

    .line 60
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "category"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "all"

    :cond_0
    const-string v0, "pref_playback_category"

    .line 62
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v2, "pref_login_category"

    .line 63
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    const-string v3, "pref_live_tv_category"

    .line 64
    invoke-virtual {p0, v3}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    const-string v6, "pref_general_category"

    .line 65
    invoke-virtual {p0, v6}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    const-string v7, "pref_sub_audio_category"

    .line 66
    invoke-virtual {p0, v7}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 67
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 68
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a0307

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 70
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v7, -0x1

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x41b5cb92

    if-eq v10, v11, :cond_4

    const v11, 0x625ef69

    if-eq v10, v11, :cond_3

    const v11, 0x63a518c2

    if-eq v10, v11, :cond_2

    const v5, 0x7001d61b

    if-eq v10, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "playback"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_2
    const-string v1, "display"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const-string v1, "livetv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 132
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const-string v0, "Undefined settings page"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 122
    :pswitch_0
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "pref_live_mpv"

    .line 126
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "pref_rec_mpv"

    .line 127
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const p1, 0x7f100504

    .line 129
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 99
    :pswitch_1
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const p1, 0x7f100551

    .line 102
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object p1

    const/4 v1, 0x7

    .line 104
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "pref_allow_dts"

    .line 105
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 106
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string p1, "pref_allow_dts_hd"

    .line 107
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 108
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    :cond_7
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isTrial()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "pref_enable_cinema_mode"

    .line 112
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 113
    invoke-virtual {p1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const v1, 0x7f10046d

    .line 114
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 116
    :cond_8
    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->supportsDisplayModeSwitching()Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "pref_refresh_switching"

    .line 117
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "pref_resolution_switching"

    .line 118
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 87
    :pswitch_2
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const p1, 0x7f100495

    .line 90
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isTrial()Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "pref_display_theme"

    .line 93
    invoke-virtual {v6, p1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f1005ec

    .line 95
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 74
    :pswitch_3
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const p1, 0x7f1005cc

    .line 77
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->hasLiveTv()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isTrial()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    const-string p1, "pref_live_tv_mode"

    .line 79
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    :cond_a
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 82
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is50()Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "pref_audio_option"

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    const-string p1, "pref_auto_logoff_timeout"

    .line 83
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f140000

    .line 42
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 163
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 146
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 147
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 148
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 149
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 150
    check-cast v2, Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    .line 151
    :goto_1
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 152
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Ltv/emby/embyatv/settings/SettingsFragment;->updatePreference(Landroid/preference/Preference;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :cond_0
    invoke-direct {p0, v2}, Ltv/emby/embyatv/settings/SettingsFragment;->updatePreference(Landroid/preference/Preference;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string p1, "pref_login_behavior"

    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 173
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    :cond_0
    :try_start_0
    new-instance p1, Ltv/emby/embyatv/startup/LogonCredentials;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUserPw()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Ltv/emby/embyatv/startup/LogonCredentials;-><init>(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V

    const-string v0, "tv.mediabrowser.login.json"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->SaveLoginCredentials(Ltv/emby/embyatv/startup/LogonCredentials;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->updatePreference(Landroid/preference/Preference;)V

    const-string p1, "pref_send_path_external"

    .line 184
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 185
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "W A R N I N G"

    .line 186
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "This feature will only work if you have properly setup your library on the server with network paths or setup Path Substitution AND the external player app you are using can directly access these locations over the network.  If playback fails or you didn\'t understand any of that, disable this option."

    .line 187
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1003b8

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    :cond_2
    const-string p1, "pref_display_theme"

    .line 190
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 191
    invoke-direct {p0}, Ltv/emby/embyatv/settings/SettingsFragment;->setBackground()V

    .line 192
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setReloadRequired(Z)V

    .line 194
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getUserDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 195
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getUserDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "displayTheme"

    invoke-virtual {p0, p2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/preference/ListPreference;

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getUserDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->updateDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V

    goto/16 :goto_2

    :cond_3
    const-string p1, "pref_enable_theme_songs"

    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 201
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getUserDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 202
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getUserDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "enableThemeSongs"

    invoke-virtual {p0, p2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "true"

    goto :goto_1

    :cond_4
    const-string p2, "false"

    :goto_1
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getUserDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->updateDisplayPrefs(Lmediabrowser/model/entities/DisplayPreferences;)V

    goto :goto_2

    :cond_5
    const-string p1, "pref_show_focusrect"

    .line 206
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "pref_focusrect_color"

    .line 207
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    if-eqz p1, :cond_6

    .line 209
    invoke-virtual {p0, p2}, Ltv/emby/embyatv/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 211
    :cond_6
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setReloadRequired(Z)V

    goto :goto_2

    :cond_7
    const-string p1, "pref_use_cards"

    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "pref_focusrect_color"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 213
    :cond_8
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setReloadRequired(Z)V

    :cond_9
    :goto_2
    return-void
.end method
