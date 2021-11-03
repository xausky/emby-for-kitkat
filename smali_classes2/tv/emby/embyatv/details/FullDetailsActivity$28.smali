.class Ltv/emby/embyatv/details/FullDetailsActivity$28;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->addButtons(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1323
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1326
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1327
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1329
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity;->mProgramInfo:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$28$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$28$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$28;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetDefaultLiveTvTimerInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 1363
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v1, 0x7f100466

    .line 1364
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v1, 0x7f100623

    .line 1365
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100526

    const/4 v1, 0x0

    .line 1366
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100617

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$28$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$28$2;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$28;)V

    .line 1367
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1385
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1389
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$28;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3200(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    :goto_0
    return-void
.end method
