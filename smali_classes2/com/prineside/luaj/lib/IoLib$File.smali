.class public abstract Lcom/prineside/luaj/lib/IoLib$File;
.super Lcom/prineside/luaj/LuaValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/IoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "File"
.end annotation


# instance fields
.field public final synthetic u:Lcom/prineside/luaj/lib/IoLib;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/lib/IoLib;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/lib/IoLib$File;->u:Lcom/prineside/luaj/lib/IoLib;

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public eof()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->peek()I

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    :goto_0
    return v0
.end method

.method public finalize()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->isclosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public abstract flush()V
.end method

.method public get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib$File;->u:Lcom/prineside/luaj/lib/IoLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/IoLib;->A:Lcom/prineside/luaj/LuaTable;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaTable;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public abstract isclosed()Z
.end method

.method public abstract isstdfile()Z
.end method

.method public abstract peek()I
.end method

.method public abstract read()I
.end method

.method public abstract read([BII)I
.end method

.method public abstract remaining()I
.end method

.method public abstract seek(Ljava/lang/String;I)I
.end method

.method public abstract setvbuf(Ljava/lang/String;I)V
.end method

.method public tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string v0, "userdata"

    return-object v0
.end method

.method public abstract write(Lcom/prineside/luaj/LuaString;)V
.end method
