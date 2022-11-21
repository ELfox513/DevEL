.class final Lcom/prineside/luaj/WeakTable$WeakUserdata;
.super Lcom/prineside/luaj/WeakTable$WeakValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeakUserdata"
.end annotation


# instance fields
.field public final w:Ljava/lang/ref/WeakReference;

.field public final x:Lcom/prineside/luaj/LuaValue;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/LuaValue;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/prineside/luaj/WeakTable$WeakValue;-><init>(Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakUserdata;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->getmetatable()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/WeakTable$WeakUserdata;->x:Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/WeakTable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/WeakTable$WeakUserdata;-><init>(Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method


# virtual methods
.method public strongvalue()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakValue;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/prineside/luaj/LuaValue;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/WeakTable$WeakUserdata;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/luaj/WeakTable$WeakUserdata;->x:Lcom/prineside/luaj/LuaValue;

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->userdataOf(Ljava/lang/Object;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaUserdata;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/prineside/luaj/WeakTable$WeakValue;->u:Ljava/lang/ref/WeakReference;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
