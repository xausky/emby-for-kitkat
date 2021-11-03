.class public Ltv/emby/embyatv/validation/UnlockActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "UnlockActivity.java"


# instance fields
.field currentProduct:Ltv/emby/iap/InAppProduct;

.field email:Ljava/lang/String;

.field validator:Ltv/emby/iap/IabValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/validation/UnlockActivity;Ltv/emby/iap/InAppProduct;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity;->purchase(Ltv/emby/iap/InAppProduct;)V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/validation/UnlockActivity;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/validation/UnlockActivity;->getEmailAddress(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private getEmailAddress(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x20

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 203
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Email Address"

    .line 204
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1003b5

    .line 207
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/validation/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/validation/UnlockActivity$5;

    invoke-direct {v2, p0, v0, p2}, Ltv/emby/embyatv/validation/UnlockActivity$5;-><init>(Ltv/emby/embyatv/validation/UnlockActivity;Landroid/widget/EditText;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private purchase(Ltv/emby/iap/InAppProduct;)V
    .locals 3

    .line 219
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting purchase of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    .line 221
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltv/emby/iap/PurchaseActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "sku"

    .line 222
    iget-object v1, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {v1}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "googleKey"

    .line 223
    invoke-static {}, Ltv/emby/embyatv/validation/AppValidator;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 224
    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/validation/UnlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected handleRegError(Ljava/lang/String;)V
    .locals 3

    .line 295
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Registration Error"

    .line 296
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was an error registering with the Emby server.  Please contact Emby support at http://emby.media/community. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1003bf

    .line 298
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/validation/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 287
    invoke-super {p0, p1, p2, p3}, Ltv/emby/embyatv/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 281
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Purchase cancelled."

    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    .line 283
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 231
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {v1}, Ltv/emby/iap/InAppProduct;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " successful"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 233
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase token: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "storeToken"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    .line 235
    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".old"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {p1}, Ltv/emby/iap/InAppProduct;->getEmbyFeatureCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p3, :cond_2

    const-string p1, "No data returned from IAB library"

    .line 241
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity;->handleRegError(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const p1, 0x7f100554

    .line 244
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Processing..."

    invoke-static {p0, p1, p2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    .line 245
    new-instance p2, Lmediabrowser/model/registration/AppstoreRegRequest;

    invoke-direct {p2}, Lmediabrowser/model/registration/AppstoreRegRequest;-><init>()V

    const-string v0, "store"

    .line 246
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/registration/AppstoreRegRequest;->setStore(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/registration/AppstoreRegRequest;->setApplication(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {v0}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/registration/AppstoreRegRequest;->setProduct(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {v0}, Ltv/emby/iap/InAppProduct;->getEmbyFeatureCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/registration/AppstoreRegRequest;->setFeature(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {v0}, Ltv/emby/iap/InAppProduct;->getProductType()Ltv/emby/iap/ProductType;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/iap/ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/registration/AppstoreRegRequest;->setType(Ljava/lang/String;)V

    const-string v0, "storeId"

    .line 251
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "storeId"

    .line 252
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/registration/AppstoreRegRequest;->setStoreId(Ljava/lang/String;)V

    :cond_3
    const-string v0, "storeToken"

    .line 253
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmediabrowser/model/registration/AppstoreRegRequest;->setStoreToken(Ljava/lang/String;)V

    .line 254
    iget-object p3, p0, Ltv/emby/embyatv/validation/UnlockActivity;->email:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lmediabrowser/model/registration/AppstoreRegRequest;->setEmail(Ljava/lang/String;)V

    .line 255
    iget-object p3, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {p3}, Ltv/emby/iap/InAppProduct;->getPrice()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmediabrowser/model/registration/AppstoreRegRequest;->setAmt(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p3

    new-instance v0, Ltv/emby/embyatv/validation/UnlockActivity$6;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity$6;-><init>(Ltv/emby/embyatv/validation/UnlockActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {p3, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->RegisterAppstoreSaleAsync(Lmediabrowser/model/registration/AppstoreRegRequest;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_1

    .line 236
    :cond_4
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const/4 p2, 0x1

    iget-object p3, p0, Ltv/emby/embyatv/validation/UnlockActivity;->currentProduct:Ltv/emby/iap/InAppProduct;

    invoke-virtual {p3}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ltv/emby/embyatv/TvApp;->setPaid(ZLjava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Ltv/emby/embyatv/validation/UnlockActivity;->finish()V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "4.0.3.0"

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0d002d

    .line 64
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity;->setContentView(I)V

    .line 67
    new-instance p1, Ltv/emby/iap/IabValidator;

    invoke-static {}, Ltv/emby/embyatv/validation/AppValidator;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/validation/UnlockActivity$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/validation/UnlockActivity$2;-><init>(Ltv/emby/embyatv/validation/UnlockActivity;)V

    invoke-direct {p1, p0, v0, v1}, Ltv/emby/iap/IabValidator;-><init>(Landroid/content/Context;Ljava/lang/String;Ltv/emby/iap/ILogger;)V

    iput-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity;->validator:Ltv/emby/iap/IabValidator;

    .line 85
    iget-object p1, p0, Ltv/emby/embyatv/validation/UnlockActivity;->validator:Ltv/emby/iap/IabValidator;

    new-instance v0, Ltv/emby/embyatv/validation/UnlockActivity$3;

    invoke-direct {v0, p0, p0}, Ltv/emby/embyatv/validation/UnlockActivity$3;-><init>(Ltv/emby/embyatv/validation/UnlockActivity;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Ltv/emby/iap/IabValidator;->validateProductsAsync(Ltv/emby/iap/IResultHandler;)V

    const p1, 0x7f0a007f

    .line 188
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/UnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 189
    new-instance v0, Ltv/emby/embyatv/validation/UnlockActivity$4;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/validation/UnlockActivity$4;-><init>(Ltv/emby/embyatv/validation/UnlockActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Incompatible Server Version"

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Please update your Emby Server to be compatible with this app."

    .line 54
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1003bf

    .line 55
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/validation/UnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/validation/UnlockActivity$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/validation/UnlockActivity$1;-><init>(Ltv/emby/embyatv/validation/UnlockActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 304
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onDestroy()V

    .line 305
    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity;->validator:Ltv/emby/iap/IabValidator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/validation/UnlockActivity;->validator:Ltv/emby/iap/IabValidator;

    invoke-virtual {v0}, Ltv/emby/iap/IabValidator;->dispose()V

    :cond_0
    return-void
.end method
