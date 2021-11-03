.class Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorGridAdapter"
.end annotation


# instance fields
.field private mChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedColor:I

.field final synthetic this$0:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;


# direct methods
.method private constructor <init>(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)V
    .locals 4

    .line 225
    iput-object p1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->this$0:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->mChoices:Ljava/util/List;

    .line 226
    invoke-static {p1}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->access$200(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)Ltv/emby/embyatv/settings/ColorPreference;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/settings/ColorPreference;->access$400(Ltv/emby/embyatv/settings/ColorPreference;)[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 227
    iget-object v3, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->mChoices:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;Ltv/emby/embyatv/settings/ColorPreference$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;-><init>(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->mChoices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1

    .line 238
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->mChoices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 243
    iget-object v0, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->mChoices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 249
    iget-object p2, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->this$0:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    invoke-virtual {p2}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->this$0:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    .line 250
    invoke-static {v1}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->access$200(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)Ltv/emby/embyatv/settings/ColorPreference;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/settings/ColorPreference;->access$500(Ltv/emby/embyatv/settings/ColorPreference;)I

    move-result v1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 253
    :cond_0
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p3, 0x7f0a00a8

    .line 254
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, p1}, Ltv/emby/embyatv/settings/ColorPreference;->access$600(Landroid/view/View;I)V

    .line 255
    iget p3, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->mSelectedColor:I

    if-ne p1, p3, :cond_1

    const v0, 0x6633b5e5

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method

.method public setSelectedColor(I)V
    .locals 0

    .line 262
    iput p1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->mSelectedColor:I

    .line 263
    invoke-virtual {p0}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
