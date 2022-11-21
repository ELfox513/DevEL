.class public abstract Lz5/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz5/a0$b;,
        Lz5/a0$a;,
        Lz5/a0$e;,
        Lz5/a0$c;,
        Lz5/a0$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lz5/a0;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lz5/a0;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static b()Lz5/a0$b;
    .locals 1

    new-instance v0, Lz5/b$b;

    invoke-direct {v0}, Lz5/b$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Lz5/a0$d;
.end method

.method public abstract h()I
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Lz5/a0$e;
.end method

.method public abstract k()Lz5/a0$b;
.end method

.method public l(Lz5/b0;)Lz5/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz5/b0<",
            "Lz5/a0$e$d;",
            ">;)",
            "Lz5/a0;"
        }
    .end annotation

    invoke-virtual {p0}, Lz5/a0;->j()Lz5/a0$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz5/a0;->k()Lz5/a0$b;

    move-result-object v0

    invoke-virtual {p0}, Lz5/a0;->j()Lz5/a0$e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lz5/a0$e;->o(Lz5/b0;)Lz5/a0$e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz5/a0$b;->i(Lz5/a0$e;)Lz5/a0$b;

    move-result-object p1

    invoke-virtual {p1}, Lz5/a0$b;->a()Lz5/a0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Reports without sessions cannot have events added to them."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lz5/a0$d;)Lz5/a0;
    .locals 2

    invoke-virtual {p0}, Lz5/a0;->k()Lz5/a0$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz5/a0$b;->i(Lz5/a0$e;)Lz5/a0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz5/a0$b;->f(Lz5/a0$d;)Lz5/a0$b;

    move-result-object p1

    invoke-virtual {p1}, Lz5/a0$b;->a()Lz5/a0;

    move-result-object p1

    return-object p1
.end method

.method public n(JZLjava/lang/String;)Lz5/a0;
    .locals 2

    invoke-virtual {p0}, Lz5/a0;->k()Lz5/a0$b;

    move-result-object v0

    invoke-virtual {p0}, Lz5/a0;->j()Lz5/a0$e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lz5/a0;->j()Lz5/a0$e;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lz5/a0$e;->p(JZLjava/lang/String;)Lz5/a0$e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz5/a0$b;->i(Lz5/a0$e;)Lz5/a0$b;

    :cond_0
    invoke-virtual {v0}, Lz5/a0$b;->a()Lz5/a0;

    move-result-object p1

    return-object p1
.end method
