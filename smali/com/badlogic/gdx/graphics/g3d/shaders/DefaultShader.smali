.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;,
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;,
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    }
.end annotation


# static fields
.field public static defaultCullFace:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static defaultDepthFunc:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static v0:Ljava/lang/String;

.field public static w0:Ljava/lang/String;

.field public static x0:J

.field public static final y0:J

.field public static final z0:Lcom/badlogic/gdx/graphics/g3d/Attributes;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:I

.field public b0:I

.field public c0:I

.field public d0:I

.field public e0:I

.field public f0:I

.field public final g0:Z

.field public final h0:Z

.field public final i0:Z

.field public final j0:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

.field public final k0:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

.field public final l0:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

.field public final m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

.field public n0:Lcom/badlogic/gdx/graphics/g3d/Renderable;

.field public final o0:J

.field public final p0:J

.field public final q0:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

.field public final r0:Lcom/badlogic/gdx/math/Matrix3;

.field public s0:F

.field public t0:Z

.field public final u0:Lcom/badlogic/gdx/math/Vector3;

.field public final u_alphaTest:I

.field public final u_ambientTexture:I

.field public final u_ambientUVTransform:I

.field public final u_bones:I

.field public final u_cameraDirection:I

.field public final u_cameraNearFar:I

.field public final u_cameraPosition:I

.field public final u_cameraUp:I

.field public final u_diffuseColor:I

.field public final u_diffuseTexture:I

.field public final u_diffuseUVTransform:I

.field public final u_emissiveColor:I

.field public final u_emissiveTexture:I

.field public final u_emissiveUVTransform:I

.field public final u_normalMatrix:I

.field public final u_normalTexture:I

.field public final u_normalUVTransform:I

.field public final u_opacity:I

.field public final u_projTrans:I

.field public final u_projViewTrans:I

.field public final u_projViewWorldTrans:I

.field public final u_reflectionColor:I

.field public final u_reflectionTexture:I

.field public final u_reflectionUVTransform:I

.field public final u_shininess:I

.field public final u_specularColor:I

.field public final u_specularTexture:I

.field public final u_specularUVTransform:I

.field public final u_time:I

.field public final u_viewTrans:I

.field public final u_viewWorldTrans:I

