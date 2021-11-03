.class Ltv/emby/iap/billing/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/billing/IabHelper;->consumeAsyncInternal(Ljava/util/List;Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/billing/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Ltv/emby/iap/billing/IabHelper;Ljava/util/List;Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .line 955
    iput-object p1, p0, Ltv/emby/iap/billing/IabHelper$3;->this$0:Ltv/emby/iap/billing/IabHelper;

    iput-object p2, p0, Ltv/emby/iap/billing/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Ltv/emby/iap/billing/IabHelper$3;->val$singleListener:Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Ltv/emby/iap/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Ltv/emby/iap/billing/IabHelper$3;->val$multiListener:Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 958
    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/billing/Purchase;

    .line 960
    :try_start_0
    iget-object v3, p0, Ltv/emby/iap/billing/IabHelper$3;->this$0:Ltv/emby/iap/billing/IabHelper;

    invoke-virtual {v3, v2}, Ltv/emby/iap/billing/IabHelper;->consume(Ltv/emby/iap/billing/Purchase;)V

    .line 961
    new-instance v3, Ltv/emby/iap/billing/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ltv/emby/iap/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ltv/emby/iap/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltv/emby/iap/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 964
    invoke-virtual {v2}, Ltv/emby/iap/billing/IabException;->getResult()Ltv/emby/iap/billing/IabResult;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 968
    :cond_0
    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper$3;->this$0:Ltv/emby/iap/billing/IabHelper;

    invoke-virtual {v1}, Ltv/emby/iap/billing/IabHelper;->flagEndAsync()V

    .line 969
    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper$3;->this$0:Ltv/emby/iap/billing/IabHelper;

    iget-boolean v1, v1, Ltv/emby/iap/billing/IabHelper;->mDisposed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper$3;->val$singleListener:Ltv/emby/iap/billing/IabHelper$OnConsumeFinishedListener;

    if-eqz v1, :cond_1

    .line 970
    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Ltv/emby/iap/billing/IabHelper$3$1;

    invoke-direct {v2, p0, v0}, Ltv/emby/iap/billing/IabHelper$3$1;-><init>(Ltv/emby/iap/billing/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 976
    :cond_1
    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper$3;->this$0:Ltv/emby/iap/billing/IabHelper;

    iget-boolean v1, v1, Ltv/emby/iap/billing/IabHelper;->mDisposed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper$3;->val$multiListener:Ltv/emby/iap/billing/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v1, :cond_2

    .line 977
    iget-object v1, p0, Ltv/emby/iap/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Ltv/emby/iap/billing/IabHelper$3$2;

    invoke-direct {v2, p0, v0}, Ltv/emby/iap/billing/IabHelper$3$2;-><init>(Ltv/emby/iap/billing/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
