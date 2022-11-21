.class Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$7;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$GlobalSetter;
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

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$GlobalSetter;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 0

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget p4, p3, Lcom/badlogic/gdx/graphics/Camera;->near:F

    iget p3, p3, Lcom/badlogic/gdx/graphics/Camera;->far:F

    invoke-virtual {p1, p2, p4, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(IFF)Z

    return-void
.end method
