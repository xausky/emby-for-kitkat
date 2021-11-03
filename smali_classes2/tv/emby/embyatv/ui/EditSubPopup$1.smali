.class Ltv/emby/embyatv/ui/EditSubPopup$1;
.super Ljava/lang/Object;
.source "EditSubPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/EditSubPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/EditSubPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/EditSubPopup;)V
    .locals 0

    .line 83
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 86
    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$000(Ltv/emby/embyatv/ui/EditSubPopup;)[Lmediabrowser/model/localization/LanguageCulture;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$100(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 88
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$200(Ltv/emby/embyatv/ui/EditSubPopup;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$000(Ltv/emby/embyatv/ui/EditSubPopup;)[Lmediabrowser/model/localization/LanguageCulture;

    move-result-object p1

    iget-object v2, p0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {v2}, Ltv/emby/embyatv/ui/EditSubPopup;->access$300(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lmediabrowser/model/localization/LanguageCulture;->getThreeLetterISOLanguageName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$400(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$1;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/EditSubPopup;->access$500(Ltv/emby/embyatv/ui/EditSubPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance v5, Ltv/emby/embyatv/ui/EditSubPopup$1$1;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/ui/EditSubPopup$1$1;-><init>(Ltv/emby/embyatv/ui/EditSubPopup$1;)V

    invoke-virtual/range {v0 .. v5}, Lmediabrowser/apiinteraction/ApiClient;->SearchForSubtitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V

    :cond_1
    return-void
.end method
