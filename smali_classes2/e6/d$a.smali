.class public Le6/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/d;->o(Le6/c;Ljava/util/concurrent/Executor;)Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj5/h<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le6/d;


# direct methods
.method public constructor <init>(Le6/d;)V
    .locals 0

    iput-object p1, p0, Le6/d$a;->a:Le6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lj5/i;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Le6/d$a;->b(Ljava/lang/Void;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Void;)Lj5/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Le6/d$a;->a:Le6/d;

    invoke-static {p1}, Le6/d;->d(Le6/d;)Lg6/b;

    move-result-object p1

    iget-object v0, p0, Le6/d$a;->a:Le6/d;

    invoke-static {v0}, Le6/d;->c(Le6/d;)Lf6/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lg6/b;->a(Lf6/f;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Le6/d$a;->a:Le6/d;

    invoke-static {v0}, Le6/d;->e(Le6/d;)Le6/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Le6/f;->b(Lorg/json/JSONObject;)Lf6/e;

    move-result-object v0

    iget-object v1, p0, Le6/d$a;->a:Le6/d;

    invoke-static {v1}, Le6/d;->f(Le6/d;)Le6/a;

    move-result-object v1

    invoke-virtual {v0}, Lf6/e;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Le6/a;->c(JLorg/json/JSONObject;)V

    iget-object v1, p0, Le6/d$a;->a:Le6/d;

    const-string v2, "Loaded settings: "

    invoke-static {v1, p1, v2}, Le6/d;->g(Le6/d;Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Le6/d$a;->a:Le6/d;

    invoke-static {p1}, Le6/d;->c(Le6/d;)Lf6/f;

    move-result-object v1

    iget-object v1, v1, Lf6/f;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Le6/d;->h(Le6/d;Ljava/lang/String;)Z

    iget-object p1, p0, Le6/d$a;->a:Le6/d;

    invoke-static {p1}, Le6/d;->i(Le6/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Le6/d$a;->a:Le6/d;

    invoke-static {p1}, Le6/d;->j(Le6/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj5/j;

    invoke-virtual {v0}, Lf6/e;->c()Lf6/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lj5/j;->e(Ljava/lang/Object;)Z

    new-instance p1, Lj5/j;

    invoke-direct {p1}, Lj5/j;-><init>()V

    invoke-virtual {v0}, Lf6/e;->c()Lf6/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj5/j;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Le6/d$a;->a:Le6/d;

    invoke-static {v0}, Le6/d;->j(Le6/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
