.class public Lk0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/n<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final a:Ll0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public final b:Lk0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/a$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Ll0/b;Lk0/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/b<",
            "TD;>;",
            "Lk0/a$a<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk0/b$b;->c:Z

    iput-object p1, p0, Lk0/b$b;->a:Ll0/b;

    iput-object p2, p0, Lk0/b$b;->b:Lk0/a$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    sget-boolean v0, Lk0/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onLoadFinished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/b$b;->a:Ll0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/b$b;->a:Ll0/b;

    invoke-virtual {v1, p1}, Ll0/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lk0/b$b;->b:Lk0/a$a;

    iget-object v1, p0, Lk0/b$b;->a:Ll0/b;

    invoke-interface {v0, v1, p1}, Lk0/a$a;->b(Ll0/b;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk0/b$b;->c:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mDeliveredData="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lk0/b$b;->c:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lk0/b$b;->c:Z

    return v0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lk0/b$b;->c:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lk0/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Resetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/b$b;->a:Ll0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lk0/b$b;->b:Lk0/a$a;

    iget-object v1, p0, Lk0/b$b;->a:Ll0/b;

    invoke-interface {v0, v1}, Lk0/a$a;->c(Ll0/b;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk0/b$b;->b:Lk0/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
