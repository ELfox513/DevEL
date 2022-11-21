.class public Lcom/prineside/tdi2/managers/RenderingManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/RenderingManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/RenderingManager$Serializer;
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/math/Matrix4;

.field public final b:Lcom/badlogic/gdx/math/Matrix4;

.field public final batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field public final modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

.field public final shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/RenderingManager;->a:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/RenderingManager;->modelBatch:Lcom/badlogic/gdx/graphics/g3d/ModelBatch;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {}, Lcom/prineside/tdi2/managers/RenderingManager;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v1

    const/16 v2, 0xfff

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/RenderingManager;->b:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    const-string v2, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  vec4 color = texture2D(u_texture, v_texCoords);  gl_FragColor = v_color * color;\n}"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error compiling shader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    return-void
.end method

.method public preRender(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/RenderingManager;->resetTransformState()V

    return-void
.end method

.method public resetTransformState()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/RenderingManager;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/RenderingManager;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method
