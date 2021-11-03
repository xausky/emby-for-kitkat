.class public Lmediabrowser/model/entities/ParentalRating;
.super Ljava/lang/Object;
.source "ParentalRating.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private Value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/entities/ParentalRating;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 31
    iget v0, p0, Lmediabrowser/model/entities/ParentalRating;->Value:I

    return v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/entities/ParentalRating;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setValue(I)V
    .locals 0

    .line 35
    iput p1, p0, Lmediabrowser/model/entities/ParentalRating;->Value:I

    return-void
.end method
