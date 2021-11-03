.class public Ltv/emby/embyatv/ui/DisplayPrefsPopup;
.super Ljava/lang/Object;
.source "DisplayPrefsPopup.java"


# instance fields
.field final HEIGHT:I

.field final WIDTH:I

.field mActivity:Landroid/app/Activity;

.field mAllowViewDefault:Z

.field mAnchor:Landroid/view/View;

.field mChanged:Ljava/lang/Boolean;

.field mDefaultViewLayout:Landroid/view/View;

.field mGroupCollections:Landroid/widget/CheckBox;

.field mImageSize:Landroid/widget/Spinner;

.field mImageType:Landroid/widget/Spinner;

.field mInitialView:Landroid/widget/Spinner;

.field mPopup:Landroid/widget/PopupWindow;

.field mPrefix:Ljava/lang/String;

.field mPrefs:Lmediabrowser/model/entities/DisplayPreferences;

.field mShowLabels:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;ZZLmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "ZZ",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x17c

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->WIDTH:I

    .line 29
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x1c2

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->HEIGHT:I

    const-string v0, ""

    .line 35
    iput-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mChanged:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mAllowViewDefault:Z

    .line 47
    iput-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    .line 48
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d003b

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    new-instance v2, Landroid/widget/PopupWindow;

    iget v3, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->WIDTH:I

    iget v4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->HEIGHT:I

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 51
    iget-object v2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 52
    iget-object v2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 53
    iget-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x7f1100d4

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 56
    iput-object p2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mAnchor:Landroid/view/View;

    const p2, 0x7f0a0134

    .line 58
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mGroupCollections:Landroid/widget/CheckBox;

    const/16 p2, 0x8

    if-eqz p4, :cond_0

    .line 60
    iget-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mGroupCollections:Landroid/widget/CheckBox;

    new-instance v0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/DisplayPrefsPopup$1;-><init>(Ltv/emby/embyatv/ui/DisplayPrefsPopup;)V

    invoke-virtual {p4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mGroupCollections:Landroid/widget/CheckBox;

    invoke-virtual {p4, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    const p4, 0x7f0a029d

    .line 72
    invoke-virtual {v1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iput-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mShowLabels:Landroid/widget/CheckBox;

    .line 73
    iget-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mShowLabels:Landroid/widget/CheckBox;

    new-instance v0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/ui/DisplayPrefsPopup$2;-><init>(Ltv/emby/embyatv/ui/DisplayPrefsPopup;)V

    invoke-virtual {p4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p4, 0x7f0a022f

    .line 81
    invoke-virtual {v1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Spinner;

    iput-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mImageSize:Landroid/widget/Spinner;

    .line 82
    new-instance p4, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {p4, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f100455

    .line 84
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v2, 0x7f1005c0

    .line 85
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v2, 0x7f10050e

    .line 86
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v2, 0x7f1004f3

    .line 87
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mImageSize:Landroid/widget/Spinner;

    invoke-virtual {v2, p4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    iget-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mImageSize:Landroid/widget/Spinner;

    new-instance v2, Ltv/emby/embyatv/ui/DisplayPrefsPopup$3;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/ui/DisplayPrefsPopup$3;-><init>(Ltv/emby/embyatv/ui/DisplayPrefsPopup;)V

    invoke-virtual {p4, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p4, 0x7f0a0168

    .line 102
    invoke-virtual {v1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Spinner;

    iput-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mImageType:Landroid/widget/Spinner;

    .line 103
    new-instance p4, Landroid/widget/ArrayAdapter;

    invoke-direct {p4, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f10047d

    .line 105
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v2, 0x7f1005ed

    .line 106
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v2, 0x7f100456

    .line 107
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mImageType:Landroid/widget/Spinner;

    invoke-virtual {v2, p4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 110
    iget-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mImageType:Landroid/widget/Spinner;

    new-instance v2, Ltv/emby/embyatv/ui/DisplayPrefsPopup$4;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/ui/DisplayPrefsPopup$4;-><init>(Ltv/emby/embyatv/ui/DisplayPrefsPopup;)V

    invoke-virtual {p4, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p4, 0x7f0a0188

    .line 122
    invoke-virtual {v1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Spinner;

    iput-object p4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mInitialView:Landroid/widget/Spinner;

    .line 123
    iput-boolean p3, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mAllowViewDefault:Z

    if-eqz p3, :cond_1

    .line 125
    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-direct {p2, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const p3, 0x7f1005ea

    .line 127
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const p3, 0x7f1005b9

    .line 128
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mInitialView:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mInitialView:Landroid/widget/Spinner;

    new-instance p2, Ltv/emby/embyatv/ui/DisplayPrefsPopup$5;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/ui/DisplayPrefsPopup$5;-><init>(Ltv/emby/embyatv/ui/DisplayPrefsPopup;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_1

    .line 144
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mInitialView:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    const p1, 0x7f0a00c9

    .line 145
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const p1, 0x7f0a0078

    .line 148
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 149
    new-instance p2, Ltv/emby/embyatv/ui/DisplayPrefsPopup$6;

    invoke-direct {p2, p0, p5}, Ltv/emby/embyatv/ui/DisplayPrefsPopup$6;-><init>(Ltv/emby/embyatv/ui/DisplayPrefsPopup;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00c8

    .line 157
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mDefaultViewLayout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 194
    iget-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 162
    iget-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show(Lmediabrowser/model/entities/DisplayPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 167
    iput-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefs:Lmediabrowser/model/entities/DisplayPreferences;

    .line 168
    iput-object p3, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 169
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mChanged:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 171
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mGroupCollections:Landroid/widget/CheckBox;

    const-string v2, "true"

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GroupItems"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    iget-object v1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mShowLabels:Landroid/widget/CheckBox;

    const-string v2, "true"

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ShowLabels"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 173
    iget-object v1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mGroupCollections:Landroid/widget/CheckBox;

    const-string v2, "true"

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "FavoriteOnly"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "true"

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "UnwatchedOnly"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 174
    iget-object p3, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mImageSize:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "PosterSize"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 175
    iget-object p3, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mImageType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ImageType"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 176
    iget-boolean p3, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mAllowViewDefault:Z

    if-eqz p3, :cond_6

    const/4 p3, -0x1

    .line 177
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3fac58bd

    if-eq v1, v2, :cond_4

    const v2, -0x37cbc82c

    if-eq v1, v2, :cond_3

    const v2, 0x636ee25

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "music"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    goto :goto_2

    :cond_3
    const-string v1, "tvshows"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "movies"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p2, -0x1

    :goto_2
    packed-switch p2, :pswitch_data_0

    .line 185
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mDefaultViewLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 181
    :pswitch_0
    iget-object p2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mDefaultViewLayout:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object p2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mInitialView:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    const-string p3, "DefaultView"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "0"

    invoke-static {p1, p3}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 189
    :cond_6
    :goto_3
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object p2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mAnchor:Landroid/view/View;

    const/16 p3, 0x31

    iget-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    iget-object v1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
