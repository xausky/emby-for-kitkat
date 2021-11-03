.class Ltv/emby/embyatv/ui/EditSubPopup$4$1;
.super Ljava/lang/Object;
.source "EditSubPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/EditSubPopup$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/ui/EditSubPopup$4;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/EditSubPopup$4;Landroid/view/View;)V
    .locals 0

    .line 226
    iput-object p1, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$4;

    iput-object p2, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 229
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$4;

    iget-object p2, p2, Ltv/emby/embyatv/ui/EditSubPopup$4;->this$0:Ltv/emby/embyatv/ui/EditSubPopup;

    invoke-static {p2}, Ltv/emby/embyatv/ui/EditSubPopup;->access$200(Ltv/emby/embyatv/ui/EditSubPopup;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/ui/EditSubPopup$4$1;->this$1:Ltv/emby/embyatv/ui/EditSubPopup$4;

    iget-object v0, v0, Ltv/emby/embyatv/ui/EditSubPopup$4;->val$ndx:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/EditSubPopup$4$1$1;-><init>(Ltv/emby/embyatv/ui/EditSubPopup$4$1;)V

    invoke-virtual {p1, p2, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->DeleteSubtitle(Ljava/lang/String;ILmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
