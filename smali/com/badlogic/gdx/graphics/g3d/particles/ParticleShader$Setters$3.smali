.class Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isGlobal(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 2

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;->D:Lcom/badlogic/gdx/math/Vector3;

    iget-object p4, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object p4, p4, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v0, v0

    iget v1, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v1, v1

    iget p4, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float p4, p4

    invoke-virtual {p3, v0, v1, p4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(ILcom/badlogic/gdx/math/Vector3;)Z

    return-void
.end method
