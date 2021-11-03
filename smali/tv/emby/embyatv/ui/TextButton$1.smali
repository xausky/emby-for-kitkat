.class Ltv/emby/embyatv/ui/TextButton$1;
.super Ljava/lang/Object;
.source "TextButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/ui/TextButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/TextButton;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/TextButton;)V
    .locals 0

    .line 46
    iput-object p1, p0, Ltv/emby/embyatv/ui/TextButton$1;->this$0:Ltv/emby/embyatv/ui/TextButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const p2, 0x7f080073

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    iget-object p2, p0, Ltv/emby/embyatv/ui/TextButton$1;->this$0:Ltv/emby/embyatv/ui/TextButton;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p2, Ltv/emby/embyatv/ui/TextButton;->alphaSave:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/ui/TextButton$1;->this$0:Ltv/emby/embyatv/ui/TextButton;

    iget p2, p2, Ltv/emby/embyatv/ui/TextButton;->alphaSave:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
