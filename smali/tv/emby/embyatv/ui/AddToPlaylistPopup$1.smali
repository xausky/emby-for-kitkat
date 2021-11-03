.class Ltv/emby/embyatv/ui/AddToPlaylistPopup$1;
.super Ljava/lang/Object;
.source "AddToPlaylistPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/AddToPlaylistPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)V
    .locals 0

    .line 77
    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$1;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

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

    .line 80
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$1;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$000(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x1

    if-ge p3, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$1;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1, p3}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$102(Ltv/emby/embyatv/ui/AddToPlaylistPopup;I)I

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
