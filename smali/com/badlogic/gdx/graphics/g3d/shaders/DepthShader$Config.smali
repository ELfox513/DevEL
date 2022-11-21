.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public defaultAlphaTest:F

.field public depthBufferOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->depthBufferOnly:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->defaultAlphaTest:F

    const/16 v0, 0x404

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->depthBufferOnly:Z

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->defaultAlphaTest:F

    return-void
.end method
