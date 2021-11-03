.class Ltv/emby/embyatv/ui/FilterSelector$2;
.super Ljava/lang/Object;
.source "FilterSelector.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


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

    .line 71
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector$2;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector$2;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-static {p1}, Ltv/emby/embyatv/ui/FilterSelector;->access$400(Ltv/emby/embyatv/ui/FilterSelector;)Lmediabrowser/apiinteraction/EmptyResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector$2;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-static {p1}, Ltv/emby/embyatv/ui/FilterSelector;->access$400(Ltv/emby/embyatv/ui/FilterSelector;)Lmediabrowser/apiinteraction/EmptyResponse;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector$2;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-static {p1}, Ltv/emby/embyatv/ui/FilterSelector;->access$400(Ltv/emby/embyatv/ui/FilterSelector;)Lmediabrowser/apiinteraction/EmptyResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterSelector$2;->this$0:Ltv/emby/embyatv/ui/FilterSelector;

    invoke-static {p1}, Ltv/emby/embyatv/ui/FilterSelector;->access$400(Ltv/emby/embyatv/ui/FilterSelector;)Lmediabrowser/apiinteraction/EmptyResponse;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method
