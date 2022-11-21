.class Lcom/prineside/luaj/WeakTable$WeakValue;
.super Lcom/prineside/luaj/LuaValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakValue"
.end annotation


# instance fields
.field public u:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/LuaValue;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakValue;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public raweq(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakValue;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->raweq(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public strongvalue()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakValue;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weak<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/luaj/WeakTable$WeakValue;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .locals 2

    const-string v0, "type"

    const-string v1, "weak value"

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaValue;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 2

    const-string v0, "typename"

    const-string v1, "weak value"

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaValue;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method
