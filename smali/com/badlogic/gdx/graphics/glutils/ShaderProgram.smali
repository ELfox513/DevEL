.class public Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final BINORMAL_ATTRIBUTE:Ljava/lang/String; = "a_binormal"

.field public static final BONEWEIGHT_ATTRIBUTE:Ljava/lang/String; = "a_boneWeight"

.field public static final COLOR_ATTRIBUTE:Ljava/lang/String; = "a_color"

.field public static final F:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final G:Ljava/nio/IntBuffer;

.field public static final NORMAL_ATTRIBUTE:Ljava/lang/String; = "a_normal"

.field public static final POSITION_ATTRIBUTE:Ljava/lang/String; = "a_position"

.field public static final TANGENT_ATTRIBUTE:Ljava/lang/String; = "a_tangent"

.field public static final TEXCOORD_ATTRIBUTE:Ljava/lang/String; = "a_texCoord"

.field public static pedantic:Z = true

.field public static prependFragmentCode:Ljava/lang/String; = ""

.field public static prependVertexCode:Ljava/lang/String; = ""


# instance fields
.field public final A:Ljava/lang/String;

.field public B:Z

.field public C:I

.field public D:Ljava/nio/IntBuffer;

.field public E:Ljava/nio/IntBuffer;

.field public a:Ljava/lang/String;

.field public b:Z

.field public final d:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:[Ljava/lang/String;

.field public final r:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:[Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:I

.field public final y:Ljava/nio/FloatBuffer;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->F:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->G:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->a:Ljava/lang/String;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->d:Lcom/badlogic/gdx/utils/ObjectIntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->k:Lcom/badlogic/gdx/utils/ObjectIntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->p:Lcom/badlogic/gdx/utils/ObjectIntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->r:Lcom/badlogic/gdx/utils/ObjectIntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->s:Lcom/badlogic/gdx/utils/ObjectIntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->t:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->C:I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->E:Ljava/nio/IntBuffer;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependVertexCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependVertexCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependFragmentCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->prependFragmentCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->z:Ljava/lang/String;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->A:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->y:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->f()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->h()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0, p1, p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->a(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fragment shader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "vertex shader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static clearAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->F:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Managed shaders/app: { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->F:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/Application;

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->F:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumManagedShaderPrograms()I
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->F:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->F:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Array;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->B:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->F:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :cond_0
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->A:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->B:Z

    :cond_0
    return-void
.end method

.method public begin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    return-void
.end method

.method public bind()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x8b31

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->j(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->w:I

    const p1, 0x8b30

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->j(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->x:I

    iget p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->w:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->i(I)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    if-ne p1, v1, :cond_1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b:Z

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b:Z

    return-void
.end method

.method public d()I
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public disableVertexAttribute(I)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public disableVertexAttribute(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->e(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->w:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->x:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteProgram(I)V

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->F:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->r:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v2, -0x2

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->r:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    return v1
.end method

.method public enableVertexAttribute(I)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public enableVertexAttribute(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->e(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public end()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    const v3, 0x8b89

    invoke-interface {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->u:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->E:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->E:Ljava/nio/IntBuffer;

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->r:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->s:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->E:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->t:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->u:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fetchUniformLocation(Ljava/lang/String;Z)I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->d:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No uniform with name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in shader"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An attempted fetch uniform from uncompiled shader \n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->d:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {p2, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    :cond_2
    return v0
.end method

.method public final g(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public getAttributeLocation(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->r:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getAttributeSize(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->t:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getAttributeType(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->s:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getAttributes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->u:[Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentShaderSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    return v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->d:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getUniformSize(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->p:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getUniformType(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->k:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public getUniforms()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->q:[Ljava/lang/String;

    return-object v0
.end method

.method public getVertexShaderSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    const v3, 0x8b86

    invoke-interface {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->q:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->E:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->E:Ljava/nio/IntBuffer;

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->v:I

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->d:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->k:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->E:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->p:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->D:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->q:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->r:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasUniform(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->d:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i(I)I
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->w:I

    invoke-interface {v0, p1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->x:I

    invoke-interface {v0, p1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    const v3, 0x8b82

    invoke-interface {v0, p1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->a:Ljava/lang/String;

    return v1

    :cond_1
    return p1
.end method

.method public isCompiled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b:Z

    return v0
.end method

.method public final j(ILjava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-interface {v0, v2, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    const p2, 0x8b81

    invoke-interface {v0, v2, p2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x8b31

    if-ne p1, v1, :cond_1

    const-string p1, "Vertex shader\n"

    goto :goto_0

    :cond_1
    const-string p1, "Fragment shader:\n"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->a:Ljava/lang/String;

    return v3

    :cond_2
    return v2
.end method

.method public setAttributef(Ljava/lang/String;FFFF)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->e(Ljava/lang/String;)I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4f(IFFFF)V

    return-void
.end method

.method public setUniform1fv(I[FII)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    return-void
.end method

.method public setUniform1fv(Ljava/lang/String;[FII)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    return-void
.end method

.method public setUniform2fv(I[FII)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    div-int/lit8 p4, p4, 0x2

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public setUniform2fv(Ljava/lang/String;[FII)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p4, p4, 0x2

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public setUniform3fv(I[FII)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    div-int/lit8 p4, p4, 0x3

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    return-void
.end method

.method public setUniform3fv(Ljava/lang/String;[FII)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p4, p4, 0x3

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    return-void
.end method

.method public setUniform4fv(I[FII)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    div-int/lit8 p4, p4, 0x4

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public setUniform4fv(Ljava/lang/String;[FII)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p4, p4, 0x4

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V

    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZ[FI)V

    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V

    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V

    return-void
.end method

.method public setUniformMatrix3fv(Ljava/lang/String;Ljava/nio/FloatBuffer;IZ)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p3, p4, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public setUniformMatrix4fv(I[FII)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    div-int/lit8 v2, p4, 0x10

    const/4 v3, 0x0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public setUniformMatrix4fv(Ljava/lang/String;Ljava/nio/FloatBuffer;IZ)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p3, p4, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public setUniformMatrix4fv(Ljava/lang/String;[FII)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix4fv(I[FII)V

    return-void
.end method

.method public setUniformf(IF)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    return-void
.end method

.method public setUniformf(IFF)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    return-void
.end method

.method public setUniformf(IFFF)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    return-void
.end method

.method public setUniformf(IFFFF)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFFF)V

    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFF)V

    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;F)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;FF)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;FFF)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;FFFF)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    return-void
.end method

.method public setUniformi(II)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    return-void
.end method

.method public setUniformi(III)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    return-void
.end method

.method public setUniformi(IIII)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    return-void
.end method

.method public setUniformi(IIIII)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;III)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;IIII)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->g(Ljava/lang/String;)I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    return-void
.end method

.method public setVertexAttribute(IIIZII)V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    return-void
.end method

.method public setVertexAttribute(IIIZILjava/nio/Buffer;)V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public setVertexAttribute(Ljava/lang/String;IIZII)V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->e(Ljava/lang/String;)I

    move-result v1

    const/4 p1, -0x1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    return-void
.end method

.method public setVertexAttribute(Ljava/lang/String;IIZILjava/nio/Buffer;)V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->b()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->e(Ljava/lang/String;)I

    move-result v1

    const/4 p1, -0x1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method
