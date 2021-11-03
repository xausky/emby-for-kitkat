.class public Lmediabrowser/model/dlna/SubtitleProfile;
.super Ljava/lang/Object;
.source "SubtitleProfile.java"


# instance fields
.field private DidlMode:Ljava/lang/String;

.field private Format:Ljava/lang/String;

.field private Language:Ljava/lang/String;

.field private Method:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->values()[Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/SubtitleProfile;->Method:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-void
.end method


# virtual methods
.method public final GetLanguages()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {p0}, Lmediabrowser/model/dlna/SubtitleProfile;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/SubtitleProfile;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "[,]"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 60
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final SupportsLanguage(Ljava/lang/String;)Z
    .locals 3

    .line 70
    invoke-virtual {p0}, Lmediabrowser/model/dlna/SubtitleProfile;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 75
    :cond_0
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "und"

    .line 80
    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/dlna/SubtitleProfile;->GetLanguages()Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, p1}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getDidlMode()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lmediabrowser/model/dlna/SubtitleProfile;->DidlMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lmediabrowser/model/dlna/SubtitleProfile;->Format:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/dlna/SubtitleProfile;->Language:Ljava/lang/String;

    return-object v0
.end method

.method public final getMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;
    .locals 1

    .line 24
    iget-object v0, p0, Lmediabrowser/model/dlna/SubtitleProfile;->Method:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-object v0
.end method

.method public final setDidlMode(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lmediabrowser/model/dlna/SubtitleProfile;->DidlMode:Ljava/lang/String;

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lmediabrowser/model/dlna/SubtitleProfile;->Format:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/dlna/SubtitleProfile;->Language:Ljava/lang/String;

    return-void
.end method

.method public final setMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lmediabrowser/model/dlna/SubtitleProfile;->Method:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-void
.end method
