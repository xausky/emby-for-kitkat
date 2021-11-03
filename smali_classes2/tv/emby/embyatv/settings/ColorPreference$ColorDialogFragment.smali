.class public Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;
.super Landroid/app/DialogFragment;
.source "ColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/settings/ColorPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;

.field private mColorGrid:Landroid/widget/GridView;

.field private mPreference:Ltv/emby/embyatv/settings/ColorPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;
    .locals 0

    .line 158
    iget-object p0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mAdapter:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)Ltv/emby/embyatv/settings/ColorPreference;
    .locals 0

    .line 158
    iget-object p0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mPreference:Ltv/emby/embyatv/settings/ColorPreference;

    return-object p0
.end method

.method public static newInstance()Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;
    .locals 1

    .line 167
    new-instance v0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    invoke-direct {v0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;-><init>()V

    return-object v0
.end method

.method private tryBindLists()V
    .locals 2

    .line 207
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mPreference:Ltv/emby/embyatv/settings/ColorPreference;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mAdapter:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;-><init>(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;Ltv/emby/embyatv/settings/ColorPreference$1;)V

    iput-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mAdapter:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;

    .line 215
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mAdapter:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mColorGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mAdapter:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mPreference:Ltv/emby/embyatv/settings/ColorPreference;

    invoke-virtual {v1}, Ltv/emby/embyatv/settings/ColorPreference;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->setSelectedColor(I)V

    .line 217
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mColorGrid:Landroid/widget/GridView;

    iget-object v1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mAdapter:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 178
    invoke-direct {p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->tryBindLists()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 183
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0039

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00a7

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mColorGrid:Landroid/widget/GridView;

    .line 188
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mColorGrid:Landroid/widget/GridView;

    iget-object v1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mPreference:Ltv/emby/embyatv/settings/ColorPreference;

    invoke-static {v1}, Ltv/emby/embyatv/settings/ColorPreference;->access$000(Ltv/emby/embyatv/settings/ColorPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 190
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mColorGrid:Landroid/widget/GridView;

    new-instance v1, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$1;-><init>(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 199
    invoke-direct {p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->tryBindLists()V

    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setPreference(Ltv/emby/embyatv/settings/ColorPreference;)V
    .locals 0

    .line 171
    iput-object p1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->mPreference:Ltv/emby/embyatv/settings/ColorPreference;

    .line 172
    invoke-direct {p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->tryBindLists()V

    return-void
.end method
