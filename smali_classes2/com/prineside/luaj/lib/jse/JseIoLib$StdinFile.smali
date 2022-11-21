.class final Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;
.super Lcom/prineside/luaj/lib/IoLib$File;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/jse/JseIoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StdinFile"
.end annotation


# instance fields
.field public final synthetic w:Lcom/prineside/luaj/lib/jse/JseIoLib;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/lib/jse/JseIoLib;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;->w:Lcom/prineside/luaj/lib/jse/JseIoLib;

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/IoLib$File;-><init>(Lcom/prineside/luaj/lib/IoLib;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/jse/JseIoLib;Lcom/prineside/luaj/lib/jse/JseIoLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;-><init>(Lcom/prineside/luaj/lib/jse/JseIoLib;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

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
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;->w:Lcom/prineside/luaj/lib/jse/JseIoLib;

    invoke-static {v0}, Lcom/prineside/luaj/lib/jse/JseIoLib;->V(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->STDIN:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;->w:Lcom/prineside/luaj/lib/jse/JseIoLib;

    invoke-static {v0}, Lcom/prineside/luaj/lib/jse/JseIoLib;->W(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;->w:Lcom/prineside/luaj/lib/jse/JseIoLib;

    invoke-static {v1}, Lcom/prineside/luaj/lib/jse/JseIoLib;->P(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/luaj/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    return v0
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;->w:Lcom/prineside/luaj/lib/jse/JseIoLib;

    invoke-static {v0}, Lcom/prineside/luaj/lib/jse/JseIoLib;->Q(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;->w:Lcom/prineside/luaj/lib/jse/JseIoLib;

    invoke-static {v0}, Lcom/prineside/luaj/lib/jse/JseIoLib;->R(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->STDIN:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public remaining()I
    .locals 1

    const/4 v0, -0x1

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
    .locals 0

    return-void
.end method
