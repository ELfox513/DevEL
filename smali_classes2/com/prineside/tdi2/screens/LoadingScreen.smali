.class public Lcom/prineside/tdi2/screens/LoadingScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# instance fields
.field public a:Lcom/prineside/tdi2/utils/GameSyncLoader;

.field public b:Lcom/badlogic/gdx/graphics/Texture;

.field public c:Lcom/badlogic/gdx/graphics/Texture;

.field public d:Lcom/badlogic/gdx/graphics/Texture;

.field public e:Lcom/badlogic/gdx/graphics/Texture;

.field public f:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field public h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public k:F

.field public l:Lcom/badlogic/gdx/graphics/Color;

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/utils/GameSyncLoader;)V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "cache/enable-fast-loading-B184.txt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->m:Z

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->a:Lcom/prineside/tdi2/utils/GameSyncLoader;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/GameSyncLoader;->enableExtraFrameBeforeTaskStart()V

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/screens/LoadingScreen$1;

    invoke-direct {v0, p0, p1}, Lcom/prineside/tdi2/screens/LoadingScreen$1;-><init>(Lcom/prineside/tdi2/screens/LoadingScreen;Lcom/prineside/tdi2/utils/GameSyncLoader;)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addListener(Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;)V

    new-instance p1, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->e:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    new-instance p1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "loading-brand.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->c:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p1, v1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->d:Lcom/badlogic/gdx/graphics/Texture;

    if-nez p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->l:Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->c:Lcom/badlogic/gdx/graphics/Texture;

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->d:Lcom/badlogic/gdx/graphics/Texture;

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->d:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, v1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->m:Z

    const/high16 p1, 0x3F000000

    :goto_0
    iput p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->k:F

    new-instance p1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "loading-logo.png"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {p1, v3, v0, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->b:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, v1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    new-instance p1, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->f:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LoadingScreen;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/LoadingScreen;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->m:Z

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/LoadingScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/screens/LoadingScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->clear()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setFillParent(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->b:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v2, 0x43800000    # 256.0f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v2, 0x435c0000    # 220.0f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x43c00000    # 384.0f

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->defaultSmallFuturaFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v5, ""

    invoke-direct {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v4, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x42f00000    # 120.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v6, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->c:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iget-object v6, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x43000000    # 128.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Infinitode 2 DevEL Unofficial Patch\nv.R.1.8.7 (b 184) [03]\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    div-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "Mb / "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Config;->getMaxTextureSize()I

    move-result v6

    div-int/lit16 v6, v6, 0x400

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "k / "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v6}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "M"

    goto :goto_0

    :cond_0
    const-string v6, "C"

    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Config;->getModId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v5}, Lcom/prineside/tdi2/ActionResolver;->getShortDeviceInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->defaultSmallFuturaFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3e8f5c29    # 0.28f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v9, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v5, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->e:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->e:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f0f5c29    # 0.56f

    invoke-direct {v2, v3, v3, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->b:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->c:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->d:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->e:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const-string v0, "LoadingScreen"

    const-string v1, "disposed"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public draw(F)V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v1, :cond_0

    const-string v0, "menu_background"

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    iget v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->k:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->k:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->m:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v2

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->a:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/GameSyncLoader;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x2ee0

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->a:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/GameSyncLoader;->iterate()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->a:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/GameSyncLoader;->iterate()Z

    :cond_2
    iput v1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->k:F

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    return-void
.end method

.method public resize(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Screen;->resize(II)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resize "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoadingScreen"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result p1

    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result p2

    const/high16 v0, 0x44870000    # 1080.0f

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->f:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->setUnitsPerPixel(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LoadingScreen;->f:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->update(IIZ)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LoadingScreen;->d()V

    :cond_0
    return-void
.end method
