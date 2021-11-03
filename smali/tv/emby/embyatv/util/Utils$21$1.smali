.class Ltv/emby/embyatv/util/Utils$21$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils$21;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/util/Utils$21;

.field final synthetic val$userPw:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/Utils$21;Landroid/widget/EditText;)V
    .locals 0

    .line 1627
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$21$1;->this$0:Ltv/emby/embyatv/util/Utils$21;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$21$1;->val$userPw:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1629
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$21$1;->this$0:Ltv/emby/embyatv/util/Utils$21;

    iget-object p1, p1, Ltv/emby/embyatv/util/Utils$21;->val$userName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/util/Utils$21$1;->val$userPw:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$21$1;->this$0:Ltv/emby/embyatv/util/Utils$21;

    iget-object v1, v1, Ltv/emby/embyatv/util/Utils$21;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2, v0, v1}, Ltv/emby/embyatv/util/Utils;->loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;)V

    return-void
.end method
