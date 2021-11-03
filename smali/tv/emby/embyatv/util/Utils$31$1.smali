.class Ltv/emby/embyatv/util/Utils$31$1;
.super Lmediabrowser/apiinteraction/Response;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils$31;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "[",
        "Lmediabrowser/model/dto/UserDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/util/Utils$31;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/Utils$31;)V
    .locals 0

    .line 2118
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$31$1;->this$0:Ltv/emby/embyatv/util/Utils$31;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 2126
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to retrieve public users"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2118
    check-cast p1, [Lmediabrowser/model/dto/UserDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/util/Utils$31$1;->onResponse([Lmediabrowser/model/dto/UserDto;)V

    return-void
.end method

.method public onResponse([Lmediabrowser/model/dto/UserDto;)V
    .locals 1

    .line 2121
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/TvApp;->setOtherUsers([Lmediabrowser/model/dto/UserDto;)V

    return-void
.end method
