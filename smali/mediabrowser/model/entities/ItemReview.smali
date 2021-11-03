.class public Lmediabrowser/model/entities/ItemReview;
.super Ljava/lang/Object;
.source "ItemReview.java"


# instance fields
.field private Caption:Ljava/lang/String;

.field private Date:Ljava/util/Date;

.field private Likes:Ljava/lang/Boolean;

.field private Publisher:Ljava/lang/String;

.field private ReviewerName:Ljava/lang/String;

.field private Score:Ljava/lang/Float;

.field private Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/entities/ItemReview;->Date:Ljava/util/Date;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lmediabrowser/model/entities/ItemReview;->Score:Ljava/lang/Float;

    .line 73
    iput-object v0, p0, Lmediabrowser/model/entities/ItemReview;->Likes:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getCaption()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lmediabrowser/model/entities/ItemReview;->Caption:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/util/Date;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/entities/ItemReview;->Date:Ljava/util/Date;

    return-object v0
.end method

.method public final getLikes()Ljava/lang/Boolean;
    .locals 1

    .line 76
    iget-object v0, p0, Lmediabrowser/model/entities/ItemReview;->Likes:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPublisher()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/entities/ItemReview;->Publisher:Ljava/lang/String;

    return-object v0
.end method

.method public final getReviewerName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/entities/ItemReview;->ReviewerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()Ljava/lang/Float;
    .locals 1

    .line 61
    iget-object v0, p0, Lmediabrowser/model/entities/ItemReview;->Score:Ljava/lang/Float;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lmediabrowser/model/entities/ItemReview;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public final setCaption(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lmediabrowser/model/entities/ItemReview;->Caption:Ljava/lang/String;

    return-void
.end method

.method public final setDate(Ljava/util/Date;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/entities/ItemReview;->Date:Ljava/util/Date;

    return-void
.end method

.method public final setLikes(Ljava/lang/Boolean;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lmediabrowser/model/entities/ItemReview;->Likes:Ljava/lang/Boolean;

    return-void
.end method

.method public final setPublisher(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/entities/ItemReview;->Publisher:Ljava/lang/String;

    return-void
.end method

.method public final setReviewerName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/entities/ItemReview;->ReviewerName:Ljava/lang/String;

    return-void
.end method

.method public final setScore(Ljava/lang/Float;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lmediabrowser/model/entities/ItemReview;->Score:Ljava/lang/Float;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lmediabrowser/model/entities/ItemReview;->Url:Ljava/lang/String;

    return-void
.end method
