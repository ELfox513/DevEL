.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public defaultCullFace:I

.field public defaultDepthFunc:I

.field public fragmentShader:Ljava/lang/String;

.field public ignoreUnimplemented:Z

.field public numBones:I

.field public numDirectionalLights:I

.field public numPointLights:I

.field public numSpotLights:I

.field public vertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numSpotLights:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numSpotLights:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    return-void
.end method
