.class Ltv/emby/embyatv/ui/FilterSelector$1;
.super Ljava/lang/Object;
.source "FilterSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/FilterSelector;->inflateView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/FilterSelector;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FilterSelector;)V
    .locals 0

    .line 61
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector$1;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 64
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector$1;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-static {p1}, Ltv/emby/embyatv/ui/FilterSelector;->access$000(Ltv/emby/embyatv/ui/FilterSelector;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/NameValuePair;

    .line 65
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterSelector$1;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-virtual {p1}, Lmediabrowser/model/dto/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/ui/FilterSelector;->access$100(Ltv/emby/embyatv/ui/FilterSelector;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterSelector$1;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-static {v0}, Ltv/emby/embyatv/ui/FilterSelector;->access$300(Ltv/emby/embyatv/ui/FilterSelector;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/ui/FilterText;

    iget-object v2, p0, Ltv/emby/embyatv/ui/FilterSelector$1;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-static {v2}, Ltv/emby/embyatv/ui/FilterSelector;->access$200(Ltv/emby/embyatv/ui/FilterSelector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmediabrowser/model/dto/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Ltv/emby/embyatv/ui/FilterSelector$1;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-static {v4}, Ltv/emby/embyatv/ui/FilterSelector;->access$300(Ltv/emby/embyatv/ui/FilterSelector;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v1, v2, v3, p1, v4}, Ltv/emby/embyatv/ui/FilterText;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