.field public final u_worldTrans:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->x0:J

    const/16 v0, 0x405

    sput v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    const/16 v0, 0x203

    sput v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->y0:J

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->z0:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 6

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_dirLights[0].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->x:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_dirLights[0].direction"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->y:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_dirLights[1].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->z:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[0].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->A:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[0].position"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->B:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[0].intensity"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->C:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[1].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->D:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->E:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].position"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->F:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].intensity"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->G:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].direction"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->H:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].cutoffAngle"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->I:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[0].exponent"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->J:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_spotLights[1].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->K:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_fogColor"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->L:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_shadowMapProjViewTrans"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->M:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_shadowTexture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->N:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_shadowPCFOffset"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->O:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->j0:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->r0:Lcom/badlogic/gdx/math/Matrix3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u0:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->f(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->q0:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->g0:Z

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->h0:Z

    if-eqz p3, :cond_3

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->i0:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->n0:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v0

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->y0:J

    or-long/2addr v0, v3

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->o0:J

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMaskWithSizePacked()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->p0:J

    if-eqz p3, :cond_4

    iget p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    if-lez p3, :cond_4

    goto :goto_4

    :cond_4
    const/4 p3, 0x0

    :goto_4
    new-array p3, p3, [Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->k0:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    const/4 p3, 0x0

    :goto_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->k0:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v1, v0

    if-ge p3, v1, :cond_5

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;-><init>()V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_5
    iget-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->g0:Z

    if-eqz p3, :cond_6

    iget p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    if-lez p3, :cond_6

    goto :goto_6

    :cond_6
    const/4 p3, 0x0

    :goto_6
    new-array p3, p3, [Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->l0:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    const/4 p3, 0x0

    :goto_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->l0:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v1, v0

    if-ge p3, v1, :cond_7

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;-><init>()V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_7
    iget-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->g0:Z

    if-eqz p3, :cond_8

    iget p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numSpotLights:I

    if-lez p3, :cond_8

    goto :goto_8

    :cond_8
    const/4 p3, 0x0

    :goto_8
    new-array p3, p3, [Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    :goto_9
    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    array-length v0, p3

    if-ge v2, v0, :cond_9

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;-><init>()V

    aput-object v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    iget-boolean p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    if-nez p3, :cond_b

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->x0:J

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->o0:J

    and-long/2addr v0, v2

    cmp-long p3, v0, v2

    if-nez p3, :cond_a

    goto :goto_a

    :cond_a
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Some attributes not implemented yet ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->o0:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_a
    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p3, :cond_d

    array-length p3, p3

    iget v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-gt p3, v0, :cond_c

    goto :goto_b

    :cond_c
    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "too many bones: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max configured: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_d
    :goto_b
    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_viewTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projViewTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraPosition:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraDirection:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraUp:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraNearFar:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraNearFar:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraNearFar:I

    new-instance p3, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v0, "u_time"

    invoke-direct {p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_worldTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_viewWorldTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projViewWorldTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalMatrix:I

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/4 p3, -0x1

    if-eqz p1, :cond_e

    iget p1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-lez p1, :cond_e

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->bones:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    goto :goto_c

    :cond_e
    const/4 p1, -0x1

    :goto_c
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_bones:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shininess:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->opacity:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_opacity:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseColor:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularColor:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveColor:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionColor:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->alphaTest:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_alphaTest:I

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->g0:Z

    if-eqz p1, :cond_f

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientCube:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    iget p2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    invoke-direct {v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    goto :goto_d

    :cond_f
    const/4 p1, -0x1

    :goto_d
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->v:I

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->h0:Z

    if-eqz p1, :cond_10

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    :cond_10
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->w:I

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->getDefaultVertexShader()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->getDefaultFragmentShader()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p4, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public static final b(JJ)Z
    .locals 1

    and-long/2addr p0, p2

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;
    .locals 10

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->f(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->b(JJ)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#define positionFlag\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-wide/16 v7, 0x6

    invoke-static {v3, v4, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->g(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#define colorFlag\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-wide/16 v7, 0x100

    invoke-static {v3, v4, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->b(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#define binormalFlag\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-wide/16 v7, 0x80

    invoke-static {v3, v4, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->b(JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#define tangentFlag\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    const-wide/16 v7, 0x8

    invoke-static {v3, v4, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->b(JJ)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#define normalFlag\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    invoke-static {v3, v4, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->b(JJ)Z

    move-result v5

    const-string v7, "\n"

    if-nez v5, :cond_5

    const-wide/16 v8, 0x180

    invoke-static {v3, v4, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->b(JJ)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#define lightingFlag\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define ambientCubemapFlag\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define numDirectionalLights "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define numPointLights "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define numSpotLights "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numSpotLights:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define fogFlag\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define shadowMapFlag\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    move-object v6, v3

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define environmentCubemapFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_b

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v4

    iget v5, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v8, 0x40

    const-string v9, "Flag\n"

    if-ne v5, v8, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#define boneWeight"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v6, v4

    goto :goto_2

    :cond_9
    const/16 v8, 0x10

    if-ne v5, v8, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#define texCoord"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define blendedFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_c
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define diffuseTextureFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define diffuseTextureCoord texCoord0\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_d
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define specularTextureFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define specularTextureCoord texCoord0\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_e
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define normalTextureFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define normalTextureCoord texCoord0\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_f
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define emissiveTextureFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define emissiveTextureCoord texCoord0\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_10
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define reflectionTextureFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define reflectionTextureCoord texCoord0\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_11
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define ambientTextureFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define ambientTextureCoord texCoord0\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_12
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define diffuseColorFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_13
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define specularColorFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_14
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define emissiveColorFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_15
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define reflectionColorFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_16
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    and-long v8, v1, v3

    cmp-long v0, v8, v3

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#define shininessFlag\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_17
    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    and-long/2addr v1, v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define alphaTestFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_18
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p0, :cond_19

    iget p0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-lez p0, :cond_19

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define numBones "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_19
    return-object v6
.end method

.method public static final e(Lcom/badlogic/gdx/graphics/g3d/Renderable;)J
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v3

    or-long/2addr v1, v3

    :cond_0
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v3

    or-long/2addr v1, v3

    :cond_1
    return-wide v1
.end method

.method public static final f(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->z0:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->clear()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    :cond_0
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    :cond_1
    return-object v0
.end method

.method public static final g(JJ)Z
    .locals 1

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDefaultFragmentShader()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->w0:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/default.fragment.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->w0:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->w0:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultVertexShader()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->v0:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/default.vertex.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->v0:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->v0:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->k0:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->l0:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(FFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    invoke-virtual/range {v5 .. v17}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->set(FFFFFFFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iput-boolean v3, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->t0:Z

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->has(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->s0:F

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->s0:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(IF)Z

    :cond_3
    return-void
.end method

.method public c(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 13

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {p2, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    :goto_0
    const-class v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p2, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    :goto_1
    const-class v3, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->Type:J

    invoke-virtual {p2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v3, Lcom/badlogic/gdx/graphics/g3d/attributes/SpotLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    :goto_2
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->P:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ltz v3, :cond_8

    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->k0:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v8, v7

    if-ge v3, v8, :cond_8

    if-eqz v0, :cond_5

    iget v8, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v3, v8, :cond_3

    goto :goto_4

    :cond_3
    iget-boolean v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->t0:Z

    if-eqz v8, :cond_4

    aget-object v7, v7, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_6

    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->k0:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v7, v7, v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    goto :goto_5

    :cond_5
    :goto_4
    iget-boolean v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->t0:Z

    if-eqz v8, :cond_6

    aget-object v8, v7, v3

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v9, v9, v6

    if-nez v9, :cond_6

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v9, v9, v6

    if-nez v9, :cond_6

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_6

    goto :goto_6

    :cond_6
    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v6, v6, v6, v4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    :goto_5
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->P:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->S:I

    mul-int v8, v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Q:I

    add-int/2addr v9, v7

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->k0:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v12, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v8, v9, v11, v12, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->R:I

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->k0:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v8, v7, v10, v11, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->S:I

    if-gtz v7, :cond_7

    goto :goto_7

    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_8
    :goto_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->T:I

    if-ltz v0, :cond_f

    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->l0:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v7, v3

    if-ge v0, v7, :cond_f

    if-eqz v2, :cond_b

    iget v7, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v0, v7, :cond_9

    goto :goto_9

    :cond_9
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->t0:Z

    if-eqz v7, :cond_a

    aget-object v3, v3, v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_b

    :cond_a
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->l0:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v3, v3, v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    goto :goto_a

    :cond_b
    :goto_9
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->t0:Z

    if-eqz v7, :cond_c

    aget-object v7, v3, v0

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    cmpl-float v7, v7, v6

    if-nez v7, :cond_c

    goto :goto_b

    :cond_c
    aget-object v3, v3, v0

    iput v6, v3, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    :goto_a
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->T:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->X:I

    mul-int v7, v7, v0

    add-int/2addr v3, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->U:I

    add-int/2addr v8, v3

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->l0:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v9, v9, v0

    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float v11, v11, v9

    iget v12, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v12, v12, v9

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v10, v10, v9

    invoke-virtual {v7, v8, v11, v12, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->V:I

    add-int/2addr v8, v3

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->l0:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v9, v9, v0

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v7, v8, v10, v11, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->W:I

    if-ltz v7, :cond_d

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    add-int/2addr v3, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->l0:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    invoke-virtual {v8, v3, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    :cond_d
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->X:I

    if-gtz v3, :cond_e

    goto :goto_c

    :cond_e
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_f
    :goto_c
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    if-ltz v0, :cond_16

    :goto_d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    array-length v2, v0

    if-ge v5, v2, :cond_16

    if-eqz v1, :cond_12

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v5, v2, :cond_10

    goto :goto_e

    :cond_10
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->t0:Z

    if-eqz v2, :cond_11

    aget-object v0, v0, v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_10

    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v0, v0, v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    goto :goto_f

    :cond_12
    :goto_e
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->t0:Z

    if-eqz v2, :cond_13

    aget-object v2, v0, v5

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_13

    goto :goto_10

    :cond_13
    aget-object v0, v0, v5

    iput v6, v0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    :goto_f
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->f0:I

    mul-int v2, v2, v5

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Z:I

    add-int/2addr v3, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v7, v7, v5

    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    mul-float v9, v9, v7

    iget v10, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v10, v10, v7

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v8, v8, v7

    invoke-virtual {v2, v3, v9, v10, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->a0:I

    add-int/2addr v3, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(ILcom/badlogic/gdx/math/Vector3;)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->b0:I

    add-int/2addr v3, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(ILcom/badlogic/gdx/math/Vector3;)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->d0:I

    add-int/2addr v3, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->e0:I

    add-int/2addr v3, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->exponent:F

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->c0:I

    if-ltz v2, :cond_14

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->m0:[Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    :cond_14
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->f0:I

    if-gtz v0, :cond_15

    goto :goto_11

    :cond_15
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d

    :cond_16
    :goto_11
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->L:I

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v2, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(ILcom/badlogic/gdx/graphics/Color;)Z

    :cond_17
    if-eqz p1, :cond_18

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz p2, :cond_18

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->M:I

    invoke-interface {p2}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getProjViewTrans()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(ILcom/badlogic/gdx/math/Matrix4;)Z

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->N:I

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getDepthMap()Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(ILcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)Z

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->O:I

    const/high16 v0, 0x40000000    # 2.0f

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getDepthMap()Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-result-object p1

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/GLTexture;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    div-float/2addr v4, p1

    invoke-virtual {p0, p2, v4}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(IF)Z

    :cond_18
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->t0:Z

    return-void
.end method

.method public canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .locals 8

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->q0:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->e(Lcom/badlogic/gdx/graphics/g3d/Renderable;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->o0:J

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->y0:J

    or-long/2addr v2, v6

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->p0:J

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMaskWithSizePacked()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->g0:Z

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Shader;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 14

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->q0:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    :cond_0
    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    if-ne v0, v2, :cond_1

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    :cond_1
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v7, v6, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    invoke-static {v7, v8}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->is(J)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget v8, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    iget v9, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_opacity:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    invoke-virtual {p0, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(IF)Z

    goto :goto_0

    :cond_2
    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    and-long v11, v7, v9

    cmp-long v13, v11, v9

    if-nez v13, :cond_3

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    iget v1, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    goto :goto_0

    :cond_3
    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    and-long v11, v7, v9

    cmp-long v13, v11, v9

    if-nez v13, :cond_4

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_alphaTest:I

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    invoke-virtual {p0, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(IF)Z

    goto :goto_0

    :cond_4
    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    and-long/2addr v7, v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_5

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    iget v0, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthFunc:I

    iget v2, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeNear:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeFar:F

    iget-boolean v5, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthMask:Z

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->q0:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget-boolean v7, v7, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    if-eqz v7, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown material attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setCullFace(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {p1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthTest(IFF)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthMask(Z)V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->dispose()V

    return-void
.end method

.method public end()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->end()V

    return-void
.end method

.method public equals(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->equals(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDefaultCullFace()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->q0:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    :cond_0
    return v0
.end method

.method public getDefaultDepthFunc()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->q0:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    :cond_0
    return v0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->n0:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->init(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->n0:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->x:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->P:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->x:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->P:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Q:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->y:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->P:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->R:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->z:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->P:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->S:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->S:I

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->A:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->T:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->A:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->T:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->U:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->B:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->T:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->V:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->C:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->has(I)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->C:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->T:I

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->W:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->D:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->T:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->X:I

    if-gez v0, :cond_2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->X:I

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->E:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->E:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Z:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->F:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->a0:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->H:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->b0:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->G:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->G:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    sub-int v2, v0, v2

    :cond_3
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->c0:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->I:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->d0:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->J:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->e0:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->K:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->Y:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->f0:I

    if-gez v0, :cond_4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->f0:I

    :cond_4
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 4

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    const/4 v1, 0x0

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->d(Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->g0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->c(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    return-void
.end method

.method public setDefaultCullFace(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->q0:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    return-void
.end method

.method public setDefaultDepthFunc(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->q0:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    return-void
.end method
