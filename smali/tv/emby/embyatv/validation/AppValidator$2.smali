.class Ltv/emby/embyatv/validation/AppValidator$2;
.super Lmediabrowser/apiinteraction/Response;
.source "AppValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/validation/AppValidator;->getRegistrationInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
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

.field final synthetic val$callback:Lmediabrowser/apiinteraction/Response;

.field final synthetic val$serializer:Lmediabrowser/model/serialization/IJsonSerializer;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/validation/AppValidator;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 121
    iput-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$2;->this$0:Ltv/emby/embyatv/validation/AppValidator;

    iput-object p2, p0, Ltv/emby/embyatv/validation/AppValidator$2;->val$serializer:Lmediabrowser/model/serialization/IJsonSerializer;

    iput-object p3, p0, Ltv/emby/embyatv/validation/AppValidator$2;->val$callback:Lmediabrowser/apiinteraction/Response;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 7

    .line 139
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Error validating app with admin server"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastAppValidation()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x240c8400

    sub-long/2addr v3, v5

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 141
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Allowing app from previous validation within 7 days"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppRegRecord"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lmediabrowser/model/registration/RegistrationInfo;

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/registration/RegistrationInfo;

    .line 143
    iget-object v0, p0, Ltv/emby/embyatv/validation/AppValidator$2;->val$callback:Lmediabrowser/apiinteraction/Response;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/validation/AppValidator$2;->val$callback:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/validation/AppValidator$2;->val$callback:Lmediabrowser/apiinteraction/Response;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/validation/AppValidator$2;->val$callback:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/validation/AppValidator$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    .line 124
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** Good response from app validation request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    new-instance v0, Lmediabrowser/model/registration/RegistrationInfo;

    invoke-direct {v0}, Lmediabrowser/model/registration/RegistrationInfo;-><init>()V

    .line 126
    iget-object v1, p0, Ltv/emby/embyatv/validation/AppValidator$2;->val$serializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Ltv/emby/embyatv/api/AdminValidateResponse;

    invoke-interface {v1, p1, v3}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/api/AdminValidateResponse;

    .line 127
    iget-object v1, p1, Ltv/emby/embyatv/api/AdminValidateResponse;->expDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lmediabrowser/model/registration/RegistrationInfo;->setExpirationDate(Ljava/util/Date;)V

    .line 128
    iget-object v1, p1, Ltv/emby/embyatv/api/AdminValidateResponse;->registered:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/registration/RegistrationInfo;->setIsRegistered(Z)V

    .line 129
    iget-object p1, p1, Ltv/emby/embyatv/api/AdminValidateResponse;->registered:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lmediabrowser/model/registration/RegistrationInfo;->getExpirationDate()Ljava/util/Date;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Lmediabrowser/model/registration/RegistrationInfo;->setIsTrial(Z)V

    .line 130
    invoke-virtual {v0}, Lmediabrowser/model/registration/RegistrationInfo;->getIsRegistered()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lmediabrowser/model/registration/RegistrationInfo;->getIsTrial()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ltv/emby/embyatv/TvApp;->setLastAppValidation(J)V

    .line 132
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "AppRegRecord"

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$2;->val$callback:Lmediabrowser/apiinteraction/Response;

    if-eqz p1, :cond_3

    iget-object p1, p0, Ltv/emby/embyatv/validation/AppValidator$2;->val$callback:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
