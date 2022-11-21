.class Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$9;
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


# instance fields
.field public final a:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$9;->a:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 1

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$9;->a:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->view:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p4

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(ILcom/badlogic/gdx/math/Matrix4;)Z

    return-void
.end method
