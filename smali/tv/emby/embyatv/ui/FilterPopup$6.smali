.class Ltv/emby/embyatv/ui/FilterPopup$6;
.super Ljava/lang/Object;
.source "FilterPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/FilterPopup;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 112
    iput-object p1, p0, Ltv/emby/embyatv/ui/FilterPopup$6;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    iput-object p2, p0, Ltv/emby/embyatv/ui/FilterPopup$6;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 115
    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup$6;->val$response:Lmediabrowser/apiinteraction/Response;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/FilterPopup$6;->val$response:Lmediabrowser/apiinteraction/Response;

    iget-object v1, p0, Ltv/emby/embyatv/ui/FilterPopup$6;->this$0:Ltv/emby/embyatv/ui/FilterPopup;

    invoke-static {v1}, Ltv/emby/embyatv/ui/FilterPopup;->access$000(Ltv/emby/embyatv/ui/FilterPopup;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
