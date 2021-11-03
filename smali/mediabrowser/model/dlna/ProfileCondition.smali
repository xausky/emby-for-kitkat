.class public Lmediabrowser/model/dlna/ProfileCondition;
.super Ljava/lang/Object;
.source "ProfileCondition.java"


# instance fields
.field private Condition:Lmediabrowser/model/dlna/ProfileConditionType;

.field private IsRequired:Z

.field private Property:Lmediabrowser/model/dlna/ProfileConditionValue;

.field private Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lmediabrowser/model/dlna/ProfileConditionType;->values()[Lmediabrowser/model/dlna/ProfileConditionType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/ProfileCondition;->Condition:Lmediabrowser/model/dlna/ProfileConditionType;

    .line 19
    invoke-static {}, Lmediabrowser/model/dlna/ProfileConditionValue;->values()[Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/ProfileCondition;->Property:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/ProfileCondition;->setIsRequired(Z)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3, v0}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;Z)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lmediabrowser/model/dlna/ProfileConditionType;->values()[Lmediabrowser/model/dlna/ProfileConditionType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/ProfileCondition;->Condition:Lmediabrowser/model/dlna/ProfileConditionType;

    .line 19
    invoke-static {}, Lmediabrowser/model/dlna/ProfileConditionValue;->values()[Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/ProfileCondition;->Property:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 66
    invoke-virtual {p0, p1}, Lmediabrowser/model/dlna/ProfileCondition;->setCondition(Lmediabrowser/model/dlna/ProfileConditionType;)V

    .line 67
    invoke-virtual {p0, p2}, Lmediabrowser/model/dlna/ProfileCondition;->setProperty(Lmediabrowser/model/dlna/ProfileConditionValue;)V

    .line 68
    invoke-virtual {p0, p3}, Lmediabrowser/model/dlna/ProfileCondition;->setValue(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p4}, Lmediabrowser/model/dlna/ProfileCondition;->setIsRequired(Z)V

    return-void
.end method


# virtual methods
.method public final getCondition()Lmediabrowser/model/dlna/ProfileConditionType;
    .locals 1

    .line 10
    iget-object v0, p0, Lmediabrowser/model/dlna/ProfileCondition;->Condition:Lmediabrowser/model/dlna/ProfileConditionType;

    return-object v0
.end method

.method public final getIsRequired()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lmediabrowser/model/dlna/ProfileCondition;->IsRequired:Z

    return v0
.end method

.method public final getProperty()Lmediabrowser/model/dlna/ProfileConditionValue;
    .locals 1

    .line 22
    iget-object v0, p0, Lmediabrowser/model/dlna/ProfileCondition;->Property:Lmediabrowser/model/dlna/ProfileConditionValue;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/dlna/ProfileCondition;->Value:Ljava/lang/String;

    return-object v0
.end method

.method public final setCondition(Lmediabrowser/model/dlna/ProfileConditionType;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lmediabrowser/model/dlna/ProfileCondition;->Condition:Lmediabrowser/model/dlna/ProfileConditionType;

    return-void
.end method

.method public final setIsRequired(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lmediabrowser/model/dlna/ProfileCondition;->IsRequired:Z

    return-void
.end method

.method public final setProperty(Lmediabrowser/model/dlna/ProfileConditionValue;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/dlna/ProfileCondition;->Property:Lmediabrowser/model/dlna/ProfileConditionValue;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/dlna/ProfileCondition;->Value:Ljava/lang/String;

    return-void
.end method
