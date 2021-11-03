.class Ltv/emby/embyatv/ui/FocusableText$1;
.super Ljava/lang/Object;
.source "FocusableText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/ui/FocusableText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/FocusableText;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FocusableText;)V
    .locals 0

    .line 47
    iput-object p1, p0, Ltv/emby/embyatv/ui/FocusableText$1;->this$0:Ltv/emby/embyatv/ui/FocusableText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p2, 0x7f080073

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f080062

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
