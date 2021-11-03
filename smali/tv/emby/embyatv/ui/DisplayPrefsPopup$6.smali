.class Ltv/emby/embyatv/ui/DisplayPrefsPopup$6;
.super Ljava/lang/Object;
.source "DisplayPrefsPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/DisplayPrefsPopup;-><init>(Landroid/app/Activity;Landroid/view/View;ZZLmediabrowser/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

.field final synthetic val$response:Lmediabrowser/apiinteraction/Response;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/DisplayPrefsPopup;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 149
    iput-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$6;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    iput-object p2, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$6;->val$response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 152
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$6;->val$response:Lmediabrowser/apiinteraction/Response;

    iget-object v0, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$6;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    iget-object v0, v0, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->mChanged:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    .line 153
    iget-object p1, p0, Ltv/emby/embyatv/ui/DisplayPrefsPopup$6;->this$0:Ltv/emby/embyatv/ui/DisplayPrefsPopup;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/DisplayPrefsPopup;->dismiss()V

    return-void
.end method
