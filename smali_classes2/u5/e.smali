.class public final Lu5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu5/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu5/e$b;
    }
.end annotation


# static fields
.field public static final c:Lu5/g;


# instance fields
.field public final a:Lq6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/a<",
            "Lu5/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lu5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu5/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu5/e$b;-><init>(Lu5/e$a;)V

    sput-object v0, Lu5/e;->c:Lu5/g;

    return-void
.end method

.method public constructor <init>(Lq6/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/a<",
            "Lu5/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lu5/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lu5/e;->a:Lq6/a;

    new-instance v0, Lu5/b;

    invoke-direct {v0, p0}, Lu5/b;-><init>(Lu5/e;)V

    invoke-interface {p1, v0}, Lq6/a;->a(Lq6/a$a;)V

    return-void
.end method

.method public static synthetic f(Lu5/e;Lq6/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lu5/e;->j(Lq6/b;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Lq6/b;)V
    .locals 0

    invoke-static {p0, p1}, Lu5/e;->i(Ljava/lang/String;Lq6/b;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/String;JLz5/c0;Lq6/b;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lu5/e;->k(Ljava/lang/String;Ljava/lang/String;JLz5/c0;Lq6/b;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Lq6/b;)V
    .locals 0

    invoke-interface {p1}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu5/a;

    invoke-interface {p1, p0}, Lu5/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic j(Lq6/b;)V
    .locals 2

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Crashlytics native component now available."

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lu5/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu5/a;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;Ljava/lang/String;JLz5/c0;Lq6/b;)V
    .locals 6

    invoke-interface {p5}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lu5/a;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lu5/a;->e(Ljava/lang/String;Ljava/lang/String;JLz5/c0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lu5/e;->a:Lq6/a;

    new-instance v1, Lu5/c;

    invoke-direct {v1, p1}, Lu5/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lq6/a;->a(Lq6/a$a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lu5/g;
    .locals 1

    iget-object v0, p0, Lu5/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu5/a;

    if-nez v0, :cond_0

    sget-object p1, Lu5/e;->c:Lu5/g;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lu5/a;->b(Ljava/lang/String;)Lu5/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lu5/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu5/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lu5/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu5/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu5/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;JLz5/c0;)V
    .locals 8

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deferring native open session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu5/f;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lu5/e;->a:Lq6/a;

    new-instance v7, Lu5/d;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lu5/d;-><init>(Ljava/lang/String;Ljava/lang/String;JLz5/c0;)V

    invoke-interface {v0, v7}, Lq6/a;->a(Lq6/a$a;)V

    return-void
.end method
