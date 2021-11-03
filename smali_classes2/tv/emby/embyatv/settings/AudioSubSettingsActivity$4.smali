.class Ltv/emby/embyatv/settings/AudioSubSettingsActivity$4;
.super Ljava/lang/Object;
.source "AudioSubSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/settings/AudioSubSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/settings/AudioSubSettingsActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Ltv/emby/embyatv/settings/AudioSubSettingsActivity$4;->this$0:Ltv/emby/embyatv/settings/AudioSubSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 113
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object p1

    invoke-static {p3}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->forValue(I)Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/configuration/UserConfiguration;->setSubtitleMode(Lmediabrowser/model/configuration/SubtitlePlaybackMode;)V

    .line 114
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ltv/emby/embyatv/TvApp;->updateUserConfiguration(Ljava/lang/String;Lmediabrowser/model/configuration/UserConfiguration;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
