.class final Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;
.super Lcom/prineside/luaj/lib/IoLib$File;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/jse/JseIoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StdoutFile"
.end annotation


# instance fields
.field public final w:I

.field public final synthetic x:Lcom/prineside/luaj/lib/jse/JseIoLib;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/lib/jse/JseIoLib;I)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;->x:Lcom/prineside/luaj/lib/jse/JseIoLib;

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/IoLib$File;-><init>(Lcom/prineside/luaj/lib/IoLib;)V

    iput p2, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;->w:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/jse/JseIoLib;ILcom/prineside/luaj/lib/jse/JseIoLib$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;-><init>(Lcom/prineside/luaj/lib/jse/JseIoLib;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;->q()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public isclosed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isstdfile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public peek()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q()Ljava/io/PrintStream;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;->x:Lcom/prineside/luaj/lib/jse/JseIoLib;

    invoke-static {v0}, Lcom/prineside/luaj/lib/jse/JseIoLib;->T(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->STDERR:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;->x:Lcom/prineside/luaj/lib/jse/JseIoLib;

    invoke-static {v0}, Lcom/prineside/luaj/lib/jse/JseIoLib;->U(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->STDOUT:Ljava/io/PrintStream;

    :goto_0
    return-object v0
.end method

.method public read()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public remaining()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public seek(Ljava/lang/String;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setvbuf(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/prineside/luaj/LuaString;)V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;->q()Ljava/io/PrintStream;

    move-result-object v0

    iget-object v1, p1, Lcom/prineside/luaj/LuaString;->m_bytes:[B

    iget v2, p1, Lcom/prineside/luaj/LuaString;->m_offset:I

    iget p1, p1, Lcom/prineside/luaj/LuaString;->m_length:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/PrintStream;->write([BII)V

    return-void
.end method
