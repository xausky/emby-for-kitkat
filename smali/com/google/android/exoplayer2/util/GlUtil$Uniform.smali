.class public final Lcom/google/android/exoplayer2/util/GlUtil$Uniform;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uniform"
.end annotation


# instance fields
.field private final location:I

.field public final name:Ljava/lang/String;

.field private texId:I

.field private final type:I

.field private unit:I

.field private final value:[F


# direct methods
.method public constructor <init>(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v12, p1

    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x1

    .line 132
    new-array v1, v13, [I

    const/4 v14, 0x0

    const v2, 0x8b87

    .line 133
    invoke-static {v12, v2, v1, v14}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 135
    new-array v15, v13, [I

    .line 136
    new-array v6, v13, [I

    .line 137
    aget v2, v1, v14

    new-array v11, v2, [B

    .line 138
    new-array v4, v13, [I

    .line 140
    aget v3, v1, v14

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v8, v15

    move-object v10, v11

    move-object/from16 v17, v11

    move/from16 v11, v16

    invoke-static/range {v1 .. v11}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 141
    new-instance v1, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000([B)I

    move-result v2

    move-object/from16 v3, v17

    invoke-direct {v1, v3, v14, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->name:Ljava/lang/String;

    .line 142
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->name:Ljava/lang/String;

    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    .line 143
    aget v1, v15, v14

    iput v1, v0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    .line 145
    new-array v1, v13, [F

    iput-object v1, v0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 4

    .line 171
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const/16 v1, 0x1406

    if-ne v0, v1, :cond_0

    .line 172
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 173
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    .line 177
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    if-eqz v0, :cond_3

    const v0, 0x84c0

    .line 180
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->unit:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 181
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const v1, 0x8d66

    const/16 v2, 0xde1

    if-ne v0, v1, :cond_1

    const v0, 0x8d65

    .line 182
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 183
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const v1, 0x8b5e    # 4.9996E-41f

    if-ne v0, v1, :cond_2

    .line 184
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 188
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->unit:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v0, 0x2800

    const/16 v1, 0x2601

    .line 189
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 190
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v1, 0x812f

    .line 191
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 193
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 195
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    .line 186
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected uniform type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call setSamplerTexId before bind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloat(F)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setSamplerTexId(II)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    .line 156
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->unit:I

    return-void
.end method
