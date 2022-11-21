.class Lcom/prineside/tdi2/systems/ScriptSystem$1;
.super Lcom/prineside/tdi2/utils/PMath$ClassComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ScriptSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/utils/PMath$ClassComparator<",
        "Lcom/prineside/tdi2/systems/ScriptSystem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/utils/PMath$ClassComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/systems/ScriptSystem;Lcom/prineside/tdi2/systems/ScriptSystem;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/systems/ScriptSystem;",
            "Lcom/prineside/tdi2/systems/ScriptSystem;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/prineside/tdi2/systems/ScriptSystem;->a(Lcom/prineside/tdi2/systems/ScriptSystem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/prineside/tdi2/systems/ScriptSystem;->a(Lcom/prineside/tdi2/systems/ScriptSystem;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ".scriptEnvironment"

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    iget-object v2, p2, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    add-int/lit8 v5, p5, -0x1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move v7, p7

    invoke-static/range {v1 .. v7}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/systems/ScriptSystem;

    check-cast p2, Lcom/prineside/tdi2/systems/ScriptSystem;

    invoke-virtual/range {p0 .. p7}, Lcom/prineside/tdi2/systems/ScriptSystem$1;->compare(Lcom/prineside/tdi2/systems/ScriptSystem;Lcom/prineside/tdi2/systems/ScriptSystem;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/prineside/tdi2/systems/ScriptSystem;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/prineside/tdi2/systems/ScriptSystem;

    return-object v0
.end method
