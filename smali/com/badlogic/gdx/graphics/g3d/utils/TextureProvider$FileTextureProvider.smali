.class public Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileTextureProvider"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public c:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public d:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->a:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->d:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->c:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->a:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->c:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->d:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->e:Z

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->e:Z

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->a:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->c:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->d:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-object v0
.end method
