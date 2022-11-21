.class public Lcom/badlogic/gdx/assets/AssetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

.field public final s:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetLoadingTask;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/badlogic/gdx/assets/AssetErrorListener;

.field public u:I

.field public v:I

.field public w:I

.field public final x:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

.field public y:Lcom/badlogic/gdx/utils/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Z)V
    .locals 4

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Logger;

    const-string v2, "AssetManager"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->x:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    if-eqz p2, :cond_0

    const-class p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/MusicLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/audio/Sound;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/SoundLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/SoundLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/SkinLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/utils/I18NBundle;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    new-instance p2, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-direct {p2, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    const-string v1, ".g3dj"

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    new-instance p2, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;

    new-instance v1, Lcom/badlogic/gdx/utils/UBJsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/UBJsonReader;-><init>()V

    invoke-direct {p2, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    const-string v1, ".g3db"

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    new-instance p2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    const-string v1, ".obj"

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    const-class p2, Lcom/badlogic/gdx/graphics/Cubemap;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v2}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->r:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    invoke-direct {p2}, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;-><init>()V

    iput-object p3, p2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 4

    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->r:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/badlogic/gdx/assets/AssetLoadingTask;-><init>(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/assets/AssetDescriptor;Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/utils/async/AsyncExecutor;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->w:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->w:I

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No loader for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Error loading asset."

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->b:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-boolean v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->h:Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->h:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->t:Lcom/badlogic/gdx/assets/AssetErrorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/assets/AssetErrorListener;->error(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public clear()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoading()V

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const/16 v2, 0x33

    const/4 v3, 0x0

    if-lez v1, :cond_5

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear(I)V

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Array;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v3, v6}, Lcom/badlogic/gdx/utils/ObjectIntMap;->getAndIncrement(Ljava/lang/Object;II)I

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear(I)V

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->u:I

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->v:I

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->w:I

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->b:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized contains(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->b:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    if-ne v1, p2, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    if-ne v3, p2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized containsAsset(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->a:Ljava/lang/Object;

    if-eq v2, p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :cond_2
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget v2, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Disposing."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->r:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->dispose()V

    return-void
.end method

.method public declared-synchronized e(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->k:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->f(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->clear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized f(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dependency already loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget v0, p1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    iget-object p1, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading dependency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/assets/AssetManager;->b(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public finishLoading()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Waiting for loading to complete..."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Loading complete."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public finishLoadingAsset(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ")TT;"
        }
    .end annotation

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoadingAsset(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadingAsset(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for asset to be loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->a:Ljava/lang/Object;

    monitor-exit p0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget v2, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v1, p0, v2, v0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->u:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->b(Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/assets/AssetDescriptor<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset not loaded: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAll(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->a:Ljava/lang/Object;

    if-eq v3, p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    iget-object p1, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized getAssetNames()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAssetType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDependencies(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDiagnostics()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", refs: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget v2, v2, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_0

    const-string v3, ", deps: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getFileHandleResolver()Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->x:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    return-object v0
.end method

.method public declared-synchronized getLoadedAssets()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoader(Ljava/lang/Class;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object p1

    return-object p1
.end method

.method public getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    return-object p1

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    iget-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v1, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getLogger()Lcom/badlogic/gdx/utils/Logger;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    return-object v0
.end method

.method public declared-synchronized getProgress()F
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->u:I

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->w:I

    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    :cond_1
    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueuedAssets()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReferenceCount(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget p1, p1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset not loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/RuntimeException;)V
    .locals 0

    throw p2
.end method

.method public final i()Z
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-boolean v3, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->l:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->update()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v3

    iput-boolean v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->l:Z

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->b:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {p0, v4, v3}, Lcom/badlogic/gdx/assets/AssetManager;->h(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/RuntimeException;)V

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v4, v2, :cond_2

    iget v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->u:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->u:I

    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->w:I

    :cond_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    iget-boolean v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->l:Z

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->b:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->k:Ljava/lang/Object;

    invoke-virtual {p0, v3, v1, v4}, Lcom/badlogic/gdx/assets/AssetManager;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->b:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz v3, :cond_4

    iget-object v4, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v3, p0, v4, v1}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_4
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->e:J

    sub-long/2addr v3, v6

    long-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "ms "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->b:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    return v2

    :cond_5
    return v1
.end method

.method public declared-synchronized isFinished()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoaded(Lcom/badlogic/gdx/assets/AssetDescriptor;)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isLoaded(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/utils/ObjectMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->u:I

    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->v:I

    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->w:I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset with name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already in preload queue, but has different type (expected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->b:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already in task list, but has different type (expected: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already loaded, but has different type (expected: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_8
    :goto_4
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->v:I

    new-instance v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Queued: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No loader for type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized setErrorListener(Lcom/badlogic/gdx/assets/AssetErrorListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->t:Lcom/badlogic/gdx/assets/AssetErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader<",
            "TT;TP;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader<",
            "TT;TP;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loader set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "loader cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLogger(Lcom/badlogic/gdx/utils/Logger;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    return-void
.end method

.method public declared-synchronized setReferenceCount(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iput p2, p1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unload(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->b:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unload (from tasks): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    iput-boolean v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->l:Z

    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->unload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, -0x1

    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v5, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->v:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->v:I

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unload (from queue): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object p1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz p1, :cond_3

    iget-object v0, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {p1, p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    if-eqz v0, :cond_a

    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;

    iget v3, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    if-gtz v3, :cond_6

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unload (dispose): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->a:Ljava/lang/Object;

    instance-of v3, v2, Lcom/badlogic/gdx/utils/Disposable;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/badlogic/gdx/utils/Disposable;

    invoke-interface {v2}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->y:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unload (decrement): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget v0, v1, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->b:I

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :cond_a
    :try_start_3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset not loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized update()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->g()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->c(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->q:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public update(I)Z
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method
