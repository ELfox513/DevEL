.class public Lcom/prineside/tdi2/screens/CrashReportScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# instance fields
.field public final a:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public final b:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public final c:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field public final d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field public final e:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

.field public final f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public final g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public final h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->c:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "resourcepacks/default/futura.fnt"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->a:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v6, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v2, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->b:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v6, v6, v7

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    new-instance v3, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;-><init>()V

    iput-object v3, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->e:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {v4, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iput-object v4, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    const-string v0, "OutOfMemory"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "ENOSPC"

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    const-string p5, "Test"

    invoke-virtual {p3, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    const-string p5, "Not enough of free disk space - make sure your disk drive is not completely full and the game is allowed to create new files"

    goto :goto_2

    :cond_3
    :goto_1
    const-string p5, "Not enough memory (RAM) - try to disable some graphical effects / sell some tiles from your inventory"

    :goto_2
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v1, "Crash detected"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/prineside/tdi2/screens/CrashReportScreen;->c(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz p5, :cond_4

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v1, "Possible reason:"

    invoke-virtual {p0, v1, v0}, Lcom/prineside/tdi2/screens/CrashReportScreen;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p5, v3, v2, v2}, Lcom/prineside/tdi2/screens/CrashReportScreen;->c(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    :cond_4
    sget-object p5, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v0, "Error:"

    invoke-virtual {p0, v0, p5}, Lcom/prineside/tdi2/screens/CrashReportScreen;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v2}, Lcom/prineside/tdi2/screens/CrashReportScreen;->b(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string p1, "Thread name:"

    invoke-virtual {p0, p1, p5}, Lcom/prineside/tdi2/screens/CrashReportScreen;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p2, v3, v2}, Lcom/prineside/tdi2/screens/CrashReportScreen;->b(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string p1, "Stacktrace:"

    invoke-virtual {p0, p1, p5}, Lcom/prineside/tdi2/screens/CrashReportScreen;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance p1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    const-string p2, "\t"

    const-string p3, "    "

    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    :goto_3
    array-length p5, p2

    if-ge p4, p5, :cond_6

    aget-object p5, p2, p4

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 p5, 0x10

    if-ne p4, p5, :cond_5

    const-string p2, "..."

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_4

    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p2, p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x42200000    # 40.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string p2, "Tap the screen or press any key to continue"

    invoke-virtual {p0, p2, p1, v2, v2}, Lcom/prineside/tdi2/screens/CrashReportScreen;->c(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p2

    sget-object p3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p3, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object p3

    const p4, 0x3e99999a    # 0.3f

    invoke-static {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/prineside/tdi2/screens/CrashReportScreen;->c(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/prineside/tdi2/screens/CrashReportScreen;->c(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    :goto_0
    invoke-direct {v0, p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->growX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    if-eqz p3, :cond_1

    const/high16 p2, 0x41a00000    # 20.0f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->c:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->a:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->b:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    return-void
.end method

.method public draw(F)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {p1}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    :try_start_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v0, "cache/crash-report.json"

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CrashReportScreen"

    const-string v0, "failed to delete crash report"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/ScreenManager;->goToLoadingScreen(Lcom/prineside/tdi2/utils/GameSyncLoader;)V

    :cond_1
    return-void
.end method

.method public resize(II)V
    .locals 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/high16 v0, 0x44700000    # 960.0f

    int-to-float v1, p2

    div-float v2, v0, v1

    int-to-float v3, p1

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->e:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->setUnitsPerPixel(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->e:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->update(IIZ)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    mul-float v3, v3, v0

    const/high16 p2, 0x43200000    # 160.0f

    sub-float/2addr v3, p2

    const/high16 p2, 0x445c0000    # 880.0f

    invoke-virtual {p1, v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/CrashReportScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 p2, 0x42a00000    # 80.0f

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :cond_0
    return-void
.end method
