.class Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeshData"
.end annotation


# instance fields
.field private final drawMode:I

.field private final textureBuffer:Ljava/nio/FloatBuffer;

.field private final vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->getVertexCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    .line 213
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->vertices:[F

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 214
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureCoords:[F

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 215
    iget p1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->mode:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x4

    .line 224
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x6

    .line 220
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x5

    .line 217
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I
    .locals 0

    .line 205
    iget p0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I
    .locals 0

    .line 205
    iget p0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    return p0
.end method
