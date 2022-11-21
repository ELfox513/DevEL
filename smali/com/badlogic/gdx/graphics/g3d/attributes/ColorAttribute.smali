.class public Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "SourceFile"


# static fields
.field public static final Ambient:J

.field public static final AmbientAlias:Ljava/lang/String; = "ambientColor"

.field public static final AmbientLight:J

.field public static final AmbientLightAlias:Ljava/lang/String; = "ambientLightColor"

.field public static final Diffuse:J

.field public static final DiffuseAlias:Ljava/lang/String; = "diffuseColor"

.field public static final Emissive:J

.field public static final EmissiveAlias:Ljava/lang/String; = "emissiveColor"

.field public static final Fog:J

.field public static final FogAlias:Ljava/lang/String; = "fogColor"

.field public static final Reflection:J

.field public static final ReflectionAlias:Ljava/lang/String; = "reflectionColor"

.field public static final Specular:J

.field public static final SpecularAlias:Ljava/lang/String; = "specularColor"

.field public static d:J


# instance fields
.field public final color:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-string v0, "diffuseColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    const-string v2, "specularColor"

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    const-string v4, "ambientColor"

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    const-string v6, "emissiveColor"

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    const-string v8, "reflectionColor"

    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    const-string v10, "ambientLightColor"

    invoke-static {v10}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    const-string v12, "fogColor"

    invoke-static {v12}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->d(Ljava/lang/String;)J

    move-result-wide v12

    sput-wide v12, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    or-long/2addr v0, v4

    or-long/2addr v0, v2

    or-long/2addr v0, v6

    or-long/2addr v0, v8

    or-long/2addr v0, v10

    or-long/2addr v0, v12

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->d:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->is(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Invalid type specified"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(JFFFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(J)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(J)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;)V
    .locals 2

    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final createAmbient(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createAmbient(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createAmbientLight(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createAmbientLight(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createDiffuse(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createDiffuse(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createEmissive(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createEmissive(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createFog(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createFog(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createReflection(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createReflection(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createSpecular(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    move-object v0, v7

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v7
.end method

.method public static final createSpecular(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final is(J)Z
    .locals 3

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->d:J

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
    .locals 5

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    :cond_0
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3b9

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
