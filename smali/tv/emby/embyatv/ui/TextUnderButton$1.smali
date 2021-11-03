.class Ltv/emby/embyatv/ui/TextUnderButton$1;
.super Ljava/lang/Object;
.source "TextUnderButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/ui/TextUnderButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/TextUnderButton;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/TextUnderButton;)V
    .locals 0

    .line 77
    iput-object p1, p0, Ltv/emby/embyatv/ui/TextUnderButton$1;->this$0:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 80
    iget-object v0, p0, Ltv/emby/embyatv/ui/TextUnderButton$1;->this$0:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-static {v0}, Ltv/emby/embyatv/ui/TextUnderButton;->access$000(Ltv/emby/embyatv/ui/TextUnderButton;)Ltv/emby/embyatv/model/GotFocusEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/TextUnderButton$1;->this$0:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-static {v0}, Ltv/emby/embyatv/ui/TextUnderButton;->access$000(Ltv/emby/embyatv/ui/TextUnderButton;)Ltv/emby/embyatv/model/GotFocusEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/model/GotFocusEvent;->gotFocus(Landroid/view/View;)V

    .line 81
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/TextUnderButton$1;->this$0:Ltv/emby/embyatv/ui/TextUnderButton;

    invoke-static {p1}, Ltv/emby/embyatv/ui/TextUnderButton;->access$100(Ltv/emby/embyatv/ui/TextUnderButton;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p2, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
