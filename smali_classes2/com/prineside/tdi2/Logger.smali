.class public Lcom/prineside/tdi2/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Logger$LogEntry;,
        Lcom/prineside/tdi2/Logger$EntryType;,
        Lcom/prineside/tdi2/Logger$LoggerListener;
    }
.end annotation


# static fields
.field public static _logWriter:Ljava/io/Writer; = null

.field public static a:I = 0x1

.field public static b:Ljava/io/ByteArrayOutputStream;

.field public static c:Ljava/io/ByteArrayOutputStream;

.field public static d:Lcom/prineside/tdi2/utils/MultiOutputStreamSync;

.field public static final e:[Lcom/prineside/tdi2/Logger$LogEntry;

.field public static f:I

.field public static g:Z

.field public static h:J

.field public static final i:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Logger$LoggerListener;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Logger$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Logger$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Logger$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Z

.field public static final n:Ljava/lang/Runnable;

.field public static final o:Lcom/badlogic/gdx/utils/IntArray;

.field public static stdErrPS:Ljava/io/PrintStream;

.field public static stdOutPS:Ljava/io/PrintStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/prineside/tdi2/Logger$LogEntry;

    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Lcom/prineside/tdi2/Logger$1;

    invoke-direct {v2}, Lcom/prineside/tdi2/Logger$1;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v1, Lcom/prineside/tdi2/Logger;->stdOutPS:Ljava/io/PrintStream;

    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Lcom/prineside/tdi2/Logger$2;

    invoke-direct {v2}, Lcom/prineside/tdi2/Logger$2;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v1, Lcom/prineside/tdi2/Logger;->stdErrPS:Ljava/io/PrintStream;

    const/4 v1, 0x0

    sput-object v1, Lcom/prineside/tdi2/Logger;->d:Lcom/prineside/tdi2/utils/MultiOutputStreamSync;

    const/16 v1, 0x80

    new-array v1, v1, [Lcom/prineside/tdi2/Logger$LogEntry;

    sput-object v1, Lcom/prineside/tdi2/Logger;->e:[Lcom/prineside/tdi2/Logger$LogEntry;

    const/4 v1, 0x0

    sput v1, Lcom/prineside/tdi2/Logger;->f:I

    sput-boolean v1, Lcom/prineside/tdi2/Logger;->g:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/prineside/tdi2/Logger;->h:J

    new-instance v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    sput-object v2, Lcom/prineside/tdi2/Logger;->i:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/prineside/tdi2/Logger;->j:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/prineside/tdi2/Logger;->k:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/prineside/tdi2/Logger;->l:Lcom/badlogic/gdx/utils/Array;

    sput-boolean v1, Lcom/prineside/tdi2/Logger;->m:Z

    new-instance v0, Lcom/prineside/tdi2/Logger$3;

    invoke-direct {v0}, Lcom/prineside/tdi2/Logger$3;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Logger;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Logger;->o:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;ZLjava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/prineside/tdi2/Logger;->h(Ljava/lang/Thread$UncaughtExceptionHandler;ZLjava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static addListener(Lcom/prineside/tdi2/Logger$LoggerListener;)V
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Logger;->i:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized addToLog(Lcom/prineside/tdi2/Logger$EntryType;Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/Logger$LogEntry;
    .locals 6

    const-class v0, Lcom/prineside/tdi2/Logger;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "null"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    const-string p2, "null"

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x800

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    sget v1, Lcom/prineside/tdi2/Logger;->f:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/prineside/tdi2/Logger;->f:I

    sget-object v2, Lcom/prineside/tdi2/Logger;->e:[Lcom/prineside/tdi2/Logger$LogEntry;

    aget-object v4, v2, v1

    if-nez v4, :cond_3

    new-instance v4, Lcom/prineside/tdi2/Logger$LogEntry;

    invoke-direct {v4}, Lcom/prineside/tdi2/Logger$LogEntry;-><init>()V

    aput-object v4, v2, v1

    :cond_3
    aget-object v1, v2, v1

    invoke-static {v1, v3}, Lcom/prineside/tdi2/Logger$LogEntry;->b(Lcom/prineside/tdi2/Logger$LogEntry;Z)Z

    iput-object p0, v1, Lcom/prineside/tdi2/Logger$LogEntry;->entryType:Lcom/prineside/tdi2/Logger$EntryType;

    iput-object p1, v1, Lcom/prineside/tdi2/Logger$LogEntry;->tag:Ljava/lang/String;

    iput-object p2, v1, Lcom/prineside/tdi2/Logger$LogEntry;->message:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/prineside/tdi2/Logger$LogEntry;->throwable:Ljava/lang/Throwable;

    sget v4, Lcom/prineside/tdi2/Logger;->f:I

    const/16 v5, 0x80

    if-ne v4, v5, :cond_4

    sput v3, Lcom/prineside/tdi2/Logger;->f:I

    const/4 v3, 0x1

    sput-boolean v3, Lcom/prineside/tdi2/Logger;->g:Z

    :cond_4
    sget-object v3, Lcom/prineside/tdi2/Logger;->_logWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sput-object v2, Lcom/prineside/tdi2/Logger;->_logWriter:Ljava/io/Writer;

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "Logger"

    const-string v2, "failed to write log"

    invoke-interface {p1, p2, v2, p0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static synthetic b()Lcom/badlogic/gdx/utils/Array;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Logger;->k:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public static synthetic c()Lcom/badlogic/gdx/utils/Array;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Logger;->l:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public static synthetic d()Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Logger;->i:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public static dispose()V
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/prineside/tdi2/Logger;->flushEndlessLogs(Z)V

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Logger;->_logWriter:Ljava/io/Writer;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/prineside/tdi2/Logger;->_logWriter:Ljava/io/Writer;

    :cond_1
    return-void
.end method

.method public static synthetic e(Z)Z
    .locals 0

    sput-boolean p0, Lcom/prineside/tdi2/Logger;->m:Z

    return p0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "<("

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Logger$EntryType;->ERROR:Lcom/prineside/tdi2/Logger$EntryType;

    invoke-static {v0, p0, p1}, Lcom/prineside/tdi2/Logger;->addToLog(Lcom/prineside/tdi2/Logger$EntryType;Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/Logger$LogEntry;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/Logger;->i(Lcom/prineside/tdi2/Logger$LogEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "<("

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Logger$EntryType;->ERROR:Lcom/prineside/tdi2/Logger$EntryType;

    invoke-static {v0, p0, p1}, Lcom/prineside/tdi2/Logger;->addToLog(Lcom/prineside/tdi2/Logger$EntryType;Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/Logger$LogEntry;

    move-result-object v0

    iput-object p2, v0, Lcom/prineside/tdi2/Logger$LogEntry;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/prineside/tdi2/Logger;->i(Lcom/prineside/tdi2/Logger$LogEntry;)V

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "enemy-type-boss-metaphor-creep"

    invoke-virtual {p2, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->ENEMY_REACHED:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-array p2, v0, [Ljava/lang/String;

    invoke-static {p0, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-static {p2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p2

    array-length v1, p2

    invoke-virtual {v2, p2, v0, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileToZip: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "fileToZip: The file %s does not exist"

    invoke-virtual {p1, p0, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_0
    return-void
.end method

.method public static flushEndlessLogs(Z)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    instance-of v1, v1, Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    check-cast v2, Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    iget-object v2, v2, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->instanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "log.txt"

    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v3, Lcom/prineside/tdi2/Logger;->d:Lcom/prineside/tdi2/utils/MultiOutputStreamSync;

    iget-object v3, v3, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->synchronizer:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v4, Lcom/prineside/tdi2/Logger;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    sget-object v4, Lcom/prineside/tdi2/Logger;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    :try_start_4
    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1

    const-wide/32 v3, 0x8000000

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rotating logs #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/prineside/tdi2/Logger;->a:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/prineside/tdi2/Logger;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x400

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "kb"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/prineside/tdi2/Logger;->j()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method

.method public static g(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;Z)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Logger;->o:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skipped handleThreadExceptions for thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - already handled"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "started handling uncaught exceptions on thread "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p1, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    if-eqz v0, :cond_1

    iget-object p1, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/prineside/tdi2/ActionResolver;->handleThreadExceptions(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "handleThreadExceptions - actionResolver is not specified, it won\'t handle exceptions on thread"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    new-instance v0, Lcom/prineside/tdi2/v1;

    invoke-direct {v0, p1, p2}, Lcom/prineside/tdi2/v1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listening for exceptions in thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getLog(IZ)Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Logger$LogEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    sget-object v1, Lcom/prineside/tdi2/Logger;->j:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget v1, Lcom/prineside/tdi2/Logger;->f:I

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    if-nez p1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Logger;->e:[Lcom/prineside/tdi2/Logger$LogEntry;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/prineside/tdi2/Logger$LogEntry;->a(Lcom/prineside/tdi2/Logger$LogEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Logger;->j:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/Logger;->e:[Lcom/prineside/tdi2/Logger$LogEntry;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 p0, p0, -0x1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p0, :cond_7

    sget-boolean v0, Lcom/prineside/tdi2/Logger;->g:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x7f

    :goto_2
    sget v1, Lcom/prineside/tdi2/Logger;->f:I

    if-lt v0, v1, :cond_7

    if-nez p1, :cond_4

    sget-object v1, Lcom/prineside/tdi2/Logger;->e:[Lcom/prineside/tdi2/Logger$LogEntry;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/prineside/tdi2/Logger$LogEntry;->a(Lcom/prineside/tdi2/Logger$LogEntry;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/Logger;->j:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/Logger;->e:[Lcom/prineside/tdi2/Logger$LogEntry;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 p0, p0, -0x1

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    :goto_3
    sget-object p0, Lcom/prineside/tdi2/Logger;->j:Lcom/badlogic/gdx/utils/Array;

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size can\'t be less than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static synthetic h(Ljava/lang/Thread$UncaughtExceptionHandler;ZLjava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p2, p3}, Lcom/prineside/tdi2/Logger;->handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/Logger;->dispose()V

    sget-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p0}, Lcom/badlogic/gdx/Application;->exit()V

    :cond_1
    return-void
.end method

.method public static handleThreadExceptions(Ljava/lang/Thread;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/prineside/tdi2/Logger;->g(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;Z)V

    return-void
.end method

.method public static handleThreadExceptions(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/prineside/tdi2/Logger;->g(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;Z)V

    return-void
.end method

.method public static handleThreadExceptionsForgiving(Ljava/lang/Thread;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/prineside/tdi2/Logger;->g(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;Z)V

    return-void
.end method

.method public static handleThreadExceptionsForgiving(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/prineside/tdi2/Logger;->g(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;Z)V

    return-void
.end method

.method public static handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    const-string v0, "\n"

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    const-string v4, "type"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "thread"

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v5, "stacktrace"

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "stderr"

    sget-object v5, Lcom/prineside/tdi2/Logger;->c:Ljava/io/ByteArrayOutputStream;

    if-nez v5, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "cache/crash-report.json"

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v1, v3, v2, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to write crash report:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling uncaught exception in thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lcom/prineside/tdi2/Logger;->_logWriter:Ljava/io/Writer;

    const-string v3, ": "

    const-string v4, "Exception in thread "

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    sget-object v1, Lcom/prineside/tdi2/Logger;->_logWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v5, v1

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    sget-object v7, Lcom/prineside/tdi2/Logger;->_logWriter:Ljava/io/Writer;

    const-string v8, "  at "

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "exceptions.log"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, ":\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    instance-of v2, v0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    const-string v2, "\nReplay: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v0, v0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->currentReplay:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_4
    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_5
    :goto_3
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UE in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/Logger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method public static i(Lcom/prineside/tdi2/Logger$LogEntry;)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Logger;->i:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Logger;->k:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/prineside/tdi2/Logger;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/prineside/tdi2/Logger;->m:Z

    sget-object v0, Lcom/prineside/tdi2/Logger;->n:Ljava/lang/Runnable;

    invoke-interface {p0, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static init(Lcom/prineside/tdi2/ActionResolver;)V
    .locals 7

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Logger;->b:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Logger;->c:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lcom/prineside/tdi2/utils/MultiOutputStream;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/io/OutputStream;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/prineside/tdi2/Logger;->b:Ljava/io/ByteArrayOutputStream;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-direct {v1, v3}, Lcom/prineside/tdi2/utils/MultiOutputStream;-><init>([Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Lcom/prineside/tdi2/Logger;->stdOutPS:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lcom/prineside/tdi2/utils/MultiOutputStream;

    new-array v2, v2, [Ljava/io/OutputStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aput-object v3, v2, v5

    sget-object v3, Lcom/prineside/tdi2/Logger;->c:Ljava/io/ByteArrayOutputStream;

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/utils/MultiOutputStream;-><init>([Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Lcom/prineside/tdi2/Logger;->stdErrPS:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Hooked to System.out"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to hook to System.out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/prineside/tdi2/Logger;->handleThreadExceptions(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Is headless"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initHeadless()V
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Logger;->b:Ljava/io/ByteArrayOutputStream;

    sput-object v0, Lcom/prineside/tdi2/Logger;->c:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/OutputStream;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/prineside/tdi2/Logger;->b:Ljava/io/ByteArrayOutputStream;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;-><init>([Ljava/io/OutputStream;)V

    sput-object v0, Lcom/prineside/tdi2/Logger;->d:Lcom/prineside/tdi2/utils/MultiOutputStreamSync;

    new-instance v0, Ljava/io/PrintStream;

    sget-object v1, Lcom/prineside/tdi2/Logger;->d:Lcom/prineside/tdi2/utils/MultiOutputStreamSync;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Lcom/prineside/tdi2/Logger;->stdOutPS:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    sget-object v0, Lcom/prineside/tdi2/Logger;->stdOutPS:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    invoke-static {}, Lcom/prineside/tdi2/Logger;->j()V

    new-instance v0, Lcom/prineside/tdi2/Logger$4;

    invoke-direct {v0}, Lcom/prineside/tdi2/Logger$4;-><init>()V

    const/4 v1, -0x1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Hooked to System.out"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to hook to System.out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->handleThreadExceptions(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not headless"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j()V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    instance-of v0, v0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    check-cast v1, Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    iget-object v1, v1, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->instanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "log.txt"

    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".1.zip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x4

    :goto_1
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v6, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v6, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/files/FileHandle;->moveTo(Lcom/badlogic/gdx/files/FileHandle;)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/files/FileHandle;->moveTo(Lcom/badlogic/gdx/files/FileHandle;)V

    :cond_4
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "(empty message)"

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "<("

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Logger$EntryType;->DEBUG:Lcom/prineside/tdi2/Logger$EntryType;

    invoke-static {v0, p0, p1}, Lcom/prineside/tdi2/Logger;->addToLog(Lcom/prineside/tdi2/Logger$EntryType;Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/Logger$LogEntry;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/Logger;->i(Lcom/prineside/tdi2/Logger$LogEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "(empty message)"

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "<("

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Logger$EntryType;->DEBUG:Lcom/prineside/tdi2/Logger$EntryType;

    invoke-static {v0, p0, p1}, Lcom/prineside/tdi2/Logger;->addToLog(Lcom/prineside/tdi2/Logger$EntryType;Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/Logger$LogEntry;

    move-result-object p0

    iput-object p2, p0, Lcom/prineside/tdi2/Logger$LogEntry;->throwable:Ljava/lang/Throwable;

    invoke-static {p0}, Lcom/prineside/tdi2/Logger;->i(Lcom/prineside/tdi2/Logger$LogEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static removeListener(Lcom/prineside/tdi2/Logger$LoggerListener;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Logger;->i:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static report(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/prineside/tdi2/Logger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 14

    const-string v0, "."

    const-string v1, ","

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v2

    sget-wide v4, Lcom/prineside/tdi2/Logger;->h:J

    sub-long/2addr v2, v4

    const-string v4, "Logger"

    const-wide/32 v5, 0x7a120

    cmp-long v7, v2, v5

    if-gez v7, :cond_0

    const-string p0, "Cancelled report - too frequent"

    invoke-static {v4, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v2}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "Cancelled report - app is modified"

    invoke-static {v4, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "Cancelled report - modding mode"

    invoke-static {v4, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "Cancelled report - headless mode"

    invoke-static {v4, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isBugReportsEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    const-string p0, "Cancelled report - disabled"

    invoke-static {v4, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v2

    sput-wide v2, Lcom/prineside/tdi2/Logger;->h:J

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "current"

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "threads"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Thread;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    const-string v10, "name"

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "state"

    invoke-virtual {v9}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "trace"

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v13, v9, v11

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/2addr v12, v6

    const/4 v13, 0x5

    if-ne v12, v13, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_7
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v8, "POST"

    invoke-direct {v2, v8}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/prineside/tdi2/Config;->LOGGER_REPORT_URL:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sget-object v9, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    const-string v10, "stdout"

    const-string v11, "(no stdOut)"

    if-eqz v9, :cond_b

    :try_start_2
    invoke-interface {v9}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v9

    sget-object v12, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-ne v9, v12, :cond_b

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v12, "logcat -d"

    invoke-virtual {v9, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v13, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/prineside/tdi2/Logger;->b:Ljava/io/ByteArrayOutputStream;

    if-nez v13, :cond_9

    move-object v13, v11

    goto :goto_4

    :cond_9
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n\nLogcat:\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v9

    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/prineside/tdi2/Logger;->b:Ljava/io/ByteArrayOutputStream;

    if-nez v13, :cond_a

    move-object v13, v11

    goto :goto_5

    :cond_a
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n\nFailed to get logcat: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    sget-object v9, Lcom/prineside/tdi2/Logger;->b:Ljava/io/ByteArrayOutputStream;

    if-nez v9, :cond_c

    move-object v9, v11

    goto :goto_6

    :cond_c
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    const-string v9, "stderr"

    sget-object v10, Lcom/prineside/tdi2/Logger;->c:Ljava/io/ByteArrayOutputStream;

    if-nez v10, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_8
    invoke-virtual {v8, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "reason"

    invoke-virtual {v8, v9, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "os"

    sget-object v9, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-nez v9, :cond_e

    const-string v9, "unknown"

    goto :goto_9

    :cond_e
    invoke-interface {v9}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    :goto_9
    invoke-virtual {v8, p0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    const-string v9, "playerid"

    if-eqz p0, :cond_f

    :try_start_5
    iget-object p0, p0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerIdCached()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, v9, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_f
    const-string p0, "G-0000-0000-000000"

    invoke-virtual {v8, v9, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    sget-object p0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    if-eqz p0, :cond_14

    iget-object p0, p0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    if-eqz p0, :cond_14

    invoke-interface {p0}, Lcom/prineside/tdi2/ActionResolver;->getDeviceInfo()Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object p0

    new-instance v9, Lcom/badlogic/gdx/utils/Json;

    sget-object v10, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v11, :cond_10

    :try_start_6
    const-string v11, "g.locale"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/managers/LocaleManager;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/I18NBundle;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_10
    :try_start_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v11, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v9, v11, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    const-string p0, "s.properties"

    invoke-virtual {v9, p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :try_start_8
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_c

    :catch_3
    move-exception p0

    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const-string p0, "s.runtime"

    invoke-virtual {v9, p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :try_start_a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v1, "proc_av"

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v1, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mem_free"

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v1, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mem_max"

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v1, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mem_total"

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v9, v1, p0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_d

    :catch_4
    move-exception p0

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const-string p0, "s.graphics"

    invoke-virtual {v9, p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :try_start_c
    const-string p0, "type"

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getType()Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, p0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v11}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getMajorVersion()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v11}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getMinorVersion()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getReleaseVersion()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, p0, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "renderer"

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getRendererString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, p0, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "vendor"

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getVendorString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, p0, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "bb_size"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, p0, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "density"

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDensity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v9, p0, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "max_txt_size"

    invoke-static {}, Lcom/prineside/tdi2/Config;->getMaxTextureSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, p0, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_e

    :catch_5
    move-exception p0

    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const-string p0, "device"

    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_15

    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v0, "stacktrace"

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "exception"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-static {v8}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    new-array p0, v6, [Z

    aput-boolean v7, p0, v7

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v0, Lcom/prineside/tdi2/Logger$5;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/Logger$5;-><init>([Z)V

    invoke-interface {p1, v2, v0}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "Sent report"

    invoke-interface {p1, v4, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_f
    const/16 v0, 0x28

    if-ge p1, v0, :cond_16

    aget-boolean v0, p0, v7

    if-nez v0, :cond_16

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :catch_6
    move-exception p0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    return-void
.end method
