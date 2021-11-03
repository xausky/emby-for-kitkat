.class Ltv/emby/embyatv/ui/RecordPopup$5;
.super Ljava/lang/Object;
.source "RecordPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/RecordPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/RecordPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/RecordPopup;)V
    .locals 0

    .line 197
    iput-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$5;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 200
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup$5;->this$0:Ltv/emby/embyatv/ui/RecordPopup;

    iget-object p1, p1, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
