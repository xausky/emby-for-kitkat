.class Ltv/emby/embyatv/validation/AppValidator$3;
.super Lmediabrowser/apiinteraction/Response;
.source "AppValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/AppValidator;->validateDevice(ZLmediabrowser/apiinteraction/EmptyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/validation/AppValidator;

.field final synthetic val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

.field final synthetic val$immediateCheckRequired:Z

.field final synthetic val$viewOnly:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/AppValidator;ZZLmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 185
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$3;->this$0:Ltv/emby/embyatv/validation/AppValidator;

    iput-boolean p2, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$viewOnly:Z

    iput-boolean p3, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$immediateCheckRequired:Z

    iput-object p4, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 5

    .line 198
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Error validating device"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 199
    invoke-static {v2}, Ltv/emby/embyatv/validation/AppValidator;->access$102(Z)Z

    .line 200
    instance-of v0, p1, Lmediabrowser/model/net/HttpException;

    if-eqz v0, :cond_1

    .line 201
    move-object v0, p1

    check-cast v0, Lmediabrowser/model/net/HttpException;

    .line 202
    invoke-virtual {v0}, Lmediabrowser/model/net/HttpException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmediabrowser/model/net/HttpException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 208
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ltv/emby/embyatv/TvApp;->setLastDeviceValidation(ZJ)V

    .line 209
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setDeviceValidationCacheDays(I)V

    .line 215
    :goto_1
    iget-boolean v0, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$immediateCheckRequired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 185
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/AppValidator$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5

    .line 188
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** Good response from device validation request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v0

    const-class v1, Ltv/emby/embyatv/validation/DeviceValidationResponse;

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/validation/DeviceValidationResponse;

    .line 190
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {p1}, Ltv/emby/embyatv/validation/DeviceValidationResponse;->getCacheExpirationDays()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setDeviceValidationCacheDays(I)V

    .line 191
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iget-boolean v0, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$viewOnly:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Ltv/emby/embyatv/TvApp;->setLastDeviceValidation(ZJ)V

    .line 192
    invoke-static {v2}, Ltv/emby/embyatv/validation/AppValidator;->access$102(Z)Z

    .line 193
    iget-boolean p1, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$immediateCheckRequired:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$3;->val$callback:Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method
