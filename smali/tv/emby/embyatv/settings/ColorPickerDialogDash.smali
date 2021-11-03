.class public Ltv/emby/embyatv/settings/ColorPickerDialogDash;
.super Landroid/app/DialogFragment;
.source "ColorPickerDialogDash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;,
        Ltv/emby/embyatv/settings/ColorPickerDialogDash$OnColorSelectedListener;
    }
.end annotation


# static fields
.field protected static final KEY_COLORS:Ljava/lang/String; = "colors"

.field protected static final KEY_COLUMNS:Ljava/lang/String; = "columns"

.field protected static final KEY_SELECTED_COLOR:Ljava/lang/String; = "selected_color"

.field protected static final KEY_TITLE_ID:Ljava/lang/String; = "title_id"


# instance fields
.field private mAdapter:Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;

.field private mColorChoices:[I

.field private mColorGrid:Landroid/widget/GridView;

.field private mItemLayoutId:I

.field protected mListener:Ltv/emby/embyatv/settings/ColorPickerDialogDash$OnColorSelectedListener;

.field private mNumColumns:I

.field protected mSelectedColor:I

.field protected mTitleResId:I

.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 61
    new-array v1, v0, [I

    iput-object v1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorChoices:[I

    .line 62
    iput v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mValue:I

    const v0, 0x7f0d003a

    .line 63
    iput v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mItemLayoutId:I

    const/4 v0, 0x5

    .line 64
    iput v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mNumColumns:I

    const v0, 0x7f1005a0

    .line 70
    iput v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mTitleResId:I

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/settings/ColorPickerDialogDash;)Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mAdapter:Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/settings/ColorPickerDialogDash;)[I
    .locals 0

    .line 57
    iget-object p0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorChoices:[I

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/settings/ColorPickerDialogDash;)I
    .locals 0

    .line 57
    iget p0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mItemLayoutId:I

    return p0
.end method

.method static synthetic access$400(Landroid/view/View;I)V
    .locals 0

    .line 57
    invoke-static {p0, p1}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->setColorViewValue(Landroid/view/View;I)V

    return-void
.end method

.method public static newInstance()Ltv/emby/embyatv/settings/ColorPickerDialogDash;
    .locals 1

    .line 85
    new-instance v0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;

    invoke-direct {v0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;-><init>()V

    return-object v0
.end method

.method public static newInstance(I[III)Ltv/emby/embyatv/settings/ColorPickerDialogDash;
    .locals 1

    .line 102
    invoke-static {}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->newInstance()Ltv/emby/embyatv/settings/ColorPickerDialogDash;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p0, p1, p2, p3}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->initialize(I[III)V

    return-object v0
.end method

.method private static setColorViewValue(Landroid/view/View;I)V
    .locals 6

    .line 273
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 274
    check-cast p0, Landroid/widget/ImageView;

    .line 275
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 279
    instance-of v3, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    .line 281
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 283
    :cond_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 284
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 289
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0xc0

    div-int/lit16 v3, v3, 0x100

    .line 290
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0xc0

    div-int/lit16 v4, v4, 0x100

    .line 291
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0xc0

    div-int/lit16 v5, v5, 0x100

    .line 288
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 293
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 295
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 294
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 296
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 298
    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 299
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private tryBindLists()V
    .locals 2

    .line 205
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mAdapter:Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;-><init>(Ltv/emby/embyatv/settings/ColorPickerDialogDash;Ltv/emby/embyatv/settings/ColorPickerDialogDash$1;)V

    iput-object v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mAdapter:Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;

    .line 209
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mAdapter:Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mAdapter:Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;

    iget v1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mSelectedColor:I

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;->setSelectedColor(I)V

    .line 211
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorGrid:Landroid/widget/GridView;

    iget-object v1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mAdapter:Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public initialize(I[III)V
    .locals 0

    .line 139
    iput-object p2, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorChoices:[I

    .line 140
    iput p4, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mNumColumns:I

    .line 141
    iput p3, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mSelectedColor:I

    if-lez p1, :cond_0

    .line 143
    iput p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mTitleResId:I

    .line 145
    :cond_0
    iget p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mTitleResId:I

    iget p2, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mNumColumns:I

    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->setArguments(II)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 158
    iget-object p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorChoices:[I

    array-length p1, p1

    if-lez p1, :cond_0

    .line 159
    invoke-direct {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->tryBindLists()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 164
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0039

    const/4 v2, 0x0

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mTitleResId:I

    .line 169
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "columns"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mNumColumns:I

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "colors"

    .line 173
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorChoices:[I

    const-string v1, "selected_color"

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mSelectedColor:I

    .line 175
    invoke-direct {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->tryBindLists()V

    :cond_1
    const p1, 0x7f0a00a7

    .line 179
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorGrid:Landroid/widget/GridView;

    .line 181
    iget-object p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorGrid:Landroid/widget/GridView;

    iget v1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mNumColumns:I

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 183
    iget-object p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorGrid:Landroid/widget/GridView;

    new-instance v1, Ltv/emby/embyatv/settings/ColorPickerDialogDash$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash$1;-><init>(Ltv/emby/embyatv/settings/ColorPickerDialogDash;)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    invoke-direct {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->tryBindLists()V

    .line 197
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget v0, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mTitleResId:I

    .line 199
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 266
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "colors"

    .line 267
    iget-object v1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mColorChoices:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "selected_color"

    .line 268
    iget v1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mSelectedColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setArguments(II)V
    .locals 2

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title_id"

    .line 109
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "columns"

    .line 110
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnColorSelectedListener(Ltv/emby/embyatv/settings/ColorPickerDialogDash$OnColorSelectedListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mListener:Ltv/emby/embyatv/settings/ColorPickerDialogDash$OnColorSelectedListener;

    return-void
.end method

.method public setPreference()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->tryBindLists()V

    return-void
.end method
