.class public Ltv/emby/iap/billing/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;,
        Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;,
        Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;,
        Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;,
        Ltv/emby/iap/billing/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field private logger:Ltv/emby/iap/ILogger;

.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ltv/emby/iap/ILogger;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mDebugLog:Z

    const-string v1, "IabHelper"

    .line 78
    iput-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 81
    iput-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mSetupDone:Z

    .line 84
    iput-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mDisposed:Z

    .line 87
    iput-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mSubscriptionsSupported:Z

    .line 91
    iput-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mAsyncInProgress:Z

    const-string v0, ""

    .line 95
    iput-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Ltv/emby/iap/billing/IabHelper;->logger:Ltv/emby/iap/ILogger;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Ltv/emby/iap/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    const-string p1, "IAB helper created."

    .line 169
    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 305
    iget-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mDisposed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    .line 767
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    sub-int/2addr v2, p0

    if-ltz v2, :cond_0

    .line 771
    array-length v0, v1

    if-ge v2, v0, :cond_0

    aget-object p0, v1, v2

    return-object p0

    .line 772
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p0, :cond_3

    .line 774
    array-length v1, v0

    if-lt p0, v1, :cond_2

    goto :goto_0

    .line 777
    :cond_2
    aget-object p0, v0, p0

    return-object p0

    .line 775
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3

    .line 783
    iget-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 784
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 785
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method consume(Ltv/emby/iap/billing/Purchase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltv/emby/iap/billing/IabException;
        }
    .end annotation

    .line 660
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 661
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 663
    iget-object v0, p1, Ltv/emby/iap/billing/Purchase;->mItemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    :try_start_0
    invoke-virtual {p1}, Ltv/emby/iap/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-virtual {p1}, Ltv/emby/iap/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 671
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 678
    iget-object v2, p0, Ltv/emby/iap/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 683
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ltv/emby/iap/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 684
    new-instance v2, Ltv/emby/iap/billing/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 672
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 673
    new-instance v0, Ltv/emby/iap/billing/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 688
    new-instance v1, Ltv/emby/iap/billing/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 664
    :cond_2
    new-instance v0, Ltv/emby/iap/billing/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ltv/emby/iap/billing/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be consumed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public consumeAsync(Ljava/util/List;Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/iap/billing/Purchase;",
            ">;",
            "Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 741
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 742
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 743
    invoke-virtual {p0, p1, v0, p2}, Ltv/emby/iap/billing/IabHelper;->consumeAsyncInternal(Ljava/util/List;Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method public consumeAsync(Ltv/emby/iap/billing/Purchase;Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;)V
    .locals 1

    .line 728
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 729
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 732
    invoke-virtual {p0, v0, p2, p1}, Ltv/emby/iap/billing/IabHelper;->consumeAsyncInternal(Ljava/util/List;Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltv/emby/iap/billing/Purchase;",
            ">;",
            "Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;",
            "Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 953
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v0, "consume"

    .line 954
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 955
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Ltv/emby/iap/billing/IabHelper$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ltv/emby/iap/billing/IabHelper$3;-><init>(Ltv/emby/iap/billing/IabHelper;Ljava/util/List;Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 984
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dispose()V
    .locals 2

    const-string v0, "Disposing."

    .line 291
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mSetupDone:Z

    .line 293
    iget-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const-string v0, "Unbinding from service."

    .line 294
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mDisposed:Z

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    .line 299
    iput-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 300
    iput-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 301
    iput-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    .line 183
    iput-boolean p1, p0, Ltv/emby/iap/billing/IabHelper;->mDebugLog:Z

    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    .line 177
    iput-boolean p1, p0, Ltv/emby/iap/billing/IabHelper;->mDebugLog:Z

    .line 178
    iput-object p2, p0, Ltv/emby/iap/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    const-string v0, ""

    .line 831
    iput-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 832
    iput-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mAsyncInProgress:Z

    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3

    .line 822
    iget-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mAsyncInProgress:Z

    if-nez v0, :cond_0

    .line 824
    iput-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x1

    .line 825
    iput-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mAsyncInProgress:Z

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 822
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because another async operation("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is in progress."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "RESPONSE_CODE"

    .line 791
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    .line 793
    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 796
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 797
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for bundle response code."

    .line 799
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for bundle response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 3

    .line 807
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 809
    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 812
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 813
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for intent response code."

    .line 815
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for intent response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    .line 442
    iget v0, p0, Ltv/emby/iap/billing/IabHelper;->mRequestCode:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 444
    :cond_0
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    const-string p1, "handleActivityResult"

    .line 445
    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Ltv/emby/iap/billing/IabHelper;->flagEndAsync()V

    const/16 p1, -0x3ea

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2

    const-string p2, "Null data in IAB activity result."

    .line 451
    invoke-virtual {p0, p2}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 452
    new-instance p2, Ltv/emby/iap/billing/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 453
    iget-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p1, p2, v2}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    :cond_1
    return v0

    .line 457
    :cond_2
    invoke-virtual {p0, p3}, Ltv/emby/iap/billing/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    const-string v4, "INAPP_PURCHASE_DATA"

    .line 458
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    .line 459
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_9

    if-nez v3, :cond_9

    const-string p2, "Successful resultcode from purchase activity."

    .line 462
    invoke-virtual {p0, p2}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 463
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase data: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    .line 464
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data signature: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    .line 465
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extras: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected item type: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/iap/billing/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v4, :cond_7

    if-nez v5, :cond_3

    goto/16 :goto_0

    .line 478
    :cond_3
    :try_start_0
    new-instance p2, Ltv/emby/iap/billing/Purchase;

    iget-object p3, p0, Ltv/emby/iap/billing/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {p2, p3, v4, v5}, Ltv/emby/iap/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Ltv/emby/iap/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object p3

    .line 482
    iget-object v3, p0, Ltv/emby/iap/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Ltv/emby/iap/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 484
    new-instance v1, Ltv/emby/iap/billing/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature verification failed for sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v3, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 485
    iget-object p3, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p3, :cond_4

    iget-object p3, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p3, v1, p2}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    :cond_4
    return v0

    :cond_5
    const-string p3, "Purchase signature successfully verified."

    .line 488
    invoke-virtual {p0, p3}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    iget-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_c

    .line 499
    iget-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    new-instance p3, Ltv/emby/iap/billing/IabResult;

    const-string v2, "Success"

    invoke-direct {p3, v1, v2}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    goto/16 :goto_1

    :catch_0
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    .line 491
    invoke-virtual {p0, p3}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 493
    new-instance p2, Ltv/emby/iap/billing/IabResult;

    const-string p3, "Failed to parse purchase data."

    invoke-direct {p2, p1, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 494
    iget-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_6

    iget-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p1, p2, v2}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    :cond_6
    return v0

    :cond_7
    :goto_0
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    .line 469
    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Extras: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 471
    new-instance p1, Ltv/emby/iap/billing/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 472
    iget-object p2, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_8

    iget-object p2, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    :cond_8
    return v0

    :cond_9
    if-ne p2, v6, :cond_a

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ltv/emby/iap/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_c

    .line 506
    new-instance p1, Ltv/emby/iap/billing/IabResult;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v3, p2}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 507
    iget-object p2, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    goto :goto_1

    :cond_a
    if-nez p2, :cond_b

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ltv/emby/iap/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    .line 512
    new-instance p1, Ltv/emby/iap/billing/IabResult;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 513
    iget-object p2, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_c

    iget-object p2, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    goto :goto_1

    .line 516
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-static {v3}, Ltv/emby/iap/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 516
    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 518
    new-instance p1, Ltv/emby/iap/billing/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 519
    iget-object p2, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_c

    iget-object p2, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    :cond_c
    :goto_1
    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 336
    invoke-virtual/range {v0 .. v5}, Ltv/emby/iap/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 341
    invoke-virtual/range {v0 .. v6}, Ltv/emby/iap/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 9

    .line 374
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    const-string v0, "launchPurchaseFlow"

    .line 375
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "launchPurchaseFlow"

    .line 376
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const-string v0, "subs"

    .line 379
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_1

    .line 380
    new-instance p1, Ltv/emby/iap/billing/IabResult;

    const/16 p2, -0x3f1

    const-string p3, "Subscriptions are not available."

    invoke-direct {p1, p2, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Ltv/emby/iap/billing/IabHelper;->flagEndAsync()V

    if-eqz p5, :cond_0

    .line 383
    invoke-interface {p5, p1, v1}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    :cond_0
    return-void

    .line 388
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", item type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Ltv/emby/iap/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p6

    .line 390
    invoke-virtual {p0, p6}, Ltv/emby/iap/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to buy item, Error response: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ltv/emby/iap/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Ltv/emby/iap/billing/IabHelper;->flagEndAsync()V

    .line 394
    new-instance p1, Ltv/emby/iap/billing/IabResult;

    const-string p3, "Unable to buy item"

    invoke-direct {p1, v0, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_2

    .line 395
    invoke-interface {p5, p1, v1}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "BUY_INTENT"

    .line 399
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p6

    check-cast p6, Landroid/app/PendingIntent;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Request code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 401
    iput p4, p0, Ltv/emby/iap/billing/IabHelper;->mRequestCode:I

    .line 402
    iput-object p5, p0, Ltv/emby/iap/billing/IabHelper;->mPurchaseListener:Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 403
    iput-object p3, p0, Ltv/emby/iap/billing/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 404
    invoke-virtual {p6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 p3, 0x0

    .line 406
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 407
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, p1

    move v4, p4

    .line 404
    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 418
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RemoteException while launching purchase flow for sku "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 420
    invoke-virtual {p0}, Ltv/emby/iap/billing/IabHelper;->flagEndAsync()V

    .line 422
    new-instance p1, Ltv/emby/iap/billing/IabResult;

    const/16 p2, -0x3e9

    const-string p3, "Remote exception while starting purchase flow"

    invoke-direct {p1, p2, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_4

    .line 423
    invoke-interface {p5, p1, v1}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 410
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 412
    invoke-virtual {p0}, Ltv/emby/iap/billing/IabHelper;->flagEndAsync()V

    .line 414
    new-instance p1, Ltv/emby/iap/billing/IabResult;

    const/16 p2, -0x3ec

    const-string p3, "Failed to send intent."

    invoke-direct {p1, p2, p3}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz p5, :cond_4

    .line 415
    invoke-interface {p5, p1, v1}, Ltv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Ltv/emby/iap/billing/IabResult;Ltv/emby/iap/billing/Purchase;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 346
    invoke-virtual/range {v0 .. v5}, Ltv/emby/iap/billing/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 351
    invoke-virtual/range {v0 .. v6}, Ltv/emby/iap/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILtv/emby/iap/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 3

    .line 992
    iget-object v0, p0, Ltv/emby/iap/billing/IabHelper;->logger:Ltv/emby/iap/ILogger;

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Ltv/emby/iap/ILogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method logDebugIfEnabled(Ljava/lang/String;)V
    .locals 3

    .line 988
    iget-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/iap/billing/IabHelper;->logger:Ltv/emby/iap/ILogger;

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Ltv/emby/iap/ILogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 5

    .line 996
    iget-object v0, p0, Ltv/emby/iap/billing/IabHelper;->logger:Ltv/emby/iap/ILogger;

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    const-string v2, "In-app billing error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Ltv/emby/iap/ILogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 5

    .line 1000
    iget-object v0, p0, Ltv/emby/iap/billing/IabHelper;->logger:Ltv/emby/iap/ILogger;

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    const-string v2, "In-app billing warning: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Ltv/emby/iap/ILogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Ltv/emby/iap/billing/Inventory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ltv/emby/iap/billing/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltv/emby/iap/billing/IabException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, p1, p2, v0}, Ltv/emby/iap/billing/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Ltv/emby/iap/billing/Inventory;

    move-result-object p1

    return-object p1
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Ltv/emby/iap/billing/Inventory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ltv/emby/iap/billing/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltv/emby/iap/billing/IabException;
        }
    .end annotation

    .line 543
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    const-string p3, "queryInventory"

    .line 544
    invoke-virtual {p0, p3}, Ltv/emby/iap/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 546
    :try_start_0
    new-instance p3, Ltv/emby/iap/billing/Inventory;

    invoke-direct {p3}, Ltv/emby/iap/billing/Inventory;-><init>()V

    const-string v0, "inapp"

    .line 547
    invoke-virtual {p0, p3, v0}, Ltv/emby/iap/billing/IabHelper;->queryPurchases(Ltv/emby/iap/billing/Inventory;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_1

    const-string v0, "inapp"

    .line 553
    invoke-virtual {p0, v0, p3, p2}, Ltv/emby/iap/billing/IabHelper;->querySkuDetails(Ljava/lang/String;Ltv/emby/iap/billing/Inventory;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    new-instance p1, Ltv/emby/iap/billing/IabException;

    const-string p2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p1, v0, p2}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 560
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v0, :cond_4

    const-string v0, "subs"

    .line 561
    invoke-virtual {p0, p3, v0}, Ltv/emby/iap/billing/IabHelper;->queryPurchases(Ltv/emby/iap/billing/Inventory;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    const-string p1, "subs"

    .line 567
    invoke-virtual {p0, p1, p3, p2}, Ltv/emby/iap/billing/IabHelper;->querySkuDetails(Ljava/lang/String;Ltv/emby/iap/billing/Inventory;Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 569
    :cond_2
    new-instance p2, Ltv/emby/iap/billing/IabException;

    const-string p3, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {p2, p1, p3}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 563
    :cond_3
    new-instance p1, Ltv/emby/iap/billing/IabException;

    const-string p2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {p1, v0, p2}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object p3

    .line 549
    :cond_5
    new-instance p1, Ltv/emby/iap/billing/IabException;

    const-string p2, "Error refreshing inventory (querying owned items)."

    invoke-direct {p1, v0, p2}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 580
    new-instance p2, Ltv/emby/iap/billing/IabException;

    const/16 p3, -0x3ea

    const-string v0, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 577
    new-instance p2, Ltv/emby/iap/billing/IabException;

    const/16 p3, -0x3e9

    const-string v0, "Remote exception while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Ltv/emby/iap/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public queryInventoryAsync(Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 642
    invoke-virtual {p0, v0, v1, p1}, Ltv/emby/iap/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .line 611
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 612
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    const-string v0, "queryInventory"

    .line 613
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "refresh inventory"

    .line 614
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 615
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Ltv/emby/iap/billing/IabHelper$2;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltv/emby/iap/billing/IabHelper$2;-><init>(Ltv/emby/iap/billing/IabHelper;ZLjava/util/List;Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 638
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public queryInventoryAsync(ZLtv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, p1, v0, p2}, Ltv/emby/iap/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ltv/emby/iap/billing/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method queryPurchases(Ltv/emby/iap/billing/Inventory;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 844
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    .line 845
    iget-object v3, p0, Ltv/emby/iap/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 848
    invoke-virtual {p0, v1}, Ltv/emby/iap/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Owned items response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 851
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPurchases() failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ltv/emby/iap/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    .line 854
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 855
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "INAPP_DATA_SIGNATURE_LIST"

    .line 856
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    .line 861
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    .line 863
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    .line 865
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move v6, v2

    const/4 v2, 0x0

    .line 868
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 869
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 870
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 871
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 872
    iget-object v10, p0, Ltv/emby/iap/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v10, v7, v8}, Ltv/emby/iap/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 873
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 874
    new-instance v9, Ltv/emby/iap/billing/Purchase;

    invoke-direct {v9, p2, v7, v8}, Ltv/emby/iap/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {v9}, Ltv/emby/iap/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "BUG: empty/null token!"

    .line 877
    invoke-virtual {p0, v8}, Ltv/emby/iap/billing/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 878
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    .line 882
    :cond_2
    invoke-virtual {p1, v9}, Ltv/emby/iap/billing/Inventory;->addPurchase(Ltv/emby/iap/billing/Purchase;)V

    goto :goto_2

    :cond_3
    const-string v6, "Purchase signature verification **FAILED**. Not adding item."

    .line 885
    invoke-virtual {p0, v6}, Ltv/emby/iap/billing/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   Purchase data: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    .line 887
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   Signature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    .line 892
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuation token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    .line 894
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v6, :cond_5

    const/16 v0, -0x3eb

    :cond_5
    return v0

    :cond_6
    move v2, v6

    goto/16 :goto_0

    :cond_7
    :goto_3
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 857
    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1
.end method

.method querySkuDetails(Ljava/lang/String;Ltv/emby/iap/billing/Inventory;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/emby/iap/billing/Inventory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Querying SKU details."

    .line 901
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 903
    invoke-virtual {p2, p1}, Ltv/emby/iap/billing/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_1

    .line 905
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 906
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 907
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 912
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_2

    const-string p1, "queryPrices: nothing to do because there are no SKUs."

    .line 913
    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    :cond_2
    const/16 p3, -0x3ea

    .line 918
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    .line 919
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 920
    iget-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DETAILS_LIST"

    .line 923
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 924
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 926
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSkuDetails() failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ltv/emby/iap/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    return p1

    :cond_3
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 929
    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logError(Ljava/lang/String;)V

    return p3

    :cond_4
    const-string v2, "DETAILS_LIST"

    .line 933
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 937
    new-instance v3, Ltv/emby/iap/billing/SkuDetails;

    invoke-direct {v3, p1, v2}, Ltv/emby/iap/billing/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltv/emby/iap/billing/IabHelper;->logDebugIfEnabled(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2, v3}, Ltv/emby/iap/billing/Inventory;->addSkuDetails(Ltv/emby/iap/billing/SkuDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    return v1

    :catch_0
    move-exception p1

    .line 943
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    return p3
.end method

.method public startSetup(Ltv/emby/iap/billing/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3

    .line 208
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    .line 209
    iget-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_2

    const-string v0, "Starting in-app billing setup."

    .line 212
    invoke-virtual {p0, v0}, Ltv/emby/iap/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ltv/emby/iap/billing/IabHelper$1;

    invoke-direct {v0, p0, p1}, Ltv/emby/iap/billing/IabHelper$1;-><init>(Ltv/emby/iap/billing/IabHelper;Ltv/emby/iap/billing/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Ltv/emby/iap/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object p1, p0, Ltv/emby/iap/billing/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 277
    new-instance v0, Ltv/emby/iap/billing/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ltv/emby/iap/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Ltv/emby/iap/billing/IabResult;)V

    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .line 310
    invoke-direct {p0}, Ltv/emby/iap/billing/IabHelper;->checkNotDisposed()V

    .line 311
    iget-boolean v0, p0, Ltv/emby/iap/billing/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
