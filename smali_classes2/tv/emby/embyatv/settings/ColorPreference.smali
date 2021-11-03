.class public Ltv/emby/embyatv/settings/ColorPreference;
.super Landroid/preference/Preference;
.source "ColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;
    }
.end annotation


# instance fields
.field private mColorChoices:[I

.field private mItemLayoutId:I

.field private mNumColumns:I

.field private mPreviewView:Landroid/view/View;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 54
    new-array v0, p1, [I

    iput-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mColorChoices:[I

    .line 55
    iput p1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mValue:I

    const v0, 0x7f0d003a

    .line 56
    iput v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mItemLayoutId:I

    const/4 v0, 0x5

    .line 57
    iput v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mNumColumns:I

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0, p1}, Ltv/emby/embyatv/settings/ColorPreference;->initAttrs(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 54
    new-array v0, p1, [I

    iput-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mColorChoices:[I

    .line 55
    iput p1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mValue:I

    const v0, 0x7f0d003a

    .line 56
    iput v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mItemLayoutId:I

    const/4 v0, 0x5

    .line 57
    iput v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mNumColumns:I

    .line 67
    invoke-direct {p0, p2, p1}, Ltv/emby/embyatv/settings/ColorPreference;->initAttrs(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 54
    new-array v0, p1, [I

    iput-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mColorChoices:[I

    .line 55
    iput p1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mValue:I

    const p1, 0x7f0d003a

    .line 56
    iput p1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mItemLayoutId:I

    const/4 p1, 0x5

    .line 57
    iput p1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mNumColumns:I

    .line 72
    invoke-direct {p0, p2, p3}, Ltv/emby/embyatv/settings/ColorPreference;->initAttrs(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/settings/ColorPreference;)I
    .locals 0

    .line 53
    iget p0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mNumColumns:I

    return p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/settings/ColorPreference;)[I
    .locals 0

    .line 53
    iget-object p0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mColorChoices:[I

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/settings/ColorPreference;)I
    .locals 0

    .line 53
    iget p0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mItemLayoutId:I

    return p0
.end method

.method static synthetic access$600(Landroid/view/View;I)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Ltv/emby/embyatv/settings/ColorPreference;->setColorViewValue(Landroid/view/View;I)V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 76
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Ltv/emby/embyatv/R$styleable;->ColorPreference:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 80
    :try_start_0
    iget p2, p0, Ltv/emby/embyatv/settings/ColorPreference;->mItemLayoutId:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Ltv/emby/embyatv/settings/ColorPreference;->mItemLayoutId:I

    const/4 p2, 0x2

    .line 81
    iget v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mNumColumns:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Ltv/emby/embyatv/settings/ColorPreference;->mNumColumns:I

    const/high16 p2, 0x7f030000

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 86
    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mColorChoices:[I

    .line 87
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mColorChoices:[I

    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget p1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mItemLayoutId:I

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/ColorPreference;->setWidgetLayoutResource(I)V

    return-void

    :catchall_0
    move-exception p2

    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    throw p2
.end method

.method private static setColorViewValue(Landroid/view/View;I)V
    .locals 6

    .line 269
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 270
    check-cast p0, Landroid/widget/ImageView;

    .line 271
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 275
    instance-of v3, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    .line 277
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 279
    :cond_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 280
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 285
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0xc0

    div-int/lit16 v3, v3, 0x100

    .line 286
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0xc0

    div-int/lit16 v4, v4, 0x100

    .line 287
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0xc0

    div-int/lit16 v5, v5, 0x100

    .line 284
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 289
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 291
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 290
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 292
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 294
    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 295
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getFragmentTag()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 155
    iget v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mValue:I

    return v0
.end method

.method protected onAttachedToActivity()V
    .locals 2

    .line 129
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 131
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 133
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->setPreference(Ltv/emby/embyatv/settings/ColorPreference;)V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a00a8

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mPreviewView:Landroid/view/View;

    .line 103
    iget-object p1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mPreviewView:Landroid/view/View;

    iget v0, p0, Ltv/emby/embyatv/settings/ColorPreference;->mValue:I

    invoke-static {p1, v0}, Ltv/emby/embyatv/settings/ColorPreference;->setColorViewValue(Landroid/view/View;I)V

    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 116
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 118
    invoke-static {}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->newInstance()Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->setPreference(Ltv/emby/embyatv/settings/ColorPreference;)V

    .line 121
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 122
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/ColorPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/ColorPreference;->setValue(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/ColorPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput p1, p0, Ltv/emby/embyatv/settings/ColorPreference;->mValue:I

    .line 109
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/ColorPreference;->persistInt(I)Z

    .line 110
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
