.class public final Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static isAndroid:Z

.field public static isIos:Z

.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "java.runtime.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    const-string v1, "os.name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Mac"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Windows"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isWindows:Z

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isLinux:Z

    sget-boolean v1, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isWindows:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    sput-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isIos:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alt()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x39

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static alt(I)Z
    .locals 1

    const/16 v0, 0x39

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static ctrl()Z
    .locals 2

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static ctrl(I)Z
    .locals 3

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x3f

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x81

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static left()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    return v0
.end method

.method public static left(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static middle()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    return v0
.end method

.method public static middle(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static right()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    return v0
.end method

.method public static right(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shift()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static shift(I)Z
    .locals 1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
