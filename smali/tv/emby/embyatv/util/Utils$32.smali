.class final Ltv/emby/embyatv/util/Utils$32;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils;->processPasswordEntry(Landroid/app/Activity;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$directItemId:Ljava/lang/String;

.field final synthetic val$password:Landroid/widget/EditText;

.field final synthetic val$user:Lmediabrowser/model/dto/UserDto;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lmediabrowser/model/dto/UserDto;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 2387
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$32;->val$password:Landroid/widget/EditText;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$32;->val$user:Lmediabrowser/model/dto/UserDto;

    iput-object p3, p0, Ltv/emby/embyatv/util/Utils$32;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Ltv/emby/embyatv/util/Utils$32;->val$directItemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 2389
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$32;->val$password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2390
    iget-object p2, p0, Ltv/emby/embyatv/util/Utils$32;->val$user:Lmediabrowser/model/dto/UserDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLoginApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/util/Utils$32;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Ltv/emby/embyatv/util/Utils$32;->val$directItemId:Ljava/lang/String;

    invoke-static {p2, p1, v0, v1, v2}, Ltv/emby/embyatv/util/Utils;->loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
