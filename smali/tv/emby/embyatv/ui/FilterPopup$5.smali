.class Ltv/emby/embyatv/ui/FilterPopup$5;
.super Ljava/lang/Object;
.source "FilterPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/FilterPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/FilterPopup;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FilterPopup;)V
    .locals 0

    .line 99
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup$5;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    iget-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup$5;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {p1}, Ltv/emby/embyatv/ui/FilterPopup;->access$100(Ltv/emby/embyatv/ui/FilterPopup;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/FilterSelector;

    .line 103
    invoke-virtual {v0}, Ltv/emby/embyatv/ui/FilterSelector;->clearAll()V

    goto :goto_0

    :cond_0
    return-void
.end method
