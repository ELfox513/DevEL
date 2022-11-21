.class public abstract Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL20;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Lcom/badlogic/gdx/math/FloatCounter;

.field public f:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/FloatCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->e:Lcom/badlogic/gdx/math/FloatCounter;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->f:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    return-void
.end method

.method public static resolveErrorNumber(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "GL_INVALID_FRAMEBUFFER_OPERATION"

    return-object p0

    :pswitch_2
    const-string p0, "GL_OUT_OF_MEMORY"

    return-object p0

    :pswitch_3
    const-string p0, "GL_INVALID_OPERATION"

    return-object p0

    :pswitch_4
    const-string p0, "GL_INVALID_VALUE"

    return-object p0

    :pswitch_5
    const-string p0, "GL_INVALID_ENUM"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCalls()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    return v0
.end method

.method public getDrawCalls()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->c:I

    return v0
.end method

.method public getShaderSwitches()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->d:I

    return v0
.end method

.method public getTextureBindings()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->b:I

    return v0
.end method

.method public getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->e:Lcom/badlogic/gdx/math/FloatCounter;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->b:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->c:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->d:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->e:Lcom/badlogic/gdx/math/FloatCounter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    return-void
.end method
