.class public Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;
.super Ljava/lang/Object;
.source "AndroidCredentialProvider.java"

# interfaces
.implements Lmediabrowser/apiinteraction/ICredentialProvider;


# static fields
.field private static final settingsKey:Ljava/lang/String; = "serverCredentials"


# instance fields
.field private context:Landroid/content/Context;

.field private jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field private logger:Lmediabrowser/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lmediabrowser/model/serialization/IJsonSerializer;Landroid/content/Context;Lmediabrowser/model/logging/ILogger;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    .line 20
    iput-object p2, p0, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->context:Landroid/content/Context;

    .line 21
    iput-object p3, p0, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->logger:Lmediabrowser/model/logging/ILogger;

    return-void
.end method

.method public static Save(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-static {p1}, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 60
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "serverCredentials"

    .line 62
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "AndroidCredentialProvider"

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;
    .locals 3

    .line 32
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "serverCredentials"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v2, Lmediabrowser/model/apiclient/ServerCredentials;

    invoke-interface {v1, v0, v2}, Lmediabrowser/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/apiclient/ServerCredentials;

    return-object v0
.end method

.method public SaveCredentials(Lmediabrowser/model/apiclient/ServerCredentials;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serverCredentials"

    .line 45
    iget-object v2, p0, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    invoke-interface {v2, p1}, Lmediabrowser/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v0, "SharedPreferences.Editor failed to save credentials!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
