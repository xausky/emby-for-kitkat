.class Ltv/emby/embyatv/startup/DpadPwActivity$1;
.super Ljava/lang/Object;
.source "DpadPwActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/startup/DpadPwActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/startup/DpadPwActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$password:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/startup/DpadPwActivity;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity$1;->this$0:Ltv/emby/embyatv/startup/DpadPwActivity;

    iput-object p2, p0, Ltv/emby/embyatv/startup/DpadPwActivity$1;->val$password:Landroid/widget/EditText;

    iput-object p3, p0, Ltv/emby/embyatv/startup/DpadPwActivity$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 96
    iget-object p1, p0, Ltv/emby/embyatv/startup/DpadPwActivity$1;->val$password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object p2, p0, Ltv/emby/embyatv/startup/DpadPwActivity$1;->this$0:Ltv/emby/embyatv/startup/DpadPwActivity;

    iget-object p2, p2, Ltv/emby/embyatv/startup/DpadPwActivity;->user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/startup/DpadPwActivity$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Ltv/emby/embyatv/startup/DpadPwActivity$1;->this$0:Ltv/emby/embyatv/startup/DpadPwActivity;

    iget-object v2, v2, Ltv/emby/embyatv/startup/DpadPwActivity;->directItemId:Ljava/lang/String;

    invoke-static {p2, p1, v0, v1, v2}, Ltv/emby/embyatv/util/Utils;->loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
