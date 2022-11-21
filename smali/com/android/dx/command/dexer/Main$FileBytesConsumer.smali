.class Lcom/android/dx/command/dexer/Main$FileBytesConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileBytesConsumer"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/android/dx/command/dexer/Main;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/dx/command/dexer/Main;Lcom/android/dx/command/dexer/Main$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;-><init>(Lcom/android/dx/command/dexer/Main;)V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 3

    instance-of v0, p1, Lcom/android/dx/command/dexer/Main$StopProcessing;

    if-nez v0, :cond_3

    instance-of v0, p1, Ln1/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->d(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "\nEXCEPTION FROM SIMULATION:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->d(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->d(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    check-cast p1, Ln1/w;

    invoke-virtual {p1}, Ll1/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lq1/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->d(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "\nPARSE ERROR:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lq1/i;

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->e(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->d(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ll1/d;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->d(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ll1/d;->c(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->d(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "\nUNEXPECTED TOP-LEVEL EXCEPTION:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->d(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {p1}, Lcom/android/dx/command/dexer/Main;->f(Lcom/android/dx/command/dexer/Main;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :cond_3
    check-cast p1, Lcom/android/dx/command/dexer/Main$StopProcessing;

    throw p1
.end method

.method public onProcessArchiveStart(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->e(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/dx/command/dexer/Main$Arguments;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->d(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing archive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processFileBytes(Ljava/lang/String;J[B)Z
    .locals 1

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$FileBytesConsumer;->a:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/dx/command/dexer/Main;->c(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;J[B)Z

    move-result p1

    return p1
.end method
