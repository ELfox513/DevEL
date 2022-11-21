.class public Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "SourceFile"


# static fields
.field public static final Ambient:J

.field public static final AmbientAlias:Ljava/lang/String; = "ambientTexture"

.field public static final Bump:J

.field public static final BumpAlias:Ljava/lang/String; = "bumpTexture"

.field public static final Diffuse:J

.field public static final DiffuseAlias:Ljava/lang/String; = "diffuseTexture"

.field public static final Emissive:J

.field public static final EmissiveAlias:Ljava/lang/String; = "emissiveTexture"

.field public static final Normal:J

.field public static final NormalAlias:Ljava/lang/String; = "normalTexture"

.field public static final Reflection:J

.field public static final ReflectionAlias:Ljava/lang/String; = "reflectionTexture"

.field public static final Specular:J

.field public static final SpecularAlias:Ljava/lang/String; = "specularTexture"

.field public static d:J


# instance fields
.field public offsetU:F

.field public offsetV:F

.field public scaleU:F

.field public scaleV:F

.field public final textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public uvIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-string v0, "diffuseTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    const-string v2, "specularTexture"

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    const-string v4, "bumpTexture"

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    const-string v6, "normalTexture"

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    const-string v8, "ambientTexture"

    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    const-string v10, "emissiveTexture"

    invoke-static {v10}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    const-string v12, "reflectionTexture"

    invoke-static {v12}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v12

    sput-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    or-long/2addr v0, v2

    or-long/2addr v0, v4

    or-long/2addr v0, v6

    or-long/2addr v0, v8

    or-long/2addr v0, v10

    or-long/2addr v0, v12

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->d:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->is(J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Invalid type specified"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/Texture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(J)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(J)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->set(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(J)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "TT;>;FFFF)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFFI)V

    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "TT;>;FFFFI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    iput p6, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iput p7, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    iput p8, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;)V
    .locals 9

    iget-wide v1, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iget v7, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    iget v8, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFFI)V

    return-void
.end method

.method public static createAmbient(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createAmbient(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createBump(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createBump(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createDiffuse(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createDiffuse(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createEmissive(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createEmissive(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createNormal(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createNormal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createReflection(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createReflection(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createSpecular(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createSpecular(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static final is(J)Z
    .locals 3

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->d:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I
    .locals 7

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    const/4 v4, -0x1

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->compareTo(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    if-eq v0, v1, :cond_3

    sub-int/2addr v0, v1

    return v0

    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4

    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4

    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_8

    const/4 v4, 0x1

    :cond_8
    return v4

    :cond_9
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_a

    const/4 v4, 0x1

    :cond_a
    return v4

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3df

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3df

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3df

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3df

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3df

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3df

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    return-void
.end method
