.class Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$1;
.super Ljava/lang/Object;
.source "TabDisplayPrefsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->initializeOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

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

    .line 67
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

    iget-object p2, p2, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p2

    const-string p4, "DefaultView"

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 68
    iget-object p4, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

    iget-object p4, p4, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p4}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p4

    const-string p5, "DefaultView"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p3, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

    iget-object p3, p3, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p3}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p3

    const-string p4, "InitialTabNdx"

    const-string p5, "0"

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p3, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

    iget-object p3, p3, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mDefaultTab:Landroid/widget/Spinner;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 72
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->updateDisplayPrefs()V

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
