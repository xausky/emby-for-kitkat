.class public Ltv/emby/embyatv/api/SubtitleStreamInfo;
.super Ljava/lang/Object;
.source "SubtitleStreamInfo.java"


# instance fields
.field private DeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

.field private DisplayTitle:Ljava/lang/String;

.field private Format:Ljava/lang/String;

.field private Index:I

.field private IsExternalUrl:Z

.field private IsForced:Z

.field private Language:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->values()[Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->DeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-void
.end method


# virtual methods
.method public final getDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;
    .locals 1

    .line 77
    iget-object v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->DeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-object v0
.end method

.method public final getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->DisplayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Format:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 68
    iget v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Index:I

    return v0
.end method

.method public final getIsExternalUrl()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->IsExternalUrl:Z

    return v0
.end method

.method public final getIsForced()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->IsForced:Z

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Language:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public final setDeliveryMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V
    .locals 0

    .line 81
    iput-object p1, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->DeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-void
.end method

.method public final setDisplayTitle(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->DisplayTitle:Ljava/lang/String;

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Format:Ljava/lang/String;

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 72
    iput p1, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Index:I

    return-void
.end method

.method public final setIsExternalUrl(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->IsExternalUrl:Z

    return-void
.end method

.method public final setIsForced(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->IsForced:Z

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Language:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Ltv/emby/embyatv/api/SubtitleStreamInfo;->Url:Ljava/lang/String;

    return-void
.end method
