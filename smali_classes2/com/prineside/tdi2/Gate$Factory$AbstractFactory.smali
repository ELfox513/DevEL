.class public abstract Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Gate$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Gate$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Gate;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/Gate$Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/GateType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gate_name_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gate_description_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/prineside/tdi2/Gate$Factory;->create()Lcom/prineside/tdi2/Gate;

    move-result-object v0

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "y"

    invoke-virtual {p1, v3, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    const-string v4, "side"

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/Gate$Side;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    return-object v0
.end method

.method public getDescription(Lcom/prineside/tdi2/Gate;)Ljava/lang/CharSequence;
    .locals 1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v0, p0, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Lcom/prineside/tdi2/Gate;)Ljava/lang/CharSequence;
    .locals 1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v0, p0, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setup()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;->setupAssets()V

    :cond_0
    return-void
.end method

.method public setupAssets()V
    .locals 0

    return-void
.end method
