.class public Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;
.super Landroid/app/Fragment;
.source "TabDisplayPrefsFragment.java"


# instance fields
.field protected mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

.field protected mDefaultTab:Landroid/widget/Spinner;

.field protected mDefaultTabOption:Landroid/widget/LinearLayout;

.field protected mDefaultViewOption:Landroid/widget/LinearLayout;

.field protected mLibraryView:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeOptions()V
    .locals 5

    .line 56
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/BaseTabActivity;->allowViewSelection()Z

    move-result v0

    const v1, 0x1090008

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-direct {v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1004a0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f100457

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mLibraryView:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 64
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mLibraryView:Landroid/widget/Spinner;

    new-instance v2, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$1;-><init>(Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mDefaultViewOption:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-direct {v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 87
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getTabDefinitions()Ljava/util/List;

    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/model/TabDef;

    .line 90
    invoke-virtual {v2}, Ltv/emby/embyatv/model/TabDef;->getLabel()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1005a9

    invoke-virtual {p0, v4}, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ltv/emby/embyatv/model/TabDef;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    :cond_2
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mDefaultTab:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mDefaultTab:Landroid/widget/Spinner;

    new-instance v2, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$2;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment$2;-><init>(Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 107
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mLibraryView:Landroid/widget/Spinner;

    iget-object v2, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "DefaultView"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 108
    iget-object v1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-virtual {v1}, Ltv/emby/embyatv/browsing/BaseTabActivity;->getDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "InitialTabNdx"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 109
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_3

    const/4 v1, 0x0

    .line 110
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mDefaultTab:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/browsing/BaseTabActivity;

    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mActivity:Ltv/emby/embyatv/browsing/BaseTabActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00c1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a01b9

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mLibraryView:Landroid/widget/Spinner;

    const p2, 0x7f0a00c7

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mDefaultTab:Landroid/widget/Spinner;

    const p2, 0x7f0a0187

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mDefaultTabOption:Landroid/widget/LinearLayout;

    const p2, 0x7f0a00c8

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->mDefaultViewOption:Landroid/widget/LinearLayout;

    .line 49
    invoke-virtual {p0}, Ltv/emby/embyatv/browsing/TabDisplayPrefsFragment;->initializeOptions()V

    return-object p1
.end method
