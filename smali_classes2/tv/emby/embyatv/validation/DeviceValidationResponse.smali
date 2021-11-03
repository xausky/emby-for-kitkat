.class public Ltv/emby/embyatv/validation/DeviceValidationResponse;
.super Ljava/lang/Object;
.source "DeviceValidationResponse.java"


# instance fields
.field private cacheExpirationDays:Ljava/lang/Integer;

.field private message:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheExpirationDays()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/validation/DeviceValidationResponse;->cacheExpirationDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Ltv/emby/embyatv/validation/DeviceValidationResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Ltv/emby/embyatv/validation/DeviceValidationResponse;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheExpirationDays(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    iput-object p1, p0, Ltv/emby/embyatv/validation/DeviceValidationResponse;->cacheExpirationDays:Ljava/lang/Integer;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Ltv/emby/embyatv/validation/DeviceValidationResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Ltv/emby/embyatv/validation/DeviceValidationResponse;->resultCode:Ljava/lang/String;

    return-void
.end method
