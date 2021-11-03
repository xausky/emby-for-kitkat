.class Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$2;
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

    .line 94
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

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

    .line 97
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "InitialTabNdx"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$2;->this$0:Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;

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
