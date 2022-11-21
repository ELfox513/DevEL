.class public Lk0/b$c;
.super Landroidx/lifecycle/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final e:Landroidx/lifecycle/s$a;


# instance fields
.field public c:Lp/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/h<",
            "Lk0/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk0/b$c$a;

    invoke-direct {v0}, Lk0/b$c$a;-><init>()V

    sput-object v0, Lk0/b$c;->e:Landroidx/lifecycle/s$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r;-><init>()V

    new-instance v0, Lp/h;

    invoke-direct {v0}, Lp/h;-><init>()V

    iput-object v0, p0, Lk0/b$c;->c:Lp/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk0/b$c;->d:Z

    return-void
.end method

.method public static f(Landroidx/lifecycle/t;)Lk0/b$c;
    .locals 2

    new-instance v0, Landroidx/lifecycle/s;

    sget-object v1, Lk0/b$c;->e:Landroidx/lifecycle/s$a;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/s$a;)V

    const-class p0, Lk0/b$c;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/s;->a(Ljava/lang/Class;)Landroidx/lifecycle/r;

    move-result-object p0

    check-cast p0, Lk0/b$c;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    invoke-super {p0}, Landroidx/lifecycle/r;->c()V

    iget-object v0, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v0}, Lp/h;->p()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v2, v1}, Lp/h;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/b$a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lk0/b$a;->m(Z)Ll0/b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v0}, Lp/h;->b()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v0}, Lp/h;->p()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v2}, Lp/h;->p()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v2, v1}, Lp/h;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/b$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v3, v1}, Lp/h;->l(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lk0/b$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p2, p3, p4}, Lk0/b$a;->n(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk0/b$c;->d:Z

    return-void
.end method

.method public g(I)Lk0/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lk0/b$a<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v0, p1}, Lp/h;->h(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk0/b$a;

    return-object p1
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lk0/b$c;->d:Z

    return v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v0}, Lp/h;->p()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v2, v1}, Lp/h;->t(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/b$a;

    invoke-virtual {v2}, Lk0/b$a;->p()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(ILk0/b$a;)V
    .locals 1

    iget-object v0, p0, Lk0/b$c;->c:Lp/h;

    invoke-virtual {v0, p1, p2}, Lp/h;->n(ILjava/lang/Object;)V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk0/b$c;->d:Z

    return-void
.end method
