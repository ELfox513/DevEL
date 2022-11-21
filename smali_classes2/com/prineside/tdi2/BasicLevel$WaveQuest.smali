.class public Lcom/prineside/tdi2/BasicLevel$WaveQuest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/BasicLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaveQuest"
.end annotation


# instance fields
.field public a:I

.field public basicLevel:Lcom/prineside/tdi2/BasicLevel;

.field public id:Ljava/lang/String;

.field public prizes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public waves:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/BasicLevel;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->a:I

    iput-object p1, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->basicLevel:Lcom/prineside/tdi2/BasicLevel;

    iput-object p2, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    iput p3, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->waves:I

    return-void
.end method

.method public static fromJson(Lcom/prineside/tdi2/BasicLevel;Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/BasicLevel$WaveQuest;
    .locals 3

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "waves"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-direct {v2, p0, v0, v1}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;-><init>(Lcom/prineside/tdi2/BasicLevel;Ljava/lang/String;I)V

    const-string p0, "prizes"

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v2, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {p1}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public createIngameQuest(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->basicLevel:Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {v0, v1, p0, p1}, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;-><init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/BasicLevel$WaveQuest;Lcom/prineside/tdi2/GameSystemProvider;)V

    return-object v0
.end method

.method public isCompleted()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isQuestCompleted(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->a:I

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setCompleted(Z)V
    .locals 2

    iput p1, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->a:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->setQuestCompleted(Ljava/lang/String;Z)V

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->waves:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "waves"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "prizes"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ItemStack;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method
