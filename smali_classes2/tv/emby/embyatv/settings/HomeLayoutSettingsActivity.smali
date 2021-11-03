.class public Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "HomeLayoutSettingsActivity.java"


# instance fields
.field excludedIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field homeScreenSectionDefaults:[Ljava/lang/String;

.field libraryExcludedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mEmbyDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

.field mExcludesChanged:Z

.field mSectionOptionValues:[Ljava/lang/String;

.field mSections:[Landroid/widget/Spinner;

.field mSectionsChanged:Z

.field sectionSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field userViewCheckboxes:[Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 34
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    const/4 v0, 0x7

    .line 36
    new-array v0, v0, [Landroid/widget/Spinner;

    iput-object v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSections:[Landroid/widget/Spinner;

    const-string v1, "librarytiles"

    const-string v2, "librarybuttons"

    const-string v3, "resume"

    const-string v4, "resumeaudio"

    const-string v5, "nextup"

    const-string v6, "latestmedia"

    const-string v7, "livetv"

    const-string v8, "activerecordings"

    const-string v9, "none"

    .line 37
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSectionOptionValues:[Ljava/lang/String;

    const-string v1, "librarytiles"

    const-string v2, "resume"

    const-string v3, "resumeaudio"

    const-string v4, "livetv"

    const-string v5, "nextup"

    const-string v6, "latestmedia"

    const-string v7, "none"

    .line 38
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->homeScreenSectionDefaults:[Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->excludedIds:Ljava/util/List;

    .line 121
    new-instance v0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$2;-><init>(Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->libraryExcludedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 136
    new-instance v0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$3;-><init>(Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->sectionSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;Landroid/view/View;)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getLibraryIndex(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;Landroid/view/View;)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getSectionIndex(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private getLibraryIndex(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->userViewCheckboxes:[Landroid/widget/CheckBox;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->userViewCheckboxes:[Landroid/widget/CheckBox;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "Couldn\'t find user view returing first one"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private getSectionIndex(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSections:[Landroid/widget/Spinner;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 177
    iget-object v2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSections:[Landroid/widget/Spinner;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v1, "Couldn\'t find section returing first one"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private openSettings(Ljava/lang/String;)V
    .locals 2

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/emby/embyatv/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "category"

    .line 200
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setBackground()V
    .locals 2

    const v0, 0x7f0a0296

    .line 194
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 195
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDefaultBackdropResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 48
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004f

    .line 49
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->setContentView(I)V

    const p1, 0x7f0a0299

    .line 52
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 53
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

    .line 55
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "%s (%s)"

    .line 56
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

    const p1, 0x7f0a015a

    .line 58
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 59
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/configuration/UserConfiguration;->getHidePlayedInLatest()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 60
    new-instance v0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity$1;-><init>(Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getEmbyDisplayPrefs()Lmediabrowser/model/entities/DisplayPreferences;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mEmbyDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    .line 69
    iget-object p1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mEmbyDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    if-eqz p1, :cond_6

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f1004dc

    .line 72
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const v2, 0x7f1004dd

    .line 73
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const v2, 0x7f100477

    .line 74
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f100476

    .line 75
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f100524

    .line 76
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f1004fa

    .line 77
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f100502

    .line 78
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f10043d

    .line 79
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f10052a

    .line 80
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 83
    :goto_0
    iget-object v1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSections:[Landroid/widget/Spinner;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSections:[Landroid/widget/Spinner;

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "section"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "id"

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    aput-object v2, v1, v0

    .line 85
    iget-object v1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSections:[Landroid/widget/Spinner;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p0, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    iget-object v1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mEmbyDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homesection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->homeScreenSectionDefaults:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 90
    :cond_1
    iget-object v2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSections:[Landroid/widget/Spinner;

    aget-object v2, v2, v0

    iget-object v3, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSectionOptionValues:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 91
    iget-object v1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSections:[Landroid/widget/Spinner;

    aget-object v0, v1, v0

    iget-object v1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->sectionSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move v0, v6

    goto/16 :goto_0

    .line 95
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getUserViews()Ljava/util/List;

    move-result-object p1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->userViewCheckboxes:[Landroid/widget/CheckBox;

    .line 97
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/configuration/UserConfiguration;->getLatestItemsExcludes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->excludedIds:Ljava/util/List;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/configuration/UserConfiguration;->getLatestItemsExcludes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string v0, "playlists"

    const-string v1, "livetv"

    const-string v2, "boxsets"

    const-string v3, "channels"

    .line 101
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0a00f1

    .line 102
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 104
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 105
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 106
    iget-object v3, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->userViewCheckboxes:[Landroid/widget/CheckBox;

    new-instance v6, Landroid/widget/CheckBox;

    invoke-direct {v6, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    aput-object v6, v3, v2

    .line 107
    iget-object v3, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->userViewCheckboxes:[Landroid/widget/CheckBox;

    aget-object v3, v3, v2

    iget-object v6, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->excludedIds:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    iget-object v3, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->userViewCheckboxes:[Landroid/widget/CheckBox;

    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v6}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->userViewCheckboxes:[Landroid/widget/CheckBox;

    aget-object v3, v3, v2

    iget-object v6, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->libraryExcludedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v3, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->userViewCheckboxes:[Landroid/widget/CheckBox;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSections:[Landroid/widget/Spinner;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Landroid/widget/Spinner;->requestFocus()Z

    goto :goto_2

    :cond_6
    const-string p1, "Error retrieving section settings"

    .line 116
    invoke-static {p0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 158
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onPause()V

    .line 160
    iget-boolean v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSectionsChanged:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v3, "Sections changed.  Updating..."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v3, "emby"

    iget-object v4, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mEmbyDisplayPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {v0, v3, v4}, Ltv/emby/embyatv/TvApp;->updateDisplayPrefs(Ljava/lang/String;Lmediabrowser/model/entities/DisplayPreferences;)V

    .line 163
    iput-boolean v2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mSectionsChanged:Z

    .line 164
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setReloadRequired(Z)V

    .line 166
    :cond_0
    iget-boolean v0, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mExcludesChanged:Z

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v3, "Excludes changed.  Updating..."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v0

    iget-object v3, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->excludedIds:Ljava/util/List;

    iget-object v4, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->excludedIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmediabrowser/model/configuration/UserConfiguration;->setLatestItemsExcludes([Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/UserDto;->getConfiguration()Lmediabrowser/model/configuration/UserConfiguration;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ltv/emby/embyatv/TvApp;->updateUserConfiguration(Ljava/lang/String;Lmediabrowser/model/configuration/UserConfiguration;)V

    .line 170
    iput-boolean v2, p0, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->mExcludesChanged:Z

    .line 171
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setReloadRequired(Z)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 152
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onResume()V

    .line 153
    invoke-direct {p0}, Ltv/emby/embyatv/settings/HomeLayoutSettingsActivity;->setBackground()V

    return-void
.end method
