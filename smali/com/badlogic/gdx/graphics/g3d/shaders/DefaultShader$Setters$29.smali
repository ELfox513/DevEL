.class Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$29;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 2

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {p4, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    invoke-virtual {p4, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object p4

    check-cast p4, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;

    iget-object p4, p4, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-interface {p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;->bind(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(II)Z

    :cond_0
    return-void
.end method
