.class Ltv/emby/embyatv/ui/FilterText$1;
.super Ljava/lang/Object;
.source "FilterText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/FilterText;->inflateView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/FilterText;

.field final synthetic val$us:Landroid/view/View;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FilterText;Landroid/view/View;)V
    .locals 0

    .line 48
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterText$1;->this$0:Ltv/emby/embyatv/ui/FilterText;

    iput-object p2, p0, Ltv/emby/embyatv/ui/FilterText$1;->val$us:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterText$1;->this$0:Ltv/emby/embyatv/ui/FilterText;

    invoke-static {p1}, Ltv/emby/embyatv/ui/FilterText;->access$000(Ltv/emby/embyatv/ui/FilterText;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterText$1;->this$0:Ltv/emby/embyatv/ui/FilterText;

    invoke-static {p1}, Ltv/emby/embyatv/ui/FilterText;->access$000(Ltv/emby/embyatv/ui/FilterText;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterText$1;->val$us:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
