.class public Lmediabrowser/model/configuration/PathSubstitution;
.super Ljava/lang/Object;
.source "PathSubstitution.java"


# instance fields
.field private From:Ljava/lang/String;

.field private To:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lmediabrowser/model/configuration/PathSubstitution;->From:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lmediabrowser/model/configuration/PathSubstitution;->To:Ljava/lang/String;

    return-object v0
.end method

.method public final setFrom(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lmediabrowser/model/configuration/PathSubstitution;->From:Ljava/lang/String;

    return-void
.end method

.method public final setTo(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lmediabrowser/model/configuration/PathSubstitution;->To:Ljava/lang/String;

    return-void
.end method
