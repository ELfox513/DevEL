.class Lcom/prineside/luaj/lib/DebugLib$DebugInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugInfo"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:S

.field public i:S

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public funcinfo(Lcom/prineside/luaj/LuaFunction;)V
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkclosure()Lcom/prineside/luaj/LuaClosure;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "=?"

    :goto_0
    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->d:Ljava/lang/String;

    iget v0, p1, Lcom/prineside/luaj/Prototype;->linedefined:I

    iput v0, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->f:I

    iget v1, p1, Lcom/prineside/luaj/Prototype;->lastlinedefined:I

    iput v1, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->g:I

    if-nez v0, :cond_1

    const-string v0, "main"

    goto :goto_1

    :cond_1
    const-string v0, "Lua"

    :goto_1
    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/prineside/luaj/Prototype;->shortsource()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->l:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v0, "=[Java]"

    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->f:I

    iput v0, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->g:I

    const-string v0, "Java"

    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaFunction;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->l:Ljava/lang/String;

    :goto_2
    return-void
.end method
