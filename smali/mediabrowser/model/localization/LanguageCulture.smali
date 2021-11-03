.class public Lmediabrowser/model/localization/LanguageCulture;
.super Ljava/lang/Object;
.source "LanguageCulture.java"


# instance fields
.field private DisplayName:Ljava/lang/String;

.field private ThreeLetterISOLanguageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/localization/LanguageCulture;->DisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreeLetterISOLanguageName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/localization/LanguageCulture;->ThreeLetterISOLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/localization/LanguageCulture;->DisplayName:Ljava/lang/String;

    return-void
.end method

.method public setThreeLetterISOLanguageName(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/localization/LanguageCulture;->ThreeLetterISOLanguageName:Ljava/lang/String;

    return-void
.end method
