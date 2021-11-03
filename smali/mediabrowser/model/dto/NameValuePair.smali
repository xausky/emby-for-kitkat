.class public Lmediabrowser/model/dto/NameValuePair;
.super Ljava/lang/Object;
.source "NameValuePair.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lmediabrowser/model/dto/NameValuePair;->setName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p2}, Lmediabrowser/model/dto/NameValuePair;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lmediabrowser/model/dto/NameValuePair;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lmediabrowser/model/dto/NameValuePair;->Value:Ljava/lang/String;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lmediabrowser/model/dto/NameValuePair;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lmediabrowser/model/dto/NameValuePair;->Value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lmediabrowser/model/dto/NameValuePair;->Name:Ljava/lang/String;

    return-object v0
.end method
