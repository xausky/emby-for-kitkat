.class Ltv/emby/embyatv/ui/ImageButton$1;
.super Ljava/lang/Object;
.source "ImageButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/ui/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/ImageButton;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/ImageButton;)V
    .locals 0

    .line 76
    iput-object p1, p0, Ltv/emby/embyatv/ui/ImageButton$1;->this$0:Ltv/emby/embyatv/ui/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 80
    iget-object p2, p0, Ltv/emby/embyatv/ui/ImageButton$1;->this$0:Ltv/emby/embyatv/ui/ImageButton;

    invoke-static {p2}, Ltv/emby/embyatv/ui/ImageButton;->access$000(Ltv/emby/embyatv/ui/ImageButton;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ltv/emby/embyatv/ui/ImageButton$1;->this$0:Ltv/emby/embyatv/ui/ImageButton;

    invoke-static {p2}, Ltv/emby/embyatv/ui/ImageButton;->access$000(Ltv/emby/embyatv/ui/ImageButton;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/ui/ImageButton$1;->this$0:Ltv/emby/embyatv/ui/ImageButton;

    invoke-static {v0}, Ltv/emby/embyatv/ui/ImageButton;->access$100(Ltv/emby/embyatv/ui/ImageButton;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p2, 0x7f080073

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 82
    iget-object p2, p0, Ltv/emby/embyatv/ui/ImageButton$1;->this$0:Ltv/emby/embyatv/ui/ImageButton;

    invoke-static {p2}, Ltv/emby/embyatv/ui/ImageButton;->access$200(Ltv/emby/embyatv/ui/ImageButton;)Ltv/emby/embyatv/model/GotFocusEvent;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Ltv/emby/embyatv/ui/ImageButton$1;->this$0:Ltv/emby/embyatv/ui/ImageButton;

    invoke-static {p2}, Ltv/emby/embyatv/ui/ImageButton;->access$200(Ltv/emby/embyatv/ui/ImageButton;)Ltv/emby/embyatv/model/GotFocusEvent;

    move-result-object p2

    invoke-virtual {p2, p1}, Ltv/emby/embyatv/model/GotFocusEvent;->gotFocus(Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object p2, p0, Ltv/emby/embyatv/ui/ImageButton$1;->this$0:Ltv/emby/embyatv/ui/ImageButton;

    invoke-static {p2}, Ltv/emby/embyatv/ui/ImageButton;->access$000(Ltv/emby/embyatv/ui/ImageButton;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Ltv/emby/embyatv/ui/ImageButton$1;->this$0:Ltv/emby/embyatv/ui/ImageButton;

    invoke-static {p2}, Ltv/emby/embyatv/ui/ImageButton;->access$000(Ltv/emby/embyatv/ui/ImageButton;)Landroid/widget/TextView;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p2, 0x0

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    :goto_0
    return-void
.end method
