.class Ltv/emby/embyatv/ui/AddToPlaylistPopup$3;
.super Ljava/lang/Object;
.source "AddToPlaylistPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 152
    iput-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$3;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Ltv/emby/embyatv/ui/AddToPlaylistPopup$3;->this$0:Ltv/emby/embyatv/ui/AddToPlaylistPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/AddToPlaylistPopup;->access$600(Ltv/emby/embyatv/ui/AddToPlaylistPopup;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
