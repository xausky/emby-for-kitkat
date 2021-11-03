.class Ltv/emby/embyatv/settings/ColorPickerDialogDash$1;
.super Ljava/lang/Object;
.source "ColorPickerDialogDash.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/settings/ColorPickerDialogDash;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/settings/ColorPickerDialogDash;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/settings/ColorPickerDialogDash;)V
    .locals 0

    .line 183
    iput-object p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash$1;->this$0:Ltv/emby/embyatv/settings/ColorPickerDialogDash;

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

    .line 189
    iget-object p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash$1;->this$0:Ltv/emby/embyatv/settings/ColorPickerDialogDash;

    iget-object p1, p1, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mListener:Ltv/emby/embyatv/settings/ColorPickerDialogDash$OnColorSelectedListener;

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash$1;->this$0:Ltv/emby/embyatv/settings/ColorPickerDialogDash;

    iget-object p1, p1, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->mListener:Ltv/emby/embyatv/settings/ColorPickerDialogDash$OnColorSelectedListener;

    iget-object p2, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash$1;->this$0:Ltv/emby/embyatv/settings/ColorPickerDialogDash;

    invoke-static {p2}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->access$000(Ltv/emby/embyatv/settings/ColorPickerDialogDash;)Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Ltv/emby/embyatv/settings/ColorPickerDialogDash$ColorGridAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ltv/emby/embyatv/settings/ColorPickerDialogDash$OnColorSelectedListener;->onColorSelected(I)V

    .line 191
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/settings/ColorPickerDialogDash$1;->this$0:Ltv/emby/embyatv/settings/ColorPickerDialogDash;

    invoke-virtual {p1}, Ltv/emby/embyatv/settings/ColorPickerDialogDash;->dismiss()V

    return-void
.end method
