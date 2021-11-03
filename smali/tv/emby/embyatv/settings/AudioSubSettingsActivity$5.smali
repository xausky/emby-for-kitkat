.class Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;
.super Lmediabrowser/apiinteraction/Response;
.source "AudioSubSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/localization/LanguageCulture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V
    .locals 0

    .line 123
    iput-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 142
    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    iget-object v0, v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mActivity:Landroid/app/Activity;

    const-string v1, "Error retrieving cultures"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error retreiving cultures"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, [Lmediabrowser/model/localization/LanguageCulture;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->onResponse([Lmediabrowser/model/localization/LanguageCulture;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/localization/LanguageCulture;)V
    .locals 4

    .line 126
    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    iput-object p1, v0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mLanguageOptions:[Lmediabrowser/model/localization/LanguageCulture;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    const v2, 0x7f10044d

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 130
    invoke-virtual {v3}, Lmediabrowser/model/localization/LanguageCulture;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mAudioLanguage:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    iget-object v2, v2, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 134
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mAudioLanguage:Landroid/widget/Spinner;

    iget-object v1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/configuration/UserConfiguration;->getAudioLanguagePreference()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->access$000(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 135
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubLanguage:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    iget-object v2, v2, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 136
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mSubLanguage:Landroid/widget/Spinner;

    iget-object v0, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/configuration/UserConfiguration;->getSubtitleLanguagePreference()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->access$000(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 137
    iget-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$5;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->mAudioLanguage:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->requestFocus()Z

    return-void
.end method
