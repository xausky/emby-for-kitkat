.class public Lmediabrowser/model/dlna/ConditionProcessor;
.super Ljava/lang/Object;
.source "ConditionProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Boolean;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 152
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getIsRequired()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 156
    :cond_0
    new-instance v1, Ltangible/RefObject;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Ltangible/RefObject;-><init>(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lmediabrowser/model/extensions/BoolHelper;->TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z

    move-result v3

    .line 158
    iget-object v1, v1, Ltangible/RefObject;->argValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v3, :cond_5

    .line 161
    sget-object v3, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getCondition()Lmediabrowser/model/dlna/ProfileConditionType;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v0, :cond_3

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 166
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 168
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected ProfileConditionType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_5
    return v2
.end method

.method private IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Double;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 212
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getIsRequired()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_0
    const-wide/16 v1, 0x0

    .line 216
    new-instance v3, Ltangible/RefObject;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v3, v1}, Ltangible/RefObject;-><init>(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lmediabrowser/model/extensions/DoubleHelper;->TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z

    move-result v1

    .line 218
    iget-object v2, v3, Ltangible/RefObject;->argValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 221
    sget-object v1, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getCondition()Lmediabrowser/model/dlna/ProfileConditionType;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    .line 232
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected ProfileConditionType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 228
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 226
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    cmpl-double p1, p1, v2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 224
    :pswitch_3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Float;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 180
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getIsRequired()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 184
    new-instance v2, Ltangible/RefObject;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v1}, Ltangible/RefObject;-><init>(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lmediabrowser/model/extensions/FloatHelper;->TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z

    move-result v1

    .line 186
    iget-object v2, v2, Ltangible/RefObject;->argValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 189
    sget-object v1, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getCondition()Lmediabrowser/model/dlna/ProfileConditionType;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    .line 200
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected ProfileConditionType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 196
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 194
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 192
    :pswitch_3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 95
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getIsRequired()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 99
    :cond_0
    new-instance v1, Ltangible/RefObject;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Ltangible/RefObject;-><init>(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lmediabrowser/model/extensions/IntHelper;->TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z

    move-result v3

    .line 101
    iget-object v1, v1, Ltangible/RefObject;->argValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v3, :cond_3

    .line 104
    sget-object v3, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getCondition()Lmediabrowser/model/dlna/ProfileConditionType;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    .line 115
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected ProfileConditionType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 111
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 109
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 107
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/String;)Z
    .locals 3

    .line 124
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getIsRequired()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 132
    sget-object v2, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getCondition()Lmediabrowser/model/dlna/ProfileConditionType;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 143
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected ProfileConditionType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string p1, "[|]"

    const/4 v1, -0x1

    .line 136
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 141
    :pswitch_1
    invoke-static {p2, v0}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 139
    :cond_1
    invoke-static {p2, v0}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Lmediabrowser/model/mediainfo/TransportStreamTimestamp;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 244
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getIsRequired()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 249
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->valueOf(Ljava/lang/String;)Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    move-result-object v1

    .line 251
    sget-object v2, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getCondition()Lmediabrowser/model/dlna/ProfileConditionType;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 258
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected ProfileConditionType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-ne p2, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public final IsAudioConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 2

    .line 62
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getProperty()Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected condition on audio file: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getProperty()Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 67
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result p1

    return p1

    .line 65
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final IsImageConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 2

    .line 49
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getProperty()Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected condition on image file: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getProperty()Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 54
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result p1

    return p1

    .line 52
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final IsVideoAudioConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2

    .line 75
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getProperty()Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected condition on audio file: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getProperty()Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 84
    :pswitch_0
    invoke-direct {p0, p1, p5}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Boolean;)Z

    move-result p1

    return p1

    .line 78
    :pswitch_1
    invoke-direct {p0, p1, p4}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 82
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result p1

    return p1

    .line 80
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final IsVideoConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;Lmediabrowser/model/mediainfo/TransportStreamTimestamp;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    .line 10
    sget-object v2, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    invoke-virtual {p1}, Lmediabrowser/model/dlna/ProfileCondition;->getProperty()Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x1

    return v1

    :pswitch_0
    move-object v2, p10

    .line 41
    invoke-direct {p0, p1, p10}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Lmediabrowser/model/mediainfo/TransportStreamTimestamp;)Z

    move-result v1

    return v1

    :pswitch_1
    move-object/from16 v2, p13

    .line 39
    invoke-direct {p0, p1, v2}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result v1

    return v1

    :pswitch_2
    move-object/from16 v2, p14

    .line 37
    invoke-direct {p0, p1, v2}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result v1

    return v1

    :pswitch_3
    move-object/from16 v2, p12

    .line 35
    invoke-direct {p0, p1, v2}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result v1

    return v1

    .line 33
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result v1

    return v1

    :pswitch_5
    move-object v2, p3

    .line 31
    invoke-direct {p0, p1, p3}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result v1

    return v1

    :pswitch_6
    move-object v2, p5

    .line 29
    invoke-direct {p0, p1, p5}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result v1

    return v1

    :pswitch_7
    move-object v2, p4

    .line 27
    invoke-direct {p0, p1, p4}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result v1

    return v1

    :pswitch_8
    move-object v2, p9

    .line 25
    invoke-direct {p0, p1, p9}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;)Z

    move-result v1

    return v1

    :pswitch_9
    move-object/from16 v2, p15

    .line 23
    invoke-direct {p0, p1, v2}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_a
    move-object v2, p6

    .line 21
    invoke-direct {p0, p1, p6}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_b
    move-object v2, p7

    .line 19
    invoke-direct {p0, p1, p7}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Double;)Z

    move-result v1

    return v1

    :pswitch_c
    move-object v2, p8

    .line 17
    invoke-direct {p0, p1, p8}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Float;)Z

    move-result v1

    return v1

    :pswitch_d
    move-object/from16 v2, p16

    .line 15
    invoke-direct {p0, p1, v2}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Boolean;)Z

    move-result v1

    return v1

    :pswitch_e
    move-object v2, p11

    .line 13
    invoke-direct {p0, p1, p11}, Lmediabrowser/model/dlna/ConditionProcessor;->IsConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Boolean;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
