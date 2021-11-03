.class Ltv/emby/embyatv/ui/AnnouncePopup$1;
.super Ljava/lang/Object;
.source "AnnouncePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/AnnouncePopup;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/AnnouncePopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/AnnouncePopup;)V
    .locals 0

    .line 39
    iput-object p1, p0, Ltv/emby/embyatv/ui/AnnouncePopup$1;->this$0:Ltv/emby/embyatv/ui/AnnouncePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Ltv/emby/embyatv/ui/AnnouncePopup$1;->this$0:Ltv/emby/embyatv/ui/AnnouncePopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/AnnouncePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
