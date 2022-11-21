.class public Lg1/a$b;
.super Lg1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/a;->d(Ljava/lang/String;Lx0/i;)Lg1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx0/i;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lx0/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg1/a$b;->b:Lx0/i;

    iput-object p2, p0, Lg1/a$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lg1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 4

    iget-object v0, p0, Lg1/a$b;->b:Lx0/i;

    invoke-virtual {v0}, Lx0/i;->r()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ln0/e;->c()V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Lf1/q;

    move-result-object v1

    iget-object v2, p0, Lg1/a$b;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lf1/q;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lg1/a$b;->b:Lx0/i;

    invoke-virtual {p0, v3, v2}, Lg1/a;->a(Lx0/i;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ln0/e;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ln0/e;->g()V

    iget-object v0, p0, Lg1/a$b;->b:Lx0/i;

    invoke-virtual {p0, v0}, Lg1/a;->g(Lx0/i;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ln0/e;->g()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
