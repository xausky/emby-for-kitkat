.class Ltv/emby/embyatv/ui/EditSubPopup$2;
.super Lmediabrowser/apiinteraction/Response;
.source "EditSubPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/EditSubPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V
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
.field final synthetic this$0:Ltv/emby/embyatv/ui/EditSubPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/EditSubPopup;)V
    .locals 0

    .line 151
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$2;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 166
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$2;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const-string v1, "Error retrieving cultures"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
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

    .line 151
    check-cast p1, [Lmediabrowser/model/localization/LanguageCulture;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/EditSubPopup$2;->onResponse([Lmediabrowser/model/localization/LanguageCulture;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/localization/LanguageCulture;)V
    .locals 5

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 156
    invoke-virtual {v3}, Lmediabrowser/model/localization/LanguageCulture;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/ui/EditSubPopup$2;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v1, p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$002(Ltv/emby/embyatv/ui/EditSubPopup;[Lmediabrowser/model/localization/LanguageCulture;)[Lmediabrowser/model/localization/LanguageCulture;

    .line 160
    iget-object v1, p0, Ltv/emby/embyatv/ui/EditSubPopup$2;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$300(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/Spinner;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Ltv/emby/embyatv/ui/EditSubPopup$2;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v3}, Ltv/emby/embyatv/ui/EditSubPopup;->access$600(Ltv/emby/embyatv/ui/EditSubPopup;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 161
    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$2;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v0}, Ltv/emby/embyatv/ui/EditSubPopup;->access$300(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/EditSubPopup$2;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/configuration/UserConfiguration;->getSubtitleLanguagePreference()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$800(Ltv/emby/embyatv/ui/EditSubPopup;Ljava/lang/String;[Lmediabrowser/model/localization/LanguageCulture;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
