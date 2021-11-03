.class Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$1;
.super Ljava/lang/Object;
.source "ColorPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)V
    .locals 0

    .line 190
    iput-object p1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$1;->this$0:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 194
    iget-object p1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$1;->this$0:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    invoke-static {p1}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->access$200(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)Ltv/emby/embyatv/settings/ColorPreference;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$1;->this$0:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    invoke-static {p2}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->access$100(Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;)Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$ColorGridAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/settings/ColorPreference;->setValue(I)V

    .line 195
    iget-object p1, p0, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment$1;->this$0:Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/settings/ColorPreference$ColorDialogFragment;->dismiss()V

    return-void
.end method
