.class public Lmediabrowser/model/dlna/XmlAttribute;
.super Ljava/lang/Object;
.source "XmlAttribute.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lmediabrowser/model/dlna/XmlAttribute;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lmediabrowser/model/dlna/XmlAttribute;->Value:Ljava/lang/String;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lmediabrowser/model/dlna/XmlAttribute;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/dlna/XmlAttribute;->Value:Ljava/lang/String;

    return-void
.end method
