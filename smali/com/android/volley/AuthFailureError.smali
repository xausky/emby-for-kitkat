.class public Lcom/android/volley/AuthFailureError;
.super Lcom/android/volley/VolleyError;
.source "AuthFailureError.java"


# instance fields
.field private mResolutionIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionIntent()Landroid/content/Intent;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-object v0
.end method
