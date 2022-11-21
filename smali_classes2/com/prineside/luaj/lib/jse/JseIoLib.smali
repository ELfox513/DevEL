.class public Lcom/prineside/luaj/lib/jse/JseIoLib;
.super Lcom/prineside/luaj/lib/IoLib;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;,
        Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;,
        Lcom/prineside/luaj/lib/jse/JseIoLib$FileImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/IoLib;-><init>()V

    return-void
.end method

.method public static synthetic P(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;
    .locals 0

    iget-object p0, p0, Lcom/prineside/luaj/lib/IoLib;->B:Lcom/prineside/luaj/Globals;

    return-object p0
.end method

.method public static synthetic Q(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;
    .locals 0

    iget-object p0, p0, Lcom/prineside/luaj/lib/IoLib;->B:Lcom/prineside/luaj/Globals;

    return-object p0
.end method

.method public static synthetic R(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;
    .locals 0

    iget-object p0, p0, Lcom/prineside/luaj/lib/IoLib;->B:Lcom/prineside/luaj/Globals;

    return-object p0
.end method

.method public static synthetic S()V
    .locals 0

    invoke-static {}, Lcom/prineside/luaj/lib/jse/JseIoLib;->X()V

    return-void
.end method

.method public static synthetic T(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;
    .locals 0

    iget-object p0, p0, Lcom/prineside/luaj/lib/IoLib;->B:Lcom/prineside/luaj/Globals;

    return-object p0
.end method

.method public static synthetic U(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;
    .locals 0

    iget-object p0, p0, Lcom/prineside/luaj/lib/IoLib;->B:Lcom/prineside/luaj/Globals;

    return-object p0
.end method

.method public static synthetic V(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;
    .locals 0

    iget-object p0, p0, Lcom/prineside/luaj/lib/IoLib;->B:Lcom/prineside/luaj/Globals;

    return-object p0
.end method

.method public static synthetic W(Lcom/prineside/luaj/lib/jse/JseIoLib;)Lcom/prineside/luaj/Globals;
    .locals 0

    iget-object p0, p0, Lcom/prineside/luaj/lib/IoLib;->B:Lcom/prineside/luaj/Globals;

    return-object p0
.end method

.method public static X()V
    .locals 2

    new-instance v0, Lcom/prineside/luaj/LuaError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public E(Ljava/lang/String;ZZZZ)Lcom/prineside/luaj/lib/IoLib$File;
    .locals 0

    new-instance p4, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_0

    const-string p5, "r"

    goto :goto_0

    :cond_0
    const-string p5, "rw"

    :goto_0
    invoke-direct {p4, p1, p5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    const-wide/16 p1, 0x0

    invoke-virtual {p4, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_2
    :goto_1
    new-instance p1, Lcom/prineside/luaj/lib/jse/JseIoLib$FileImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p4, p2}, Lcom/prineside/luaj/lib/jse/JseIoLib$FileImpl;-><init>(Lcom/prineside/luaj/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Lcom/prineside/luaj/lib/jse/JseIoLib$1;)V

    return-object p1
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    const-string v0, "w"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseIoLib$FileImpl;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lcom/prineside/luaj/lib/jse/JseIoLib$FileImpl;-><init>(Lcom/prineside/luaj/lib/jse/JseIoLib;Ljava/io/OutputStream;Lcom/prineside/luaj/lib/jse/JseIoLib$1;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/prineside/luaj/lib/jse/JseIoLib$FileImpl;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lcom/prineside/luaj/lib/jse/JseIoLib$FileImpl;-><init>(Lcom/prineside/luaj/lib/jse/JseIoLib;Ljava/io/InputStream;Lcom/prineside/luaj/lib/jse/JseIoLib$1;)V

    :goto_0
    return-object p2
.end method

.method public L()Lcom/prineside/luaj/lib/IoLib$File;
    .locals 4

    const-string v0, ".luaj"

    const-string v1, "bin"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    new-instance v1, Lcom/prineside/luaj/lib/jse/JseIoLib$FileImpl;

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/prineside/luaj/lib/jse/JseIoLib$FileImpl;-><init>(Lcom/prineside/luaj/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Lcom/prineside/luaj/lib/jse/JseIoLib$1;)V

    return-object v1
.end method

.method public M()Lcom/prineside/luaj/lib/IoLib$File;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;-><init>(Lcom/prineside/luaj/lib/jse/JseIoLib;ILcom/prineside/luaj/lib/jse/JseIoLib$1;)V

    return-object v0
.end method

.method public N()Lcom/prineside/luaj/lib/IoLib$File;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/lib/jse/JseIoLib$StdinFile;-><init>(Lcom/prineside/luaj/lib/jse/JseIoLib;Lcom/prineside/luaj/lib/jse/JseIoLib$1;)V

    return-object v0
.end method

.method public O()Lcom/prineside/luaj/lib/IoLib$File;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/prineside/luaj/lib/jse/JseIoLib$StdoutFile;-><init>(Lcom/prineside/luaj/lib/jse/JseIoLib;ILcom/prineside/luaj/lib/jse/JseIoLib$1;)V

    return-object v0
.end method
