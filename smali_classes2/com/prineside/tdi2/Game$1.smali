.class Lcom/prineside/tdi2/Game$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Game$GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/Game;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/Game;


# virtual methods
.method public gameLoaded()V
    .locals 7

    new-instance v0, Lcom/prineside/tdi2/utils/I18nGenerator;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/I18nGenerator;-><init>()V

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/I18nGenerator;->run()V

    iget-object v0, p0, Lcom/prineside/tdi2/Game$1;->a:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/LocaleManager;->getAllLocalesChars()Lcom/badlogic/gdx/utils/CharArray;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "i18n/extra-chars.txt"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/CharArray;->contains(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/CharArray;->add(C)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/CharArray;->sort()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "i18n/all-chars.txt"

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/CharArray;->toArray()[C

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4, v3, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;-><init>()V

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/GameResourcesJsonGenerator;->run()V

    return-void
.end method

.method public gameStartedLoading()V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method
